rm(list=ls())

library(iniestat)

## Téléchargement de toutes les données des 20 équipes (par classement à la treve fifa)

#Paris
PSG <- iniestat::read_f24(dir_path = "C:/Users/leonk/Documents/MHSC STAGE/MHSC/Projet_PPDA/Données/PSG")
PSG <- cbind(PSG,rep("Paris",length(PSG[,1])))
colnames(PSG)[26] <- "team"

#Lens 
RC_Lens <- iniestat::read_f24(dir_path = "C:/Users/leonk/Documents/MHSC STAGE/MHSC/Projet_PPDA/Données/RC Lens")
RC_Lens <- cbind(RC_Lens,rep("Lens",length(RC_Lens[,1])))
colnames(RC_Lens)[26] <- "team"

#Rennes 
Rennes <- iniestat::read_f24(dir_path = "C:/Users/leonk/Documents/MHSC STAGE/MHSC/Projet_PPDA/Données/Rennes")
Rennes <- cbind(Rennes,rep("Rennes",length(Rennes[,1])))
colnames(Rennes)[26] <- "team"

#Marseille
OM <- iniestat::read_f24(dir_path = "C:/Users/leonk/Documents/MHSC STAGE/MHSC/Projet_PPDA/Données/OM")
OM <- cbind(OM,rep("Marseille",length(OM[,1])))
colnames(OM)[26] <- "team"

#Lorient
FCL <- iniestat::read_f24(dir_path = "C:/Users/leonk/Documents/MHSC STAGE/MHSC/Projet_PPDA/Données/FCL")
FCL <- cbind(FCL,rep("Lorient",length(FCL[,1])))
colnames(FCL)[26] <- "team"

#Monaco
ASM <- iniestat::read_f24(dir_path = "C:/Users/leonk/Documents/MHSC STAGE/MHSC/Projet_PPDA/Données/ASM")
ASM <- cbind(ASM,rep("Monaco",length(ASM[,1])))
colnames(ASM)[26] <- "team"

##Lille
LOSC <-  iniestat::read_f24(dir_path = "C:/Users/leonk/Documents/MHSC STAGE/MHSC/Projet_PPDA/Données/LOSC")
LOSC <- cbind(LOSC,rep("Lille",length(LOSC[,1])))
colnames(LOSC)[26] <- "team"

## Lyon
OL <- iniestat::read_f24(dir_path = "C:/Users/leonk/Documents/MHSC STAGE/MHSC/Projet_PPDA/Données/OL")
OL <- cbind(OL,rep("Lyon",length(OL[,1])))
colnames(OL)[26] <- "team"

## Nice
GYM <- iniestat::read_f24(dir_path = "C:/Users/leonk/Documents/MHSC STAGE/MHSC/Projet_PPDA/Données/GYM")
GYM <- cbind(GYM,rep("Nice",length(GYM[,1])))
colnames(GYM)[26] <- "team"

## Clermont
CF <- iniestat::read_f24(dir_path = "C:/Users/leonk/Documents/MHSC STAGE/MHSC/Projet_PPDA/Données/CF")
CF <- cbind(CF,rep("Clermont",length(CF[,1])))
colnames(CF)[26] <- "team"

## Reims
SR <- iniestat::read_f24(dir_path = "C:/Users/leonk/Documents/MHSC STAGE/MHSC/Projet_PPDA/Données/SR")
SR <- cbind(SR,rep("Reims",length(SR[,1])))
colnames(SR)[26] <- "team"

##Toulouse 
TFC <- iniestat::read_f24(dir_path = "C:/Users/leonk/Documents/MHSC STAGE/MHSC/Projet_PPDA/Données/TFC")
TFC <- cbind(TFC,rep("Toulouse",length(TFC[,1])))
colnames(TFC)[26] <- "team"

##Troyes 
ESTAC <- iniestat::read_f24(dir_path = "C:/Users/leonk/Documents/MHSC STAGE/MHSC/Projet_PPDA/Données/ESTAC")
ESTAC <- cbind(ESTAC,rep("Troyes",length(ESTAC[,1])))
colnames(ESTAC)[26] <- "team"

##Montpellier
MHSC <- iniestat::read_f24(dir_path = "C:/Users/leonk/Documents/MHSC STAGE/MHSC/Projet_PPDA/Données/MHSC")
MHSC <- cbind(MHSC,rep("Montpellier",length(MHSC[,1])))
colnames(MHSC)[26] <- "team"

