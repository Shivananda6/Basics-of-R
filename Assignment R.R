# 1.Try to write a code for printing sequence of numbers from 1 to 50 with the differences of 3, 5, 10 
print("sequence numbers from 1 to 50: with the difference of 3,5,10")
print(seq(1,50))

s=seq(1,50,3)
s

s1=seq(1,50,5)
s1

s2=seq(1,50,10)
s2

# 2. What are the different data objects in R? and write syntax and example for each and every object
#Data types :  1. Numeric
#              2. Integer
#              3. Charector
#              4. Logical
#              5. complex
a.vector
x=c(1,2,3)
x

b.matrix
X=matrix(c(1,2,3,4,5),nrow=5)
x

c.array
x=array(c(1:6),dim=c(2,4,3))
x

d.List
List=list(id=c(1,2,3,4),name=c("Shivu","Lokesh"),marks=c(98,97))
List

e.Dataframe
dataframe=data.frame(id =c(1,2,3),name=c("Shivu","Lokesh","Chethan"), marks=c(98,97,99))
dataframe

f.Factor
x=c("5","4","5","6","6","4","4")
class(x)
factor=factor(x)
factor(x)

#3.Create Data frame with 3 columns and 5 rows and write a code to fetch and delete row and a column using index and add new column and row to the existed data frame
x=data.frame(id =c(1,2,3,4,5),name=c("Shivu","Lokesh","Chethan","Manu","Prakash"), marks=c(85,89,98,97,67))
x

# to fetch 3rd row
x[c(3),]

# To fetch 2 and 4th column
x[,c(2,3)]

# to delete 3rd column
x=x[,-c(3)]
x

# To add new row 1
x1=rbind(c(1,"Santhosh"),x)
x1

# To add new column
x1[,"marks"]=c(98,97,99,87,85,87)
x1

#4. Write nested if else statements to print whether the given number is negative, positive or Zero 
x=10
if (x>0) {
  print("Positive Number")
}else if (x==0){
  print("Zero")
}else print("Negative Number")

x=10
if (x<0) {
  print("Positive Number")
}else if (x==0){
  print("Zero")
}else print("Negative Number")

#5.write a program to input any value and check whether it is character, numeric or special character
x="10"
is.integer(x)
is.character(x)
is.complex(x)

#6. write difference between break and next also write examples for both 
#Break - Terminates the loop statement

x="Hello World"
cnt=1
repeat {
  print (x)
  cnt=cnt +1
  
  if (cnt>5){
    break
  }
}  

#Next - Skips the current iteration of a loop without terminating it.
a=LETTERS[1:6]
for (i in a){
  if (i=="D"){
    next
  }
  print(i)
}

#7. write a program to print a given vector in reverse format
x= c(1,5.6,3,10,3.5,5)
rev(x)
rev.default(x)

#8. write a program to get the mode value of the given vector ('a','b','c','t','a','c','r','a','c','t','z','r','v','t','u','e','t')
v= c("a","b","c","t","a","c","r","a","c","t","z","r","v","t","u","e","t")
getmode = function(v) {
  uniqv = unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

v= c("a","b","c","t","a","c","r","a","c","t","z","r","v","t","u","e","t")

result = getmode(v)
print(result)

#9. write a function to filter only data belongs to 'setosa' in species of Iris dataset.( using dplyr package) 
data("iris")
View(iris)
install.packages('dplyr')
library(dplyr)
filter(select(iris,Sepal.Length,Sepal.Width,Petal.Length,Petal.Width,Species),Species=="setosa")

#10. Create a new column for iris dataset with the name of Means_of_obs, which contains mean value of each row.( using dplyr package)
iris$Means_of_obs<-apply(iris[,1:4],1,mean)

#11. Filter data for the "versicolor" and get only 'sepel_length' and Sepel _width' columns.( using dplyr package)
install.packages('dplyr')
library(dplyr)
filter(select(iris,Sepal.Length,Sepal.Width,Species),Species=="versicolor")

#12. create below plots for the mtcars also write your inferences for each and every plot (use ggplot package) Use Different ( Size , Colour )
install.packages('ggplot2')
library(ggplot2)
