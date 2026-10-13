getwd()

setwd("/Volumes/kissyface/R for github")
dir.create("social-science-report-template",
           showWarnings = FALSE)
setwd("/Volumes/kissyface/R for github/social-science-report-template")
folders <- c(
  "data",
  "scripts",
  "reports",
  "outputs",
  "outputs/figures",
  "outputs/tables"
)

for (folder in folders) {
  dir.create(folder, recursive = TRUE, showWarnings = FALSE)
}

library(readr)

poverty_url <- paste0(
  "https://ourworldindata.org/grapher/",
  "share-of-population-in-extreme-poverty.csv",
  "?v=1&csvType=full&useColumnShortNames=false"
)

poverty_data <- read_csv(poverty_url)

head(poverty_data)

names(poverty_data)
dim(poverty_data)


range(poverty_data$Year, na.rm = TRUE)
head(unique(poverty_data$Entity), 20)
head(poverty_data)
colSums(is.na(poverty_data))
library(dplyr)

poverty_recent <- poverty_data |>
  filter(
    Year >= 1990,
    !is.na(`Share of population in poverty ($3 a day)`)
  )

range(poverty_recent$Year)
dim(poverty_recent)
head(poverty_recent)

library(dplyr)

countries_to_compare <- c(
  "Jamaica",
  "Canada",
  "United States",
  "India",
  "Brazil",
  "Spain",
  "Nigeria",
  "South Africa"
)

poverty_countries <- poverty_recent |>
  filter(Entity %in% countries_to_compare) |>
  arrange(Entity, Year)

unique(poverty_countries$Entity)

poverty_countries |>
  group_by(Entity) |>
  summarise(
    first_year = min(Year),
    last_year = max(Year),
    observations = n(),
    .groups = "drop"
  )


library(ggplot2)
poverty_plot <- ggplot(
  poverty_countries,
  aes(
    x = Year,
    y = `Share of population in poverty ($3 a day)`,
    colour = Entity,
    group = Entity
  )
) +
  geom_line(linewidth = 0.8, na.rm = TRUE) +
  geom_point(size = 1.8) +
  labs(
    title = "Extreme poverty across eight countries",
    subtitle = "Share of the population living on less than $3 per day",
    x = "Year",
    y = "Population in extreme poverty (%)",
    colour = "Country",
    caption = paste(
      "Source: Our World in Data, based on World Bank data.",
      "Observations are not available for every country in every year."
    )
  ) +
  theme_minimal(base_size = 12) +
  theme(
    legend.position = "bottom",
    plot.title = element_text(face = "bold"),
    legend.title = element_text(face = "bold")
  )

poverty_plot

dir.create("outputs/figures", recursive = TRUE, showWarnings = FALSE)

ggsave(
  "outputs/figures/poverty-trends.png",
  plot = poverty_plot,
  width = 10,
  height = 7,
  dpi = 300
)



##education

# Download Our World in Data: Mean years of schooling
education_url <- paste0(
  "https://ourworldindata.org/grapher/",
  "mean-years-of-schooling-long-run.csv",
  "?v=1&csvType=full&useColumnShortNames=false"
)

download.file(
  education_url, 
  destfile = "/Users/yawdgyal/Desktop/R for github/social-science-report-template/data/education_data.csv"
)