##Nantes
FCN <- iniestat::read_f24(dir_path = "C:/Users/leonk/Documents/MHSC STAGE/MHSC/Projet_PPDA/Données/FCN")
FCN <- cbind(FCN,rep("Nantes",length(FCN[,1])))
colnames(FCN)[26] <- "team"

##Brest
SB29 <- iniestat::read_f24(dir_path = "C:/Users/leonk/Documents/MHSC STAGE/MHSC/Projet_PPDA/Données/SB29")
SB29 <- cbind(SB29,rep("Brest",length(SB29[,1])))
colnames(SB29)[26] <- "team"

##Auxerre
AJA <- iniestat::read_f24(dir_path = "C:/Users/leonk/Documents/MHSC STAGE/MHSC/Projet_PPDA/Données/AJA")
AJA <- cbind(AJA,rep("Auxerre",length(AJA[,1])))
colnames(AJA)[26] <- "team"

##Ajaccio
ACA <- iniestat::read_f24(dir_path = "C:/Users/leonk/Documents/MHSC STAGE/MHSC/Projet_PPDA/Données/ACA")
ACA <- cbind(ACA,rep("Ajaccio",length(ACA[,1])))
colnames(ACA)[26] <- "team"

##Strasbourg
RCS <- iniestat::read_f24(dir_path = "C:/Users/leonk/Documents/MHSC STAGE/MHSC/Projet_PPDA/Données/RCS")
RCS <- cbind(RCS,rep("Strasbourg",length(RCS[,1])))
colnames(RCS)[26] <- "team"

##Angers
SCO <- iniestat::read_f24(dir_path = "C:/Users/leonk/Documents/MHSC STAGE/MHSC/Projet_PPDA/Données/SCO")
SCO <- cbind(SCO,rep("Angers",length(SCO[,1])))
colnames(SCO)[26] <- "team"


# Combing data (and saving it into a csv file)
data <- rbind(ACA,AJA,ASM,CF,ESTAC,FCL,FCN,GYM,LOSC,MHSC,OL,OM,PSG,RC_Lens,Rennes,RCS,SB29,SCO,SR,TFC)
write.csv2(data,"data.csv")

equivalent_team_name <- tribble(~"team_id",~"equipe",
                                "147","Montpellier",
                                "154", "Troyes",
                                "149", "Paris",
                                "143","Lyon",
                                "427","Toulouse",
                                "153","Strasbourg",
                                "1423","Reims",
                                "1395","Nice",
                                "694","Lorient",
                                "1973","Clermont",
                                "2127","Angers",
                                "144","Marseille",
                                "1163","Ajaccio",
                                "146","Monaco",
                                "150","Rennes",
                                "762","Brest",
                                "430","Nantes",
                                "142","Lens",
                                "137","Auxerre",
                                "429","Lille"
                                
)

data <- data %>%
  left_join(equivalent_team_name, by= "team_id")

#pré-traitement des variables

data <- data %>%
  data.frame() %>%
  select(c(id, period_id, min, sec, type_id, event_id, qualifier_id, match_day, outcome,
           keypass, assist,equipe, x, y, away_team, home_team, value,timestamp,player_id,team))%>%
  subset(select=-c(away_team,home_team)) 


## Definition de la fonction PPDA pour toutes les équipes et par match 

equipes <- c("Paris","Lens","Rennes","Marseille","Lorient","Monaco","Lille","Lyon","Nice","Clermont","Reims","Toulouse","Troyes","Montpellier","Nantes","Brest","Auxerre","Ajaccio","Strasbourg","Angers")

PPDA <- c()  ## Vecteur à créer à chaque 

