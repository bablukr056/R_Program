#Variables in R
x=12
y<- "Hello"
y
TRUE ->B
B
############################
#Operators
#Arithmetic operators
2+3 #add
3-1 #sub
2*3 #multi
6/2 #division
2^3 #power
5%%2 # Remainder
7%/%3 #quotient
#########################
#assignment
x=5
x<-15
x<<-30
25->x
x
#######################
#Relational Operators
# >
2>3 #greater
2<3 #less
2==2 #equal
2!=3 #not equal
2>=3
2<=3
############################
#Logical operators
#Returns x if x is False, 
#y otherwise
2&3
2|3
!1
x=TRUE 
y=FALSE
x&y #returns x if x is false, y otherwise
x&x
y&x

x | y # returns y if x is false
################################
#special operators

x<- 2:8 
y<-5
y %in% x
###############################
#Data Type
# Vector
#vector_name<-c(list of value: range)
vt1<-c(1,2,3,4)
vtr2=c(1,2,3,4,5)
vtr3<-c(1:12)
#index
#vector_name[index]
vtr3[2]
vtr4<-c(1,5,6,3)
sort_vtr4<-sort(vtr4)
vtr_mix<-c("hi",1,3,"hey")
class(vtr_mix)
class(vtr4)
vtr<-c(2,3)
sum(c(vtr))
mean(c(vtr))
prod(c(vtr))
##################################
#Lists
n=c(2,3,5)
n
s=c("aa","bb")
x=list(n,s)
class(x)
list1<-list("JK",12,3,TRUE)
list2<-list("R",14,3,FALSE)
list2
list3<-merge(list1,list2)
list3
class(list3)
list2[2]
#################################
#Vector-1D
#list under one name
#ARRAY
#Array multidimensional data
#can values having similar kinds of data
#array()
vtra<-c(2,3,4,5,6,7)
vtrb<-c(2,3,4,5,6,7,8,9,0,1)
array_1<-array(vtra)
array_2<-array(vtrb)
#using rang
arrayc <- array(1:15,c(4,3))
array_1[4]
multi_array<-array(1:24,c(3,4,2))
multi_array[1,3,1]
dim(multi_array)
a<-array(1:12,c(2,3,2))
dim(a)
dimnames(a)<-list(c("one","Two"),
                  c("a","b","c"),
                  c("A","B"))
################################
#Create a matrix
mat1<-matrix(c(1:9),nrow = 3,ncol =3 )
mat1
mat1<-matrix(c(1:9),nrow = 3)
class(mat1)
mat1<-matrix(c(1:9),nrow=3, byrow = TRUE,
             dimnames=list(c("x","y","z"),
             c("A","B","C")))

mat1[1,2]
#select row and colm
mat1
mat1[c(1,2),c(2,3)]
mat1[1,] #1st row
mat1[,2] #2nd colm
mat1[-1,] #select all the rows except 1st
#modify
mat1[2,2]<-100












































