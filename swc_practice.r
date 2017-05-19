#this is practice
weight_kg=60
2*weight_kg
dat=read.csv("inflammation-01.csv",header=FALSE)
dat
head(dat)
head(dat,n=2)
class(dat)
dim(dat)
dat[1,1]
dat[1,20]
dat[1:4,5:10]
dat[c(1,3,5),c(2,4)]
dat[16,]
dat[16,1:50]
2.2*dat[16,]
max(dat[16,])
as.numeric(dat[16,])
#summarize function
summary(dat[,1])
summary(dat[,4])
#use the apply 'for loop'
apply(dat,MARGIN=2,FUN=mean)
patient_means=apply(dat,1,mean)
patient_means
patient_means[3]

#plotting
day_means=apply(dat,2,mean)
day_means
plot(day_means)
day_max=apply(dat,2,max)
plot(day_max)
day_min=apply(dat,2,min)
plot(day_min)
day_sd=apply(dat,2,sd
             )
plot(day_sd)

#defining a function
fahr_to_kelvin=function(temp){
  kelvin=((temp-32)*(5/9))+273.15
  return(kelvin)
}

kelvin_to_celsius(fahr_to_kelvin(32))

#write a function
x=("oo")
y=("p")
fence=function(original,wrapper){
  new=c(wrapper,original,wrapper)
  return(new)
}
fence(x,y)

#write a function called analyze
analyze=function(datfile){
  dat = read.csv(datfile,header=FALSE)
  patient_means=apply(dat,2,mean)
  patient_max = apply(dat,2,max)
  patient_min = apply(dat,2,min)
  plot(patient_means)
  plot(patient_max)
  plot(patient_min)
  return()
}

analyze('inflammation-01.csv')  


#write function called rescale
fake_num=c(1,3,4,6,9)
rescale=function(values){
  low=min(values)
  high=max(values)
  result=(values-low)/(high-low)
  return(result)
  
}
rescale(fake_num)
