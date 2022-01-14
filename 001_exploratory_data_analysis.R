##
##
##

# 0. Packages --------

# 1. Data --------
state <- read.csv("https://raw.githubusercontent.com/gedeck/practical-statistics-for-data-scientists/master/data/state.csv")

# 2. Example: Location Estimates of Population and Murder Rates -----
mean(state$Population)
mean(state$Population, trim = 0.1)
median(state$Population)

# - A média é maior que a média truncada, que é maior do que a mediana. 
# - `trim=0.1` remove 10% de dados de cada ponta, 10% na parte superior, 
# 10% na parte inferior.
# - Se quisermos usar a taxa média de assassinato para o país, devemos 
# usar a média ponderada ou 
# a mediana para levar em conta as diferentes populações nos estados.

## 2.1. Weighted Mean (Média ponderada) -----
library("matrixStats")
weighted.mean(state['Murder.Rate'], w = state['Population'])
weighted.mean(state$Murder.Rate, w = state$Population)





