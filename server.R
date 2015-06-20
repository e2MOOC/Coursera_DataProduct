# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)
library(ggplot2)
library(e1071)
library(rpart)
library(rpart.plot)
library(caret)
library(gridExtra)
library(rattle)
require(graphics)


data(iris)
set.seed(3456)



palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3", "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))

shinyServer(function(input, output) {
  
  output$table <- renderDataTable(iris, options = list(pageLength = 10))
  
  partitionData <-reactive({

    trainIndex <- createDataPartition(iris$Species, p = input$trainprop/100,list = FALSE, times = 1)
    trainData <- iris[ trainIndex,]
    testData  <- iris[-trainIndex,]
    iris$type = "Test set"
    iris$type[trainIndex] = "Training Set"
    
    list(iris=iris,train=trainData,test=testData)
    
  })

  explore <- reactive({
    feature <- iris[input$feature]
    d<-cbind(feature,Species=iris$Species)
    
    colnames(d)[1] = "feature"
    list(data=d,xlab=input$feature)
  })

  glm_result <- reactive({
    d <- partitionData()
    model <- train(Species ~ .,data=d$train,method="rpart")
    accuracy <- confusionMatrix(predict(model,d$test), d$test$Species)
    list(model=model,accuracy=accuracy)
  })
  
  predictData <- reactive({
    model <- glm_result()$model$finalModel
    d <- data.frame(cbind(Sepal.Length=1, Sepal.Width=1, Petal.Length=input$length,Petal.Width=input$width))
    p <- predict(model,d,type = "class")
    s <- levels(iris$Species)[p]
    list(answer=s,data=d)
  })
  
  output$result <- renderText({
    paste("Predicted Species is ",predictData()$answer,"")
  })

  output$predictPlot <- renderPlot({
    d <- predictData()$data
    ggplot(iris, aes(x=Petal.Length, y= Petal.Width, col=Species)) + geom_point(data=iris) + geom_point(data=d,aes(col="Unknown Flower"))  

  })
  
  output$model <- renderPlot({
    fancyRpartPlot(glm_result()$model$finalModel)
  })
  
  output$accuracy <-renderTable({
    r <- glm_result()
    data.frame(r$accuracy$byClass)
  })
  
  output$accuracy2 <-renderTable({
    r <- glm_result()
    data.frame(r$accuracy$overall)
  })
  
  
  output$traintable <- renderDataTable({trainData})
  
  output$testtable <- renderDataTable({testData})
  
  output$plot1 <- renderPlot({
    qplot(Petal.Length,Petal.Width, data = iris, color = Species, size = Sepal.Width)
  })
  
  output$histogram <- renderPlot({
    d <- partitionData()$iris
    g1<-ggplot(d, aes(x=Species, fill=type)) + geom_histogram() 
    g2<-ggplot(d, aes(x=Sepal.Length, fill=type)) + geom_histogram() 
    g3<-ggplot(d, aes(x=Sepal.Width, fill=type)) + geom_histogram() 
    g4<-ggplot(d, aes(x=Petal.Length, fill=type)) + geom_histogram()
    g5<-ggplot(d, aes(x=Petal.Width, fill=type)) + geom_histogram()
    grid.arrange( g1,g2,g3,g4,g5, ncol=2)
  })
  
  output$plot_explore <- renderPlot({
    data <- explore()
    #g1 <- ggplot(data, aes(col=feature)) + geom_point() 
    g2 <- ggplot(data$data, aes(x=feature,fill=Species)) + geom_histogram() + xlab(data$xlab)
    grid.arrange( g2,  ncol=2)
  })
  
})
