library(dplyr)
library(nycflights13)

flights

mean(flights[flights$origin == "JFK",]$arr_delay, na.rm = T)

#forma antigua:
flights$demasiadoRetraso <- flights$arr_delay - mean(flights[flights$origin == "JFK",]$arr_delay, na.rm = T) > 0

#operador tuberia (forma nueva):

flights2 <- flights%>%
  filter(origin == "JFK") %>% 
  mutate(demasiadoTarde=arr_delay-mean(arr_delay, na.rm = T) >0)

#ordenar por columna
flights2 %>%
  arrange(arr_delay) %>%
  View
#ordenar a la inversa (-arr_delay)
#ordenadr por más campos (arr_delay, dest, carrier)
  

flights2 %>%
  arrange(-arr_delay, dest, carrier) %>%
  select(starts_with("o")) %>% #selecciona las columnas 
  View
  
#calcula la media de retraso por aeropuerto
flights2 %>%
  group_by(dest) %>%
  summarise(retraso = mean(arr_delay, na.rm = T)) %>%
  View 

# ordenarlo pero por orden inverso 
flights2 %>%
  group_by(dest) %>%
  summarise(retraso = mean(arr_delay, na.rm = T)) %>%
  arrange(desc(dest)) %>%
  View


#top n
flights2 %>%
  group_by(dest) %>%
  summarise(retraso = mean(arr_delay, na.rm = T)) %>%
  top_n(5,retraso)


