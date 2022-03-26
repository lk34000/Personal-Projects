
rm(list=ls())

#librairies utiles pour le code

library(tidyverse)
library(ggplot2)
library(ggtext)
library(dplyr)
library(tidyr)
library(stringr)
library(forcats)
library(Rcpp)
library(gridtext)
library(cowplot)

# on charge les données et regardons les variables à disposition

attendance = read.csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-02-04/attendance.csv')
colnames(attendance)

## pré-traitement des données

attendance2 = attendance %>% 
  group_by(team_name, year) %>% 
  filter(row_number() == 1) %>% 
  ungroup %>% 
  mutate(
    team = ifelse(team_name == 'Rams', 'St. Louis / LA', ifelse(team_name == 'Chargers', 'San Diego / LA', team)), #on prend compte des deux changements de nom d'équipe du siècle pour une meilleure visualisation
    teams = str_c(team, team_name, sep = ' '),  #on fusionne les deux variables d'équipe en une unique
    weekly_attendance_mean = total/(17*1000))%>% 
  complete(teams, year)  %>%
  subset(select=-c(week,weekly_attendance,team,team_name,home,total,away))

table(attendance2$teams)  #il y a 32 équipes  

# on crée la variable de moyenne d'affluence sur l'année en NFL que l'on rajoutera aux autres équipes (avec le nouveau tableau attendance3)
attendance3 = attendance2  %>%
  mutate_all( ~replace(., is.na(.), 0)) %>%
  group_by(year) %>%
  mutate(yearly_attendance_mean= sum(weekly_attendance_mean)/32 )%>% #on désire juste la moyenne d'affluence par an 
  ungroup %>%
  subset(select=-c(teams,weekly_attendance_mean))


#on corrige l'erreur crée à cause des NA sur houston en 2000 et 2001 et on garde que les données utiles
attendance3 <- attendance3[1:20,]
attendance3$yearly_attendance_mean[1] <- (attendance3$yearly_attendance_mean[1]*32)/31
attendance3$yearly_attendance_mean[2] <- (attendance3$yearly_attendance_mean[2]*32)/31


# on rajoute les lignes crées dans attendance3 dans attendance2
for (i in (1:20)){
  team <- "z Total"
  year <- attendance3$year[i]
  affluence <- attendance3$yearly_attendance_mean[i]
  vect <- c(team,year,affluence)
  attendance2 <- rbind(attendance2,vect)}

# on change le type qui a été modifié à cause de la précédente boucle et créait des erreurs
attendance2$weekly_attendance_mean <- as.double(attendance2$weekly_attendance_mean)
attendance2$year <- as.double(attendance2$year)


## On travaille ensuite avec ggplot pour le graphique à cases continues

ggplot(attendance2, aes(year, fct_rev(teams))) +
  geom_tile(aes(fill = weekly_attendance_mean), col = 'black') +  #on utilise geom_tile pour créer les cases continues que l-on remplit avec des couleurs chaudes dans scale_fill
  scale_x_continuous(name = NULL, expand = expansion(c(0, .04))) +
  scale_color_identity() +
  scale_fill_gradient2('Medium attendance',breaks = 5:9*10, labels = str_c(5:9*10, 'k'),na.value = 'black',low="yellow", mid = "orange",high = "red",midpoint = 60) +
  labs(x = '', y = '',
       title = toupper('Dallas Cowboys lead the league in stadium attendance \n since they changed stadium in 2009'), 
       subtitle = '<strong>2000-2019 NFL Attendance for each team.</strong><br/><br/>
         <span style="font-size: 10pt;">
         Notice that black values are NA</span>',
       caption = 'Source : Pro Football Reference\n Visualisation by Léon Kourtis') +
  theme_cowplot()+  #le theme cowplot permet d-enlever les cases en arrière plan 
  theme(text = element_text(family = 'Karla'),  #on change la police et le positionnement du texte pour une meilleure visibilité
        axis.text = element_text(size = 10), axis.line = element_blank(), axis.ticks = element_blank(),
        legend.position = 'bottom', legend.text = element_text(size = 10), legend.key.width = unit(1.5, 'cm'),
        strip.background = element_blank(), panel.spacing.x = unit(1, 'cm'),
        strip.text = element_text(family = 'Freshman', face = 'bold', margin = margin(b = 10)),
        plot.title = element_text(family = 'Freshman', size = 22,hjust = 0.5),
        plot.subtitle = element_markdown(margin = margin(t = 10, b = 20)),
        plot.margin = unit(c(1.5, 2.5, 2, 0), 'cm'))
