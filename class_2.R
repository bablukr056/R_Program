############################################
#2nd Class
############################################
rm(list=ls())
#############################################
##matrix(data, nrow,ncol, dimnames)
mat1<-matrix(c(1:9), nrow=3,ncol=3)
mat1
mat2<-matrix(c(1:12), nrow = 3, byrow=T)
mat2
#########################################
#Matrix with row and column name & 
#filling by row wise
mat5<-matrix(c(1:9),nrow = 3, byrow = TRUE,
             dimnames = list(c("x","y","z"),
                             c("a","b","c")))
mat5
colnames(mat5)
rownames(mat5)
#change row name and col name
rownames(mat5)<-c("a1","a2","a3")
colnames(mat5)<-c("x1","x2","x3")
mat5
vtr1<-c(1,2,3,4,5,6,7,8,9,10)
mat6<-matrix(c(vtr1),nrow = 5, byrow = TRUE)
mat6
##################################
## Access matrix element ##
mat6[2,2]
mat3<-matrix(c(1:9),nrow=3,byrow = T)
mat3
a<-mat3[c(1,2),c(2,3)]
mat3[2,2]
#modify single element in matrix
mat3[2,2]<-100
mat3[mat3<5]<-0 
mat3
#matrix operation
mat_trans<-matrix(1:15, nrow=5)
#transpose
t(mat_trans)
#addition
p<-matrix(c(1:12), nrow = 4, byrow = T)
q<-matrix(c(12:23), nrow = 4, byrow = T)
p
q
#addition
p+q
p-q
p*q
p/q
##########################
##Factors##
#create a vector
m_status<-c("single","married","divorced","single")
m_factor<-factor(m_status)
class(m_factor)
gender<-factor(c("male","female","female","male","male"))
gender
#ordered factor
mstatus<-factor(m_status,levels=c("single","married","divorced"),
                ordered=T)
levels(mstatus)
min(mstatus)
## generate level ##
a<-gl(4,4, labels = c("hi","hello","hey","aa"))
a
#access factor component
m_factor[1]
## modify factor component
m_factor[1]<-"divorced"
#add new level
levels(m_factor)<-c(levels(m_factor),"widow")
m_factor
m_factor[1]<-"widow"
################################################
#Data frame
data_name<-c("a","b","c","d","e")
data_id<-c(1:5)
rollno<-c(11,22,33,44,55)
#create
data_f<-data.frame(data_name,data_id,rollno)
dim(data_f)
str(data_f)
#extract a specific colum
data_f$data_name
data_extr<-data.frame(data_f$data_name,data_f$data_id)
#add one column
data_f
age<-c(12,23,34,45,56)
data_f1<-data.frame(data_f,age)
#display specific rows
data_f1[2,1:2]
#####################
data_f3<-data.frame(
  id=c(11:15),
  name=c("aa","bb","cc","dd","ee"),
  rollno=c(1,2,3,4,5),
  ad_date=as.Date(c("2021-01-01",
                    "2021-01-02",
                    "2021-01-03",
                    "2021-01-04",
                    "2021-01-05")),
  stringsAsFactors=F
)
data_f3
str(data_f3)
#stingsAsFactors
data_f3$dept<-c("biochem","micro","env","phy","chem")
data_f3
data_f4<-data.frame(
  id=c(16,17),
  name=c("qq","ww"),
  rollno=c(6,7),
  ad_date=as.Date(c("2021-01-06",
                      "2021-01-07")),
  dept=c("nano","eco"),
  stringsAsFactors=F)
#############################
data_f3
data_f4
data_bind<-rbind(data_f3,data_f4)
##deleting component##
data_bind$dept<-NULL
data_bind
#######################
a<-6
if(a>5){
  print("a is greater than 5")
}else if (a==5){
  print("a is equal to 5 ")
}else{
  print("a is less than 5")
}
#################################
# read user input
name<-readline(prompt = "Enter the name: ")
age<-readline(prompt = "Enter the age: ")
if(age<=10){
  print("kids")
}else{
  print("adult")
}
#####################################
#switch statement
vtr<-c(1,2,3,4,5)
option<-readline(prompt = "Enter the option: ")
switch (option,
        "mean"=print(mean(vtr)),
        "median"=print(median(vtr)),
        "min"=print(min(vtr))
)
#################################
# loops repeat
x=2
repeat{
  x=x^2
  print(x)
  if(x>15)
    break
}
#########################
#while
x=2
while(x<100){
  x=x^2
  print(x)
}
########################
#for
###############
for (i in 1:15) {
  if((i%%2)==0){
    next
  }
  print(i)
}




































































































