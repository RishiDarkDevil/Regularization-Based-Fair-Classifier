library(numDeriv)
adult=read.csv(file.choose(),header=TRUE)
h=function(theta,x){
  x=c(1,x)
  n=length(x)
  for(i in 1:n)
    a=a-theta[i]*x[i]
  1/(1+exp(a))
}
ll=function(theta,y,x){
  n=nrow(x)
  a=0
  for(i in 1:n){
    a=a+y[i]*log(h(theta,x[i,]))+(1-y[i])*log(1-h(theta,x[i,]))
  }
  a
}
n=nrow(adult)
NFpos=c()
j=1
for(i in 1:n){
  if(adult$Income.Binary[i]== 1 && adult$sex[i]==0){
    NFpos[j]=i
    j=j+1
  }
}
NFneg=c()
for(i in 1:n){
  j = 1
  if(adult[i,3] == 0 && adult$sex[i]==0){
    NFneg[j]=i
    j=j+1
  }
}
NMpos=c()
for(i in 1:n){
  j = 1
  if(adult$Income.Binary[i] == 1 && adult$sex[i]==1){
    NMpos[j]=i
    j=j+1
  }
}
NMneg=c()
for(i in 1:n){
  j = 1
  if(adult$Income.Binary[i] == 0 && adult$sex[i]==1){
    NMneg[j]=i
    j=j+1
  }
}
FNRdif=function(theta,x){
  n=len(NFpos)
  m=len(NMpos)
  a=0
  b=0
  for(i in 1:n)
    a=a+h(theta,x[i])
  for(j in 1:m)
    b=b+h(theta,x[i])
  abs(-a/n+b/m)
}
FPRdif=function(theta,x){
  n=len(NFneg)
  m=len(NMneg)
  a=0
  b=0
  for(i in 1:n)
    a=a+h(theta,x[i])
  for(j in 1:m)
    b=b+h(theta,x[i])
  abs(-a/n+b/m)
}

Obj= function(theta){
  c1=1
  c2=1
  c3=1
  -ll(theta,adult$Income.Binary,adult[,-3]) + c1*FPRdif + c2*FNRdif + c3*sum(theta^2)
}
theta=0
e=0.01
for (i in 1:n) {
  theta = theta - e*grad(Obj,theta)
  print(theta)
}


#female=0, male =1, >=50k = 1, <50k = 0

