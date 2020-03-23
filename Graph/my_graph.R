#import my data
library(tidyverse)
tab<-read.csv("Data/fulldata.csv")
head(tab)
names(tab)
tab$GEO
table(tab$GEO)
table(tab$Size.of.enterprise, tab$Gender)
table(tab$Type.of.corporation, tab$Gender)
table(tab$Industry, tab$Gender)

table(tab$Gender, tab$Type.of.corporation)
tab %>% 
  select(Gender, Industry, VALUE, Unit.of.measure) %>% 
  filter(Unit.of.measure == "Number")
  View()
  #trying to make bar graph 
  filter(tab, Industry=="Total, all industries")
  tab %>% 
    filter(Industry!="Total, all industries") %>% 
  ggplot(.,aes(x=Industry,fill=Gender)) +
    geom_bar() +
    coord_flip()+
  #trying to change colour
  scale_fill_manual(values=c("hotpink", "deepskyblue2"))+
  #trying to add title
labs(title= "Female and Male CEO's in Canada by Indsutry")

#im confused
  table(tab$Gender, tab$Industry, tab$VALUE)
  names(tab)

#fixing graph
  tab %>% 
    select(Gender, VALUE, Industry, Unit.of.measure, REF_DATE) %>% 
    filter(Unit.of.measure == "Number") %>%
<<<<<<< Updated upstream
    filter(tab, Industry=="Total, all industries")
  tab %>% 
    filter(Industry!="Total, all industries") %>% 
    ("REF_DATE"=="2016") %>%
    ggplot(.,aes(x=Industry,y=VALUE,fill=Gender)) +
    geom_bar() 
=======
    filter(Industry!="Total, all industries") %>%
    filter(REF_DATE=="2016") %>%
    ggplot(.,aes(x=Industry,y=VALUE,fill=Gender)) +
    geom_col() +
      coord_flip()+
      scale_fill_manual(values=c("hotpink", "deepskyblue2"))+
      labs(title= "Female and Male CEO's in Canada by Indsutry")


## So clean those lines up by deleting stuff that is commented out, add in your lines setting colors and titles doing the coord_flip()
>>>>>>> Stashed changes
   
  
