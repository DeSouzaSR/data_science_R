library(dplyr)
library(gapminder)

# O que é?
?summarise

# Tomar a mediana da espectativa de vida
gapminder |> 
  summarise(median_life_exp = median(lifeExp))

# Encontrando a mediana da expectativa de vida em em um ano específico
gapminder |> 
  filter(year == 1957) |> 
  summarise(median_life_exp = median(lifeExp))

# Encontrando a mediana da expectativa de vida e o máximo do pib
# em em um ano específico
gapminder |>
  filter(year %in% c(1957,2002)) |> 
  group_by(year) |> 
  summarise(median_life_exp = median(lifeExp), maxGdpPerCap = max(gdpPercap))

# Encontrando a mediana da expectativa de vida e o máximo do pib
# para dois anos
gapminder |>
  filter(year == 1957 | year == 2002) |> 
  group_by(year) |> 
  summarise(median_life_exp = median(lifeExp), maxGdpPerCap = max(gdpPercap))


# Encontrando a mediana da expectativa de vida e o máximo do pib
# para todos anos
gapminder |>
  group_by(year) |> 
  summarise(median_life_exp = median(lifeExp), maxGdpPerCap = max(gdpPercap))

# Encontrando a mediana da expectativa de vida e o máximo do pib
# agrupado por continente no ano de 1957
gapminder |>
  filter(year == 1957) |> 
  group_by(continent) |> 
  summarise(median_life_exp = median(lifeExp), maxGdpPerCap = max(gdpPercap))

# Encontrando a mediana da expectativa de vida e o máximo do pib
# agrupado por continente, em todos os anos
gapminder |>
  group_by(continent, year) |> 
  summarise(median_life_exp = median(lifeExp), maxGdpPerCap = max(gdpPercap))







