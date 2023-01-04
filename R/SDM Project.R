
mydata<-read.csv("E:/bio4(1)/SDM/project medhat/Data sets/GSE175601_BH190142_Normalized_Data-medhat.csv", header=TRUE)
control_experimental<-mydata[,c(2:7)]
print(control_experimental)


############################################################
###t-Test

labels<- c(rep("control", 3),rep("experimental", 3))

my.ttest <- function(v, labels) {
  
  levels <- unique(labels)
  control <- v[labels == levels[1]]
  experimental <- v[labels == levels[2]]
  pval <- t.test(control, experimental, var.equal = T,paired = F)$p.value
  pval
  
}
allpvalues <- apply(control_experimental, 1, my.ttest, labels)

Data_With_PValue<-data.frame(allpvalues,control_experimental)
index05 <- which(allpvalues < 0.05)

###############################################################
###Visualization
if (!requireNamespace("BiocManager", quietly = TRUE)) 
  install.packages("BiocManager")
BiocManager::install(version = "3.12")
######################################
BiocManager::install('ALL')
library('ALL')
BiocManager::install("pheatmap")
library(pheatmap)
#######################################
dataclean <- as.matrix(Data_With_PValue[index05,-1])
rownames(dataclean) <- mydata[index05,8]

dataclean<-dataclean[1:50,]

pheatmap(dataclean,scale="row", main = "Heatmap of the expression profile of the DEGs between NSCLC without Bone Metastasis",xlab = "Samples",ylab = "Genes")

#don't forget titles
heatmap(dataclean,scale="row",main = "Heatmap of the expression profile of the DEGs between NSCLC without Bone Metastasis",xlab = "Samples",ylab = "Genes")
help("boxplot")
boxplot(dataclean,xlab = "Samples", ylab = "Gene_Expression_levels",main= "Summary Of Samples gene expression levels")

################################################################

df<-data.frame(dataclean)
main<-"Summary Of Samples gene expression levels"
barplot(dataclean,xlab="Samples",ylab="Gene_Expression_levels",col="blue", main="Summary Of Samples gene expression levels", border="blue")
hist(df$A1_NS,main = main,breaks = 50,freq = TRUE)
hist(df$A2_NS,main = main,breaks = 50,freq = TRUE)
hist(df$A3_NS,main = main,breaks = 50,freq = TRUE)
hist(df$B1_NS,main = main,breaks = 50,freq = TRUE)
hist(df$B2_NS,main = main,breaks = 50,freq = TRUE)
hist(df$B3_NS,main = main,breaks = 50,freq = TRUE)

plot(df$A1_NS,main = "B1")
plot(df$A2_NS)
plot(df$A3_NS)

plot(df$B1_NS)
plot(df$B2_NS)
plot(df$B3_NS)

library(ggplot2)
install.packages("ggcorrplot")
library(ggcorrplot)
ggcorrplot(df, hc.order =  TRUE, type = "lower",lab = TRUE)

install.packages("superheat")
library(superheat)
superheat(df, 
          scale = TRUE)

install.packages("ggradar")
install.packages("devtools")
devtools::install_github("ricardo-bion/ggradar")
library(GGally)
install.packages("GGally")
library(ggradar)


library(dplyr)
install.packages("ggpairs")
library(ggpairs)
ggpairs(df)
library(ggplot2)

# stacked bar chart
ggplot(df, 
       aes(x = class, 
           fill = c("red","blue","green","yellow"))) + 
  geom_bar(position = "stack")
ggplot(df, aes(x = df$B1_NS, y = df$B2_NS,... = df$B3_NS)) +
  geom_point()+
  geom_smooth(se = F)
























