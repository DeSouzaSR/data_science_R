# Uso do ggplot2


# Instalação dos pacotes --------------------------------------------------

# install.packages("ggplo2")
# install.packages("dplyr")
# install.packages("gapminder")

# Leitura dos pacotes -----------------------------------------------------

library(ggplot2)
library(dplyr)
library(gapminder)

# Atribuindo valores a uma variável ---------------------------------------

gapminder_1952 <- gapminder |> 
  filter(year == 1952)

# Plotando com ggplot2 ----------------------------------------------------

# população por renda percapta
ggplot(gapminder_1952, aes(x = pop, y = gdpPercap)) + 
  geom_point()

# População por expectativa de vida
ggplot(gapminder_1952, aes(x = pop, y = lifeExp)) +
  geom_point()

# Gráfico com escalas logarítmo
# renda percapta por expectativa de vida
ggplot(gapminder_1952, aes(x = gdpPercap, y = lifeExp)) +
  geom_point()

# renda percapta por expectativa de vida na escala logarítmica em x
ggplot(gapminder_1952, aes(x = gdpPercap, y = lifeExp)) +
  geom_point() + 
  scale_x_log10()

# Incrementos em aes() ----------------------------------------------------

# Fazer um plot da população pela expectativa de vida, por continente e por renda
ggplot(gapminder_1952, aes(x = pop, y = lifeExp, colour = continent, size = gdpPercap)) +
  geom_point() +
  scale_x_log10()

# Vários gráficos ---------------------------------------------------------

# população por expectativa de vida por continente
ggplot(gapminder_1952, aes(x = pop, y = lifeExp)) +
  geom_point() + 
  scale_x_log10() + 
  facet_wrap(~continent)

# renda percapta por expectativa de vida, dividida por ano
ggplot(gapminder, aes(x = gdpPercap, y = lifeExp, colour = continent, size = pop)) +
  geom_point() + 
  scale_x_log10() + 
  facet_wrap(~year)

