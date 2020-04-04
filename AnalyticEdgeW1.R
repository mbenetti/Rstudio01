#change directory: Session\Set Working Directory\Choose directory...(Ctrl+Shift+H)
#basic calculation: * for multiplying
8*6
#basic calculation: ^ for raising power
2^16
#function: sqrt( ) for square root
sqrt(2)
#function: abs( ) for the absolute value
abs(-65)
#get help for any function: ?functionname
?sqrt
#saving the output of a function by saving it to a variable
SquareRoot2=sqrt(2)
#The symbol = is equally used as <-
SquareRoot2<-sqrt(2)
#remove variable: rm( )
rm(squareroot2)
HoursYear<-365*24
HoursYear
#list of all the variables: ls( )
ls()
#vectors are created by combine function: c(x1,x2,x3...) 
c(1,2,3,4,5)
#Data about life expectancy in different countries
Country = c("Brazil","China","India","Switzerland","USA")
LifeExpectancy = c(74,76,65,83,79)
Country
LifeExpectancy
#To display an element in a vector: [x]
Country[1]
LifeExpectancy[3]
#to create a sequence: seq(x0,xn,c), in which x0 is the first value, xn is the final value, and c is the increment.
seq (0,100,2)
#to combine vectors into a data frame: data.frame(v1,v2...)
CountryData = data.frame(Country,LifeExpectancy)
CountryData
#to add a new variable to a data frame: DataFrame$NewVariable = c( )
CountryData$Population = c(199000,1390000,1240000,7999,318000)
CountryData
#add new observations
Country=c("Australia","Greece")
LifeExpectancy=c(82,81)
Population=c(23050,11125)
#create new data frame
NewCountryData=data.frame(Country,LifeExpectancy,Population)
NewCountryData
#combine data frames by stacking rows
AllCountryData = rbind(CountryData, NewCountryData)
AllCountryData
#see the directory
getwd()
#read the csv file
WHO=read.csv("WHO.csv")
#show the structure of the data
str(WHO)
#get a nummerical summary of the data
summary(WHO)
#create subset
WHO_Europe = subset(WHO,Region=="Europe")
str(WHO_Europe)
#save a data frame in a csv file
write.csv(WHO_Europe,"WHO_Europe")
#access a variable in a data frame using $
WHO$Under15
#statistics function: mean
mean(WHO$Under15)
#statistics function: sd for standard deviation
sd(WHO$Under15)
#staistical summary of just one variable
summary(WHO$Under15)
#see which country has the minimal value of population that are under 15
which.min(WHO$Under15)
#see which country in the 86th row
WHO$Country[86]
#similarly, see which country has the maximal value of the population under 15
which.max(WHO$Under15)
WHO$Country[124]
#to create a scatter plot: plot(X,Y)
plot(WHO$GNI,WHO$FertilityRate)
#use subset function to identify observations with conditions
Outliers = subset(WHO, GNI>10000 & FertilityRate >2.5)
#see how many rows of data in the subset
nrow(Outliers)
#to extract a few variables froma a data set
Outliers[c("Country","GNI", "FertilityRate")]
#create a histogram
hist(WHO$CellularSubscribers)
#create a box plot
boxplot(WHO$LifeExpectancy~WHO$Region)
boxplot(WHO$LifeExpectancy~WHO$Region, xlab = "",ylab="Life Expectancy",main = "Life Expectancy of Countries by Region")
#create a table
table(WHO$Region)
#apply a function to the table
tapply(WHO$Over60, WHO$Region, mean)
#remove N/A value
tapply(WHO$LiteracyRate, WHO$Region, min, na.rm=TRUE)

