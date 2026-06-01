# Estudos de verbos
# install.packages("tidyverse")
# install.packages("gapminder")
library(dplyr)
library(gapminder)

# Verificando
gapminder


# Filter ------------------------------------------------------------------

# Filtrando para o ano de 1957
gapminder |> 
  filter(year == 1957)

# Filtrando ano 2002 e China
gapminder |> 
  filter(year == 2002, country == "China")


# Arrange -----------------------------------------------------------------

# Ordena pela espectativa de vida
gapminder |> 
  arrange(lifeExp)

# Filtrar o ano de 1957, ordenando a população do maior para o menor
gapminder |> 
  filter(year == 1957) |> 
  arrange(desc(pop))

# Mutate ------------------------------------------------------------------

# Adicionar uma coluna de expectaiva de vida em meses
gapminder |> 
  mutate(lifeExp_mouths = 12*lifeExp)

# Encontrar os países com maior expectativa de vida em meses no ano de 2007
gapminder |> 
  filter(year == 2007) |>
  mutate(lifeExpMonths = lifeExp * 12) |> 
  arrange(desc(lifeExpMonths))
