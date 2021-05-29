############################################
#3rd Class
############################################
## Data visualization ##
x<-c(1:10)
y<-c(11,30,16,21,25,26,31,18,33,27)
length(y)
#plot graph
# scatter plot
plot(x,y)
#pie
pie(x,y)
name_data<-letters[1:10]
pie(x,name_data)
#barplot
barplot(x)
#boxplot
boxplot(x)
#hist
hist(y)
#######################################
?par
#par()<-accomodate several graph
#oma<- all side line space 
par(mfrow=c(2,3), oma=c(2,2,2,2))
#plot 1
#pch<- plotting character
plot(x,y, pch=6)
#dev.off()

#plot 2
plot(x,y, pch=6, type="o")

#plot3 #color
plot(x,y, pch=6, type="o",
    col="red",
    xlab="height",
    ylab="weight")

#plot 4 
plot(x,y, pch=6, type="o",
     col="red",
     xlab="height",
     ylab="weight",
     sub="H/W")
#plot 5
plot(x,y, pch=6, type="o",
     col="red",
     xlab="height",
     ylab="weight",
     sub="H/W", cex.axis=1.5,
     cex.lab=1.0)

#plot 6 las-orient
plot(x,y, pch=6, type="o",
     col="green",
     xlab="height",
     ylab="weight",
     sub="H/W", cex.axis=1.5,
     cex.lab=1.0, las=2)
##################################
install.packages("MASS")
library(MASS)
data(package = "MASS")
data(cats)
?cats
dim(cats)
head(cats)
class(cats)
str(cats)
#extract out male/female from cats datasets
males<-subset(cats, cats$Sex=="M")
females<-subset(cats,cats$Sex=="F")

#plot
plot(males$Bwt,males$Hwt, pch=8,
     xlab="Bwt",ylab="Hwt",
     col="green",
     main="Scatter plot",
     las=3)
#Add female
points(females$Bwt,females$Hwt,pch=8,
       xlab="Bwt",ylab="Hwt",
       col="blue",main="Scatter plot",
       las=3)
## linear regression analysis
?lm
malesReg<-lm(Hwt~Bwt, data=males)
abline(malesReg, col="red", lwd=2)

femalesReg<-lm(Hwt~Bwt, data=females)
abline(femalesReg, col="black", lwd=2)
summary(femalesReg)
## legend
legend("bottomright",
       legend=c("Males cats", "Females cats"),
       pch=c(8,8),
       col=c("green","blue"))
##
data("mammals")
dim(mammals)
head(mammals)
summary(mammals$body)


plot(mammals$body, mammals$brain,
     pch=16, col="blue",las=0,
     xlab="body wt", ylab="brain wt",
     las=0)
#identify
identify(mammals$body,mammals$brain,
         labels=rownames(mammals))

#log
plot(log(mammals$body), log(mammals$brain),
     pch=16, col="green",
     xlab="ln body wt", ylab="ln brain wt",
     las=0)
identify(mammals$body,mammals$brain,
         labels=rownames(mammals))
mammalsReg=lm(log(brain)~log(body),
              data=mammals)
abline(mammalsReg, col="red", lwd=2)
##############################
getwd()
setwd("/cloud/project/data")
sepsis<-read.csv(file="Sepsis.csv", header=T)
head(sepsis,2)
colnames(sepsis)
x<-read.delim("clipboard")

sepsis$Shock<-factor(sepsis$Shock,
                     label=c("no","yes"))
sepsis$Alcoholism <-factor(sepsis$Alcoholism, 
                           labels=c("no","yes"))
sepsis$Infarction <-factor(sepsis$Infarction, 
                           labels=c("no","yes"))
head(sepsis)
sepsis<-sepsis[-1]
#logistic regression
Model<-glm(Death~., data=sepsis, 
           family=binomial)
summary(Model)
# regression tree
install.packages("rpart.plot")
library("rpart.plot")
data("kyphosis")
head(kyphosis)
BT<-rpart(Kyphosis~., data=kyphosis)
rpart.plot(BT, type=4, extra=1, col="blue")
#cluster
setwd("/cloud/project/data")
protein<-read.csv(file="protein.csv",
                  header = T)
head(protein,2)
rownames(protein)<-protein$X
protein<-protein[,-1]
?hclust
hc<-hclust(dist(protein), method="single")
plot(hc, hang=0)
hc2<-cutree(hc, k=3)
hc2
#heatmap
data("Animals")
head(Animals)
Animals1<-Animals[order(Animals$body),]
logbody<-log(Animals$body)
logbrain<-log(Animals$brain)
Animals2<-data.frame(logbody,logbrain)
rownames(Animals2)<-rownames(Animals1)
#dataframe change matrix
Animals3<-as.matrix(Animals2)
rc<-rainbow(nrow(Animals3), start=0, end=0.3)
cc<-rainbow(ncol(Animals3), start=0, end=0.3)
#heat map
hv<-heatmap(Animals3, col=cm.colors(5),
            scale="column",
            RowSideColors = rc,
            ColSideColors = cc,
            margins = c(10,10),
            xlab="ln WT",ylab="Animals",
            main="Heatmap")
?attitude
corr<-round(cor(attitude), 2)
head(corr)
heatmap(corr,  margins = c(8,8))











