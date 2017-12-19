#importante si queremos usar tubería %>% hay que cargra library(dplyr)

# miFuncion <- function() {
#   print("hola mundo")
# }

miFuncion <- function(n) {
  if(n == 0) {
    print("es cero")
  } else if (n %% 2 == 0){
    print("es par")
  }  else {
    print("es impar")
  }
  for (i in 1:n) {
    print("hola mundo")
  }
}
