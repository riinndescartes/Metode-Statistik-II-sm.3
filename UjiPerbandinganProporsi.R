#UJI PROPORSI (MEMANDINGKAN PROPORSI)

#Load Data
#Need two vectors
#One specifies the total number of people in each group
#this creates a vector with 5 100s in it, for 5 groups
#same as "number trials"
n5<-c(rep(100,5))

#another specifiers the number of people who are in category
#same as "number of success"
x5<-c(65,60,60,50,45)
prop.test(x5,n5)

#if there are only two groups, then gives a confidence
#interval for the difference between the groups;
#the difficult CI is .95 (taraf signifikansi 95%)
n2<-c(40,40) #number of trials
x2<-c(30,20) #number of success
prop.test(x2,n2, conf.level = .80) #taraf keyakinan 80%

rm(list = ls()) # Clean up