for (e in 1:20){
  ## On définit les tableaux pour les adversaires de l'équipe itérée et pour cette dernière
  dataIT <- data[data$team == equipes[e],] #On prend les matchs en questions dans l'itération
  
  dataequ <- dataIT %>% filter(equipe == equipes[e]) #Events de l'équipe
  dataadv <- dataIT %>%filter(equipe!= equipes[e]) #Events de l'équipe adverse

  ## On définit le x d'arrivée dans la data adversaire
  tofilt <- dataadv %>%
    select(c(id, match_day, 
             x, y,value,type_id, qualifier_id,outcome))%>%  
    filter(type_id == "1")
  x_arrivee <-  tofilt%>%     
    select(c(id, qualifier_id,value,type_id))%>%
    filter(qualifier_id =="140")%>%
    mutate(x_arrivee = as.numeric(value))%>%
    subset(select=-c(qualifier_id,value,type_id)) 
  
  ## Tableau des passes de l'adversaire dans les derniers 60% : départ et arrivée dans ces 60% et passes réussies
  passes <- dataadv%>%
    filter(x<60 )%>%
    filter(type_id ==1,outcome == 1)%>%
    distinct(id,.keep_all = TRUE)%>%
    left_join(x_arrivee, by= "id")%>%
    filter(x_arrivee < 60)
  
  ## Tableau des actions défensives : Fautes, Tacles, Challenges et Interceptions
  defensive <- dataequ %>%
    filter(type_id %in% c(7,8,45,4))%>%
    distinct(id,.keep_all = TRUE)%>%
    filter(x>40)
  
  ## Fautes non concédées (à enlever)
  fouls <- dataequ %>%
    filter(type_id == 4,outcome == 1)%>%
    distinct(id,.keep_all = TRUE)%>%
    filter(x>40)
  
  
  ## PPDA par match puis le résultat sera le PPDA de la moyenne
  PPDA_m <- c()
  for (x in 1:15){
    pfilt <- passes[passes$match_day==x,]
    dfilt <- defensive[defensive$match_day==x,]
    ffilt <- fouls[fouls$match_day==x,]
    value <- length(pfilt[,1])/(length(dfilt[,1])-length(ffilt[,1]))  ## Le PPDA est égal au nombre d'actions diff
    PPDA_m <- rbind(PPDA_m,value) #on concatène avec les PPDA par match de chacune des journées 
  }
  PPDA <- cbind(PPDA,PPDA_m)
  
}
PPDA <- PPDA %>% data.frame()
colnames(PPDA) <- equipes
summary(PPDA)
means <- c(9.34,7.65,7.20,7.37,12.01,11.74,7.36,6.64,10.95,10.07,7.43,7.41,13.16,10.02,9.70,9.72,10.92,9.61,9.70,11.67) #with summary values
rownames(PPDA) <- c("J1","J2","J3","J4","J5","J6","J7","J7","J9","J10","J11","J12","J13","J14","J15")


OPPDA <- c()  ## Vecteur à créer à chaque 

for (e in 1:20){
  ## On définit les tableaux pour les adversaires de l'équipe itérée et pour cette dernière
  dataIT <- data[data$team == equipes[e],] #On prend les matchs en questions dans l'itération
  
  dataadv <- dataIT %>% filter(equipe != equipes[e])
  dataequ <- dataIT %>%filter(equipe== equipes[e])
  
  ## On définit le x d'arrivée dans la data adversaire
  tofilt <- dataequ %>%
    select(c(id, match_day, 
             x, y,value,type_id, qualifier_id,outcome))%>%  
    filter(type_id == "1")
  x_arrivee <-  tofilt%>%     
    select(c(id, qualifier_id,value,type_id))%>%
    filter(qualifier_id =="140")%>%
    mutate(x_arrivee = as.numeric(value))%>%
    subset(select=-c(qualifier_id,value,type_id)) 
  
  ## Tableau des passes de l'adversaire dans les derniers 60% : départ et arrivée dans ces 60% et passes réussies
  passes <- dataequ%>%
    filter(x<60 )%>%
    filter(type_id ==1,outcome == 1)%>%
    distinct(id,.keep_all = TRUE)%>%
    left_join(x_arrivee, by= "id")%>%
    filter(x_arrivee < 60)
  
  ## Tableau des actions défensives : Fautes, Tacles, Challenges et Interceptions
  defensive <- dataadv %>%
    filter(type_id %in% c(7,8,45,4))%>%
    distinct(id,.keep_all = TRUE)%>%
    filter(x>40)
  
  ## Fautes non concédées (à enlever)
  fouls <- dataadv %>%
    filter(type_id == 4,outcome == 1)%>%
    distinct(id,.keep_all = TRUE)%>%
    filter(x>40)
  
  
  ## PPDA par match puis le résultat sera le PPDA de la moyenne
  OPPDA_m <- c()
  for (x in 1:15){
    pfilt <- passes[passes$match_day==x,]
    dfilt <- defensive[defensive$match_day==x,]
    ffilt <- fouls[fouls$match_day==x,]
    value <- length(pfilt[,1])/(length(dfilt[,1])-length(ffilt[,1]))  ## Le PPDA est égal au nombre d'actions diff
    OPPDA_m <- rbind(OPPDA_m,value) #on concatène avec les PPDA par match de chacune des journées 
  }
  OPPDA <- cbind(OPPDA,OPPDA_m)
  
}

