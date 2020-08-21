install.packages("rtweet") 
install.packages("dplyr")
install.packages("ROAuth")
install.packages("NLP")
library(NLP)
library(ROAuth)
library(dplyr)
library(rtweet)

#Barranquilla 
rt1 <- search_tweets(
  "venezolano OR veneco OR venezolana OR venezolana OR venezolanos OR venecas OR veneca OR #Venezolanosencolombia OR #SomospanasColombia OR #VenezolanosenBarranquilla OR #SosVenezuela OR #venezolanosenelexterior OR #venezolanosenelmundo OR #venezolanosenelextranjero OR #noticiasvenezuela OR #venezuelalucha", n = 3000, include_rts = FALSE, geocode = '10.99904,-74.863,30km')
saveRDS(rt1,file="Barranquilla.Rda")
barranquilla<-readRDS(file="Barranquilla.Rda")

#Bogotá
rt2<- search_tweets(
  "venezolano OR veneco OR venezolana OR venezolana OR venezolanos OR venecas OR veneca OR Venezolanosencolombia OR #SomospanasColombia OR #VenezolanosenBogota OR #SosVenezuela OR #venezolanosenelexterior OR #venezolanosenelmundo OR #venezolanosenelextranjero OR #noticiasvenezuela ", n = 3000, include_rts = FALSE, geocode = '4.60747,-74.11443,50km')
saveRDS(rt2,file="Bogota.Rda")

#Medellin 
rt3<- search_tweets(
  "venezolano OR veneco OR venezolana OR venezolana OR venezolanos OR venecas OR veneca OR #Venezolanosencolombia OR #SomospanasColombia OR #VenezolanosenMedellin OR #SosVenezuela OR #venezolanosenelexterior OR #venezolanosenelmundo OR #venezolanosenelextranjero OR #noticiasvenezuela", n = 3000, include_rts = FALSE, geocode = '6.25449,-75.61554,50km')
saveRDS(rt3,file="Medellin.Rda")

#cucuta
rt4<- search_tweets(
  "venezolano OR veneco OR venezolana OR venezolana OR venezolanos OR venecas OR veneca OR #Venezolanosencolombia OR #SomospanasColombia OR #VenezolanosenCucuta OR #SosVenezuela OR #venezolanosenelexterior OR #venezolanosenelmundo OR #venezolanosenelextranjero OR #noticiasvenezuela", n = 3000, include_rts = FALSE, geocode = '7.8939100,-72.5078200,30km')
saveRDS(rt4,file="Cucuta.Rda")

#Maicao
rt5<- search_tweets(
  "venezolano OR veneco OR venezolana OR venezolana OR venezolanos OR venecas OR veneca OR #Venezolanosencolombia OR #SomospanasColombia OR #VenezolanosenMaicao OR #SosVenezuela OR #venezolanosenelexterior OR #venezolanosenelmundo OR #venezolanosenelextranjero OR #noticiasvenezuela", n = 3000, include_rts = FALSE, geocode = '11.39871,-72.29987,30km')
saveRDS(rt5,file="Maicao.Rda")

#Cali
rt6<- search_tweets(
  "venezolano OR veneco OR venezolana OR venezolana OR venezolanos OR venecas OR veneca OR #Venezolanosencolombia OR #SomospanasColombia OR #VenezolanosenCali OR #SosVenezuela OR #venezolanosenelexterior OR #venezolanosenelmundo OR #venezolanosenelextranjero OR #noticiasvenezuela", n = 3000, include_rts = FALSE, geocode = '3.43332,-76.51913,50km')
saveRDS(rt6,file="Cali.Rda")

#Ipiales
rt7<- search_tweets(
  "venezolano OR veneco OR venezolana OR venezolana OR venezolanos OR venecas OR veneca OR #Venezolanosencolombia OR #SomospanasColombia OR #VenezolanosenIpiales OR #SosVenezuela OR #venezolanosenelexterior OR #venezolanosenelmundo OR #venezolanosenelextranjero OR #noticiasvenezuela", n = 3000, include_rts = FALSE, geocode = ' 0.828752,-77.6426,30km')
saveRDS(rt7,file="Ipiales.Rda")

#Riohacha 
rt8<- search_tweets(
  "venezolano OR veneco OR venezolana OR venezolana OR venezolanos OR venecas OR veneca OR #Venezolanosencolombia OR #SomospanasColombia OR #VenezolanosenRiohacha OR #SosVenezuela OR #venezolanosenelexterior OR #venezolanosenelmundo OR #venezolanosenelextranjero OR #noticiasvenezuela", n = 3000, include_rts = FALSE, geocode = '11.5444400,-72.9072200,30km')
saveRDS(rt8,file="Riohacha.Rda")


