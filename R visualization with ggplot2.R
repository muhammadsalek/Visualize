install.packages("titanic")
library(titanic)
View(Titanic)
colnames(Titanic)
str(Titanic)
# Simple Line Chart 
install.packages("ggplot2")
library(ggplot2)


# Convert the Titanic dataset to a data frame
data("Titanic")
Titanic_df <- as.data.frame(Titanic)
str(Titanic)
ggplot(data = Titanic_df , mapping = aes(x=Sex, fill = Sex))  +
  geom_bar()
#show plot  

basic <- Titanic_df
basic
#themes
install.packages("ggthemes")
library(ggthemes)
install.packages("gray")

 
   
 
Titanic_df |>
  ggplot(data = Titanic_df , mapping = aes(x= Sex, fill = Sex)) +
  geom_bar()


library(ggplot2) 
ggplot(data = Titanic_df, mapping = aes(x = Sex, fill = Sex)) +
  geom_bar()
#theme
basic + theme_economist()

#grey
install.packages("gray")  # Correct way to install a package named "gray"
library(gray)
#Customization
ggplot(data = Titanic_df, mapping = aes(x = Sex, fill = Sex)) +
  geom_bar() +
  labs(
    x = "Sex",
    y = "Frequency",
    title = "Distribution of Gender",
    subtitle = "A sample subtitle for this figure",
    caption = "Data source = Anamul"
  )

#Boxplot
  Titanic_df |>
    ggplot(data = Titanic_df , mapping = aes(x= Sex, fill = Sex)) +
    geom_boxplot()
  
 Titanic_df |>
   ggplot(aes(x= Sex, y= Freq, fill = Age)) +
   geom_boxplot()
 #Group boxplot
 Titanic_df |>
   ggplot(aes(x=Sex, y= Freq, fill = Age)) +
   geom_boxplot()
 
 #violin plot(for large dataset)
 Titanic_df |>
   ggplot(aes(x= Sex, y= Freq, fill = Age)) +
   geom_violin()
 
 #Group violin plot
 
 Titanic_df |>
   ggplot(aes(x=Sex, y= Freq, fill = Age)) +
   geom_violin() 
   
#Scatter plot(Trend between two variable)
 
 Titanic_df |>
   ggplot(aes(x= Sex, y= Freq,)) +
   geom_point()
 
 
 
#Group Scatter
 Titanic_df |>
   ggplot(aes(x= Sex, y = Freq, fill =  Age)) +
   geom_point()
 #Bycolor
 Titanic_df |>
   ggplot(aes(x= Age, y = Freq, color = Sex)) +
   geom_point() 
# line chart 
 
   Titanic_df |>
   ggplot(aes(x= Age, y = Freq )) +
   geom_line()
 #Group 
   Titanic_df |>
     ggplot(aes(x= Age, y = Freq, color = Sex)) +
     geom_line()
   
   #Distribution plot:
   Titanic_df |>
     ggplot(aes(x = as.numeric(Age))) +
     geom_histogram()
   
 Titanic_df |>
   ggplot(aes(x = as.numeric(Freq, color = Freq))) +
   geom_histogram()
     
   
   
 Titanic_df |>
   ggplot(aes(x = as.numeric(Freq))) +
   geom_histogram()  
 #bin size
 
 Titanic_df |>
   ggplot(aes(x = as.numeric(Freq))) +
   geom_histogram(bins = 20 , binwidth = 2) 
   
 
 Titanic_df |>
   ggplot(aes(x = as.numeric(Freq))) +
   geom_histogram(binwidth = 20) 
 
 
 
 
 # Density distribution
 Titanic_df |>
   ggplot(aes(x = as.numeric(Freq))) +
   geom_density()
 
#Group distribution
 Titanic_df |>
   ggplot(aes(x = as.numeric(Freq),fill = Sex)) +
   geom_density()
 #Fasciting
 Titanic_df |>
   ggplot(aes(x = as.numeric(Freq),fill = Sex)) +
   geom_density() +
   facet_wrap(~Sex)
 

 
 
 
 
 
 