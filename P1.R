# Bablu Kumar 15/07/2021
#Coursera week 1st 
time()

#######Create function############
myfunction<-function(){
  x<-rnorm(100)
  mean(x)
}

second<-function(x){
  x+norm(length(x))
}
#####################################################
x<-1
print(x)      #explicit printing object. 
x
msg<-"Hello"
msg
####################
x<-5       #assigning 5 to the x with the help of assignment operator 

x           #auto printing occurs. #you will get [1] 5 as output that means 
            # [1] indicated that x is a vecto and 5 is the first element in x
###########################
x<-(1:20:2)    # : operator used to create intger sequences. 
x[3]
0/0
###Vector ###########3
 x<-c(0.5,0.6)    #c()funciton can be used to create vectors of objects. 
x<-c(TRUE,FALSE)
x
i=10
x<-c(2i+10,250)
x
x<-vector("numeric",length = 10)
is.vector(x)
x<-c(1:20)
x
x_repeat<-rep((x),4) #here we are repeating the above x vector value 4times. 
x_repeat  
#Q. repeat each element 2 times.
x<-c(100:120)
x_repeat=rep((x),each=2)
x_repeat
#repeat until we have 100 element in vector
x_re=rep((x),length(100))
x_re
#creating a sequence by using seq()function 
a<-seq(from=1, to=5, by=0.1)
a
#matrixc creation 
b=c(1:12)
m=matrix(c(1:12),nrow = 4, ncol = 3, byrow = TRUE, dimnames = NULL)
d=any(m<20)
m
d
as.character(m)
as.logical(m)
#nonsensical coercion
z<-c("a","v","c","d")
as.character(z)
as.logical(z)
a<-rep(c(20,"a",TRUE,i+10),each=2)
a
#####Matrix
m<-matrix(nrow = 2,ncol = 3)
m
m<-matrix(1:6,nrow = 2,ncol = 3)
dim(m)
d<-1:10   #generate number form 1 to 10
dim(d)<-c(2,5)    #create matrix by giving dimention.
d
dimnames(d)<-list(c(1,2),c("a","b","c","d","e"))
d
#use cbind() and rbind() and create matrix
x=1:10
y=10:23
cbind(x,y)
rbind(x,y)
# factors
x<-factor(c("yes","no","yes","no","yes","no","yes","no"))
x
table(x)     #count how many of yes or no in the table
x<-factor(c("yes","no","hmm","no","yes","no","yes","hmm"))
x
table(x)
#data frames
x<-data.frame(s.no=1:50,value=rep(c(1,0))) 
x              
# name provide each value. 
x=100:102
names(x)
names(x)<-c("a","b","c")
x
###Subsetting
x<-c("a","b","h","k","n","f","a","d","c","b")
x[1]
x[1:4]
x[x>"a"]    #logical operator
u<-x>"a"
u
##Subsetting the list
x<-list(bablu=1:10,kumar=20:10)
x["bablu"]  #single bracket return the list 
x[["bablu"]]#double bracket return sequence. 
x$bablu
x[c(1,2)]   #muliltiple elemnt from the same. 
#########Quiz####
x <- c(1,3, 5)
y <- c(3, 2, 10)
rbind(x,y)
x <- list(2, "a", "b", TRUE)
x[[2]]
class(x)
x <- 1:4
y=2:3
z=x+y
class(z)
x <- c(17, 14, 4, 5, 13, 12, 10)
x[x>4]<-10
data=read.csv("/home/bablu/R/hw1_data.csv")
data[47,1]     # 47th row and 1st column
nrow(data)
ncol(data)
data[1:6,]
good<-complete.cases(data)
data[good,,1]
miss <- is.na(data[, "Ozone"])
sum(miss)                     #total no of missing NA in dataset.
Mean<-mean(data[,"Ozone"],na.rm = TRUE) #mean of column ozone in dataset.
Mean
solar=subset(data, Ozone > 31 & Temp > 90)
solar
#mean  of the each columun in the dataset
m <- numeric(6)
for (i in 1:6) {
  m[i] <- mean(data[, i], na.rm = TRUE)
}
print(m,)
#####################
tapply(data$Temp, data$Month, mean, na.rm = TRUE)   #tappyly funciton used for calculate mean,media, mass, sd,etc.
sub = subset(data, Month == 5 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
