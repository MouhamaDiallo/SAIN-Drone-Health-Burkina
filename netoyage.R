install.packages("sf", dependencies = TRUE)
library(sf)

data <- st_read("C:/Users/MOUHAMAD/Documents/YERO/Accueil/FR/ETUDES/SAIN/drone/hotosm_bfa_health_facilities_points_shp.shp")

head(data)
plot(st_geometry(data))
table(data$amenity)
data$lon <- st_coordinates(data)[,1]
data$lat <- st_coordinates(data)[,2]
head(data[, c("name", "amenity", "lon", "lat")])

write.csv(data, "C:/Users/MOUHAMAD/Documents/health_data.csv", row.names = FALSE)
