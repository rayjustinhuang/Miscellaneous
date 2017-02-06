requiredPackages <- c("ggplot2", "dplyr", "gapminder")
neededPackages <- requiredPackages[!(requiredPackages %in% installed.packages()[,"Package"])]
if(length(neededPackages)>0) install.packages(neededPackages)
rm(list = c("requiredPackages", "neededPackages"))

library(gapminder)
library(dplyr)
library(ggplot2)

gapminder2007 <- filter(gapminder, year == 2007)

ggplot(data = gapminder2007, mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point(mapping = aes(color = continent, size = pop)) +
  geom_smooth(se = FALSE) +
  labs(size = "Population", color = "Continent") +
  xlab("GDP per Capita (USD)") +
  ylab("Life Expectancy") +
  theme(legend.position = "bottom") +
  ggtitle("World Life Expectancy vs. GDP per Capita in 2007")

SEA <- droplevels(gapminder[gapminder$country %in% c("Philippines", "Singapore", "Indonesia", "Malaysia", "Thailand", "Vietnam"), ])

ggplot(data = SEA, mapping = aes(x = year, y = gdpPercap, color = country)) +
  geom_point(mapping = aes(size = pop)) +
  geom_smooth(mapping = aes(color = country)) +
  labs(size = "Population", color = "Country", x = "Year", y = "GDP per Capita (USD)", title = "GDP per Capita vs. Year for SEA") +
  theme(legend.position = "bottom")

ggplot(data = SEA, mapping = aes(group = year, x = year)) +
  geom_boxplot(mapping = aes(y = lifeExp)) +
  labs(x = "Year", y = "Life Expectancy (Years)", title = "Boxplots of Yearly Life Expectancy in SEA")

ggplot(data = SEA, mapping = aes(x = year, y = pop)) +
  geom_bar(position = "dodge", stat = "identity", mapping = aes(fill = country)) +
  facet_grid(. ~ country) +
  labs(y = "Population", title = "SEA Population Growth per Country", fill = "Country") +
  theme(legend.position = "bottom")

SEAwithPopDelta <- SEA %>% select(country, year, pop) %>%
  mutate(pop_change = pop - lag(pop)) %>%
  filter(year != 1952)

ggplot(data = SEAwithPopDelta, mapping = aes(x = year, y = pop_change, color = country)) +
  geom_point(mapping = aes(size = pop)) +
  geom_line() +
  labs(color = "Country", size = "Population", x = "Year", y = "Change in Population (per 5 years)", title = "SEA Population Change over Time") +
  theme(legend.position = "bottom")

Philippines <- droplevels(filter(gapminder, country == "Philippines"))

ggplot(data = Philippines, mapping = aes(x = pop, y = gdpPercap)) +
  geom_point(mapping = aes(color = lifeExp)) +
  geom_smooth() +
  labs(color = "Life Expectancy", x = "Population", y = "GDP per Capita (USD)", title = "Philippine GDP per Capita vs. Population from 1952 to 2007") +
  theme(legend.position = "bottom")

# Asia <- droplevels(filter(gapminder, continent == "Asia"))

# ggplot(data = Asia, mapping = aes(group = year, x = year)) +
 #  geom_boxplot(mapping = aes(y = gdpPercap))