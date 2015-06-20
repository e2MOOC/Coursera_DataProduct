
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)
require(graphics)
data(iris)
set.seed(3456)

shinyUI(fluidPage(
  # Application title
  titlePanel("Predicting Flower Species from Edgar Anderson's Iris Data"),
  h3('1. Data Exploration'),
  h4('Dataset'),
  br("This famous (Fisher's or Anderson's) iris data set gives the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from each of 3 species of iris. The species are Iris setosa, versicolor, and virginica."),
  br("You can sort, search, and explore the data via Data Table widget below."),
  br(),
  dataTableOutput('table'),
  h4('Scatter Plot'),
  br("This is a scatter plot showing the general distribution of the data."),
  plotOutput('plot1'),

  h4('Histogram'),
  br("Select a feature to see its distribution with respect to the Species."),
  selectInput('feature', 'Feature', names(iris)[1:4],selected=names(iris)[1]),
  plotOutput("plot_explore"),
  
  h3('2. Data Partition'),
  br("As part of the validation process in prediction modelling, the data set should be partition into training and test set. You can set the percentage of data to be the training set by sliding the knob below."),
  br(),
  sliderInput("trainprop","Percent as Training set (%):",min = 10,max = 90,value = 80),
  plotOutput("histogram"),
    
  h3('3. Data Modelling'),
  h4('Decision Tree'),
  br("A decision tree is used as the model to predict the Species of the flowers. The diagram below shows the final model derived from the training set specified above."),
  br(),
  plotOutput("model"),
  h4('Validation'),
  br("The model is validated against the test set. The following are the performance of the model."),
  br(),
  tableOutput('accuracy'),
  tableOutput('accuracy2'),
  
  h3('4. Prediction Model'),
  br("Based on the model, Petal Length and Width are the primary features used to predict the Species of an unknown flower. You can test the model by adjusting the 2 features, where the model will output the prediction."),
  br(),
  sliderInput("length","Petal.Length:",min = min(iris$Petal.Length),max = max(iris$Petal.Length),value = mean(iris$Petal.Length)),
  sliderInput("width","Petal.Width:",min = min(iris$Petal.Width),max = max(iris$Petal.Width),value = mean(iris$Petal.Width)),
  h4(textOutput('result')),
  br("You can visualize where the unknown flower is with respect to the data set below."),
  br(),
  plotOutput("predictPlot")
  
))