OPPDA <- OPPDA %>% data.frame()
colnames(OPPDA) <- equipes
summary(OPPDA)
means_2 <- c(11.90,11.6,13.4,9.5,7.1,7.7,10.9,12.0,11.99,7.95,6.03,10.6,7.7,7.7,9.3,9.2,9.6,7.0,9.0,7.4)
rownames(OPPDA) <- c("J1","J2","J3","J4","J5","J6","J7","J7","J9","J10","J11","J12","J13","J14","J15")




## Graphiques PPDA/OPPDA
annotations <- data.frame(
  xpos = c(-Inf,Inf,Inf,-Inf),
  ypos =  c(Inf,-Inf,Inf,-Inf),
  annotateText = c("Bon pressing defensif, Bonne résistance au pressing","Mauvais pressing defensif, Mauvaise résistance au pressing","Mauvais pressing defensif,Bonne résistance au pressing","Bon pressing defensif,Mauvaise Résistance au Pressing"),
  hjustvar = c(0,1,1,0) ,
  vjustvar = c(1,0,1,0))

library(ggrepel)
d <- data.frame(means,means_2,equipes)
ggplot(data = d, aes(x=means, y=means_2)) +
  geom_vline(xintercept=mean(means), linetype="dashed", alpha = 0.4, colour = "red") +
  geom_hline(yintercept=mean(means_2), linetype="dashed", alpha = 0.4, colour = "red") +
  geom_label(data = annotations, aes(x=xpos,y=ypos,hjust=hjustvar, vjust=vjustvar,label=annotateText, colour = "red", size = 7),size = 7) +
  geom_text_repel(aes(means, means_2, label = equipes)) +
  geom_point() +
  theme_classic() +
  xlab('PPDA')+
  ylab("OPPDA")+
  theme(legend.position="none",
        axis.title.x = element_text(size = 20),
        axis.title.y = element_text(size = 20)
        ) +
  ggtitle(paste0("Intensité du pressing de la Saison 2022/23 avant la trêve de la coupe du monde"))
  
  
## Creating a scale for the pictures?? : 
#10.92 <-> 0.15 9.7 <-> 0   --> scale x : (1:7)
# 9.6 <-> 0   12 <-> 0.25  --> scale y : (1:9.6)


