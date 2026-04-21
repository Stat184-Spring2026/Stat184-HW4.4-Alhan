# ── Load packages ────────────────────────────────────────────────
library(tidyverse)

# ── 1. Read the raw CSV ─────────────────────────────────────────
raw <- read_csv("calcium.csv", col_names = FALSE, skip = 1)
# The header row has duplicate names (y0,y1,y2,y3 twice), so we
# skip it and assign our own column names below.

# ── 2. Separate the two treatment groups ────────────────────────
# First 4 columns = Null (control) group, last 4 = Diet/Exercise
null_df <- raw %>%
  select(1:4) %>%
  set_names(c("Initial", "Year 1", "Year 2", "Year 3")) %>%
  drop_na() %>%                        # keeps 15 complete rows
  mutate(Subject = row_number(),
         Group   = "Null")

diet_df <- raw %>%
  select(5:8) %>%
  set_names(c("Initial", "Year 1", "Year 2", "Year 3")) %>%
  drop_na() %>%                        # keeps 16 complete rows
  mutate(Subject = row_number() + max(null_df$Subject),
         Group   = "Diet/Exercise")

# ── 3. Pivot to long (tidy) format ──────────────────────────────
null_long <- null_df %>%
  pivot_longer(cols = c("Initial", "Year 1", "Year 2", "Year 3"),
               names_to  = "Time",
               values_to = "Calcium")

diet_long <- diet_df %>%
  pivot_longer(cols = c("Initial", "Year 1", "Year 2", "Year 3"),
               names_to  = "Time",
               values_to = "Calcium")

# ── 4. Combine into one tidy data frame ─────────────────────────
calcium_tidy <- bind_rows(null_long, diet_long) %>%
  mutate(Time = factor(Time, levels = c("Initial", "Year 1",
                                        "Year 2", "Year 3")))

# Quick sanity check
glimpse(calcium_tidy)

# ── 5. Visualise ────────────────────────────────────────────────
ggplot(calcium_tidy,
       aes(x = Time, y = Calcium, group = Subject, colour = Group)) +
  # individual subject trajectories (thin, semi-transparent)
  geom_line(alpha = 0.35, linewidth = 0.5) +
  geom_point(alpha = 0.35, size = 1.2) +
  # group means (bold)
  stat_summary(aes(group = Group), fun = mean,
               geom = "line", linewidth = 1.3) +
  stat_summary(aes(group = Group), fun = mean,
               geom = "point", size = 3) +
  scale_colour_manual(values = c("Null" = "#E63946",
                                 "Diet/Exercise" = "#457B9D")) +
  labs(title    = "Ulnar Calcium Levels Over Four Years",
       subtitle = "Individual trajectories (faint) with group means (bold)",
       x        = "Measurement Time Point",
       y        = "Calcium (photon absorptiometry units)",
       colour   = "Treatment Group") +
  theme_bw(base_size = 13) +
  theme(legend.position = "top",
        plot.title      = element_text(face = "bold"))
