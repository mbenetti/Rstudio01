#Workign directory
getwd()
#upload a file
USDA = read.csv("USDA.csv")
str(USDA)
summary(USDA)
#Only one column
USDA$Sodium
#which food has the valuen sodium
which.max(USDA$Sodium)
#names of the colums
names(USDA)
#the food with more sodium
USDA$Description[265]
#Create a new dataset with high sodium content
HighSodium=subset(USDA, Sodium>3457)
#Number of observation in the dataframe
nrow(HighSodium)
#List of food with high sodium in the dataframe
HighSodium$Description
#How get the index of caviar
match("CAVIAR", USDA$Description)
USDA$Sodium[4154]
#Tha fast way is, show the sodium of a food that match with caviar in the column description
USDA$Sodium[match("CAVIAR", USDA$Description)]
#the description of the column sodium
summary(USDA$Sodium)
#for NA values
sd(USDA$Sodium, na.rm = TRUE)
#plot for two variables
plot(USDA$Protein, USDA$TotalFat)
plot(USDA$Protein, USDA$TotalFat, xlab = "Protein", ylab = "Fat", main = "Protein vs fat", col="red")
#histogram take one variable and the frequency
hist(USDA$VitaminC, xlab = "Vitamine C", main = "Histogram of vitamine C in food")
#With smaller buckets
hist(USDA$VitaminC, xlab = "Vitamine C", main = "Histogram of vitamine C in food", xlim = c(0,100), breaks = 2000)
#Boxplot
boxplot(USDA$VitaminC, main = "Boxplot Vitamin C ", ylab=("Vitamine C"))     
#Boxplot for sugar
boxplot(USDA$Sugar, main = "Boxplot Sugar leves mg", ylab=("Sugar in (gr)"))     
#to create a feature in the dataset
USDA$Sodium[1]> mean(USDA$Sodium, na.rm = TRUE)
HighSodium = USDA$Sodium> mean(USDA$Sodium, na.rm = TRUE)
str(HighSodium)
#into 0 and 1
HighSodium = as.numeric(USDA$Sodium> mean(USDA$Sodium, na.rm = TRUE))
#adding the colum to the original dataset
USDA$FoodHighSodium = HighSodium
str(USDA)
#Also can be done like this 
USDA$FoodHighSodium = as.numeric(USDA$Sodium> mean(USDA$Sodium, na.rm = TRUE))
#do the same for the rest
USDA$HighProtein = as.numeric(USDA$Protein> mean(USDA$Protein, na.rm = TRUE))
USDA$HighCarbs = as.numeric(USDA$Carbohydrate> mean(USDA$Carbohydrate, na.rm = TRUE))
USDA$HighFat = as.numeric(USDA$TotalFat> mean(USDA$TotalFat, na.rm = TRUE))
str(USDA)
#tappy function
table(USDA$FoodHighSodium)
table(USDA$FoodHighSodium, USDA$HighFat)
tapply(USDA$Iron, USDA$HighProtein, mean, na.rm=TRUE)
tapply(USDA$VitaminC, USDA$HighCarbs, max, na.rm=TRUE)
tapply(USDA$VitaminC, USDA$HighCarbs, summary, na.rm=TRUE)
#the food with higher vitamine c is the food hight in carb..

#Recitation Solving the problem 
mvt=read.csv("mvtWeek1.csv")
str(mvt)
max(mvt$ID)
min(mvt$Beat)
summary(mvt$Arrest)
summary(mvt$LocationDescription)

summary(mvt$Date)
DateConvert = as.Date(strptime(mvt$Date, "%m/%d/%y %H:%M"))
median(mvt$Date)
mvt$Date[1]
mvt$Date[191641]
mvt$Month = months(DateConvert)
mvt$Weekday = weekdays(DateConvert)
mvt$Date = DateConvert
summary(mvt$LocationDescription)
mvt$Month[min(mvt$)]