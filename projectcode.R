library(ggplot2)
library(dplyr)
library(tidyr)
library(here)
neuro_data <- read.csv(file.choose())
head(neuro_data)
str(neuro_data)
neuro_long<- pivot_longer(data=neuro_data, cols=starts_with("Gene"),names_to ="Gene", values_to ="Expression")
neuro_plot<-ggplot(neuro_long, aes(x=BrainRegion, y=Expression, fill=Diagnosis))+
  geom_boxplot(alpha=0.8,width=0.7,outlier.shape = NA)+
  geom_jitter(position=position_jitter(width=0.2),alpha=0.4,size=1.5)+
  facet_wrap(~Gene,scales="free_y", ncol=3)+
  scale_fill_manual(values=c("#1b9e77", "#d95f02"))+
  labs(title="Gene Expression in Different Brain Regions",subtitle = "Comparison between Control and Alzheimer's Disease",x="Brain Region", y="Normalized Expression Level (log2)",fill="Diagnosis")+
  theme_bw(base_size = 12)+
  theme(axis.text.x = element_text(angle = 45,hjust=1), strip.background = element_rect(fill="white"),legend.position ="bottom")
print(neuro_plot)
