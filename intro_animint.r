#Introduction à l'utilisation d'animint2

#to install it from cran
if(!requireNamespace("animint2")) install.packages("animint2")

#decomment the lines under to install a more recent version from github
# if(!requireNamespace("animint2")){
#   if(!requireNamespace("remotes"))install.packages("remotes")
#   remotes::install_github("tdhock/animint2")
# }

#exporting and loading all animint2's functions
library(animint2)

data(WorldBank, package = "animint2")
# WorldBank$Region <- sub(" (all income levels)", "", WorldBank$region, fixed=TRUE)
# tail(WorldBank)
# 
# dim(WorldBank)

#affichage des noms des varibles du datatset
colnames(WorldBank)

#on recupere les donnees de 2010
WorldBank2010 <- subset(WorldBank, year==2010)
head(WorldBank2010)

scatter <- ggplot()+
  geom_point(
    mapping=aes(x=GDP.per.capita.Current.USD, y=life.expectancy, color=region),
    data=WorldBank2010)

#representation avec animint en version web
animint(scatter)