ggdraw() +  draw_plot(plot) +
  draw_image("https://upload.wikimedia.org/wikipedia/commons/9/99/Montpellier_H%C3%A9rault_Sport_Club_%27logo%2C_2000%29.svg", x = (means[1]-9.7)/7, y = (means_2[1]-9.6)/9.6,scale =0.03) +
  draw_image("https://upload.wikimedia.org/wikipedia/commons/9/99/Montpellier_H%C3%A9rault_Sport_Club_%27logo%2C_2000%29.svg", x = (means[2]-9.7)/7, y = (means_2[2]-9.6)/9.6,scale =0.03)+
  draw_image("https://upload.wikimedia.org/wikipedia/commons/9/99/Montpellier_H%C3%A9rault_Sport_Club_%27logo%2C_2000%29.svg", x = (means[3]-9.7)/7, y = (means_2[3]-9.6)/9.6,scale =0.03)+
  draw_image("https://upload.wikimedia.org/wikipedia/commons/9/99/Montpellier_H%C3%A9rault_Sport_Club_%27logo%2C_2000%29.svg", x = (means[4]-9.7)/7, y = (means_2[4]-9.6)/9.6,scale =0.03)+
  draw_image("https://upload.wikimedia.org/wikipedia/commons/9/99/Montpellier_H%C3%A9rault_Sport_Club_%27logo%2C_2000%29.svg", x = (means[5]-9.7)/7, y = (means_2[5]-9.6)/9.6,scale =0.03)+
  draw_image("https://upload.wikimedia.org/wikipedia/commons/9/99/Montpellier_H%C3%A9rault_Sport_Club_%27logo%2C_2000%29.svg", x = (means[6]-9.7)/7, y = (means_2[6]-9.6)/9.6,scale =0.03)+
  draw_image("https://upload.wikimedia.org/wikipedia/commons/9/99/Montpellier_H%C3%A9rault_Sport_Club_%27logo%2C_2000%29.svg", x = (means[7]-9.7)/7, y = (means_2[7]-9.6)/9.6,scale =0.03)+
  draw_image("https://upload.wikimedia.org/wikipedia/commons/9/99/Montpellier_H%C3%A9rault_Sport_Club_%27logo%2C_2000%29.svg", x = (means[7]-9.7)/7, y = (means_2[7]-9.6)/9.6,scale =0.03)+
  draw_image("https://upload.wikimedia.org/wikipedia/commons/9/99/Montpellier_H%C3%A9rault_Sport_Club_%27logo%2C_2000%29.svg", x = (means[9]-9.7)/7, y = (means_2[9]-9.6)/9.6,scale =0.03)+
  draw_image("https://upload.wikimedia.org/wikipedia/commons/9/99/Montpellier_H%C3%A9rault_Sport_Club_%27logo%2C_2000%29.svg", x = (means[10]-9.7)/7, y = (means_2[10]-9.6)/9.6,scale =0.03)+
  draw_image("https://upload.wikimedia.org/wikipedia/commons/9/99/Montpellier_H%C3%A9rault_Sport_Club_%27logo%2C_2000%29.svg", x = (means[11]-9.7)/7, y = (means_2[11]-9.6)/9.6,scale =0.03)+
  draw_image("https://upload.wikimedia.org/wikipedia/commons/9/99/Montpellier_H%C3%A9rault_Sport_Club_%27logo%2C_2000%29.svg", x = (means[12]-9.7)/7, y = (means_2[12]-9.6)/9.6,scale =0.03)+
  draw_image("https://upload.wikimedia.org/wikipedia/commons/9/99/Montpellier_H%C3%A9rault_Sport_Club_%27logo%2C_2000%29.svg", x = (means[13]-9.7)/7, y = (means_2[13]-9.6)/9.6,scale =0.03)+
  draw_image("https://upload.wikimedia.org/wikipedia/commons/9/99/Montpellier_H%C3%A9rault_Sport_Club_%27logo%2C_2000%29.svg", x = (means[14]-9.7)/7, y = (means_2[14]-9.6)/9.6,scale =0.03)+
  draw_image("https://upload.wikimedia.org/wikipedia/commons/9/99/Montpellier_H%C3%A9rault_Sport_Club_%27logo%2C_2000%29.svg", x = (means[15]-9.7)/7, y = (means_2[15]-9.6)/9.6,scale =0.03)+
  draw_image("https://upload.wikimedia.org/wikipedia/commons/9/99/Montpellier_H%C3%A9rault_Sport_Club_%27logo%2C_2000%29.svg", x = (means[16]-9.7)/7, y = (means_2[16]-9.6)/9.6,scale =0.03)+
  draw_image("https://upload.wikimedia.org/wikipedia/commons/9/99/Montpellier_H%C3%A9rault_Sport_Club_%27logo%2C_2000%29.svg", x = (means[17]-9.7)/7, y = (means_2[17]-9.6)/9.6,scale =0.03)+
  draw_image("https://upload.wikimedia.org/wikipedia/commons/9/99/Montpellier_H%C3%A9rault_Sport_Club_%27logo%2C_2000%29.svg", x = (means[17]-9.7)/7, y = (means_2[17]-9.6)/9.6,scale =0.03)+
  draw_image("https://upload.wikimedia.org/wikipedia/commons/9/99/Montpellier_H%C3%A9rault_Sport_Club_%27logo%2C_2000%29.svg", x = (means[19]-9.7)/7, y = (means_2[19]-9.6)/9.6,scale =0.03)+
  draw_image("https://upload.wikimedia.org/wikipedia/commons/9/99/Montpellier_H%C3%A9rault_Sport_Club_%27logo%2C_2000%29.svg", x = (means[20]-9.7)/7, y = (means_2[20]-9.6)/9.6,scale =0.03)

  


##Write

write.csv2(PPDA,"PPDA.csv")
write.csv2(OPPDA,"OPPDA.csv")


