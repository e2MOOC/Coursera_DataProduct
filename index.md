---
title       : Predicting Flower Species
subtitle    : from Edgar Anderson's Iris Data
author      : eterna2
job         : 
framework   : io2012   # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []   # {mathjax, quiz, bootstrap}
ext_widgets: {rCharts: libraries/nvd3}
mode        : selfcontained # {standalone, draft}
---

## Data set

This famous (Fisher's or Anderson's) iris data set gives the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from each of 3 species of iris. The species are Iris setosa, versicolor, and virginica.

```
##   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
## 1          5.1         3.5          1.4         0.2  setosa
## 2          4.9         3.0          1.4         0.2  setosa
## 3          4.7         3.2          1.3         0.2  setosa
## 4          4.6         3.1          1.5         0.2  setosa
## 5          5.0         3.6          1.4         0.2  setosa
```

--- .class #id 
## Data Exploration

This is a scatter plot showing the general distribution of the data.

<div id = 'charte9c290270a0' class = 'rChart nvd3'></div>
<script type='text/javascript'>
 $(document).ready(function(){
      drawcharte9c290270a0()
    });
    function drawcharte9c290270a0(){  
      var opts = {
 "dom": "charte9c290270a0",
"width":    800,
"height":    400,
"x": "Petal.Width",
"y": "Petal.Length",
"group": "Species",
"type": "scatterChart",
"id": "charte9c290270a0" 
},
        data = [
 {
 "Sepal.Length":            5.1,
"Sepal.Width":            3.5,
"Petal.Length":            1.4,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.9,
"Sepal.Width":              3,
"Petal.Length":            1.4,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.7,
"Sepal.Width":            3.2,
"Petal.Length":            1.3,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.6,
"Sepal.Width":            3.1,
"Petal.Length":            1.5,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":              5,
"Sepal.Width":            3.6,
"Petal.Length":            1.4,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.4,
"Sepal.Width":            3.9,
"Petal.Length":            1.7,
"Petal.Width":            0.4,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.6,
"Sepal.Width":            3.4,
"Petal.Length":            1.4,
"Petal.Width":            0.3,
"Species": "setosa" 
},
{
 "Sepal.Length":              5,
"Sepal.Width":            3.4,
"Petal.Length":            1.5,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.4,
"Sepal.Width":            2.9,
"Petal.Length":            1.4,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.9,
"Sepal.Width":            3.1,
"Petal.Length":            1.5,
"Petal.Width":            0.1,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.4,
"Sepal.Width":            3.7,
"Petal.Length":            1.5,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.8,
"Sepal.Width":            3.4,
"Petal.Length":            1.6,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.8,
"Sepal.Width":              3,
"Petal.Length":            1.4,
"Petal.Width":            0.1,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.3,
"Sepal.Width":              3,
"Petal.Length":            1.1,
"Petal.Width":            0.1,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.8,
"Sepal.Width":              4,
"Petal.Length":            1.2,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.7,
"Sepal.Width":            4.4,
"Petal.Length":            1.5,
"Petal.Width":            0.4,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.4,
"Sepal.Width":            3.9,
"Petal.Length":            1.3,
"Petal.Width":            0.4,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.1,
"Sepal.Width":            3.5,
"Petal.Length":            1.4,
"Petal.Width":            0.3,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.7,
"Sepal.Width":            3.8,
"Petal.Length":            1.7,
"Petal.Width":            0.3,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.1,
"Sepal.Width":            3.8,
"Petal.Length":            1.5,
"Petal.Width":            0.3,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.4,
"Sepal.Width":            3.4,
"Petal.Length":            1.7,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.1,
"Sepal.Width":            3.7,
"Petal.Length":            1.5,
"Petal.Width":            0.4,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.6,
"Sepal.Width":            3.6,
"Petal.Length":              1,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.1,
"Sepal.Width":            3.3,
"Petal.Length":            1.7,
"Petal.Width":            0.5,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.8,
"Sepal.Width":            3.4,
"Petal.Length":            1.9,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":              5,
"Sepal.Width":              3,
"Petal.Length":            1.6,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":              5,
"Sepal.Width":            3.4,
"Petal.Length":            1.6,
"Petal.Width":            0.4,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.2,
"Sepal.Width":            3.5,
"Petal.Length":            1.5,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.2,
"Sepal.Width":            3.4,
"Petal.Length":            1.4,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.7,
"Sepal.Width":            3.2,
"Petal.Length":            1.6,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.8,
"Sepal.Width":            3.1,
"Petal.Length":            1.6,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.4,
"Sepal.Width":            3.4,
"Petal.Length":            1.5,
"Petal.Width":            0.4,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.2,
"Sepal.Width":            4.1,
"Petal.Length":            1.5,
"Petal.Width":            0.1,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.5,
"Sepal.Width":            4.2,
"Petal.Length":            1.4,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.9,
"Sepal.Width":            3.1,
"Petal.Length":            1.5,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":              5,
"Sepal.Width":            3.2,
"Petal.Length":            1.2,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.5,
"Sepal.Width":            3.5,
"Petal.Length":            1.3,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.9,
"Sepal.Width":            3.6,
"Petal.Length":            1.4,
"Petal.Width":            0.1,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.4,
"Sepal.Width":              3,
"Petal.Length":            1.3,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.1,
"Sepal.Width":            3.4,
"Petal.Length":            1.5,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":              5,
"Sepal.Width":            3.5,
"Petal.Length":            1.3,
"Petal.Width":            0.3,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.5,
"Sepal.Width":            2.3,
"Petal.Length":            1.3,
"Petal.Width":            0.3,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.4,
"Sepal.Width":            3.2,
"Petal.Length":            1.3,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":              5,
"Sepal.Width":            3.5,
"Petal.Length":            1.6,
"Petal.Width":            0.6,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.1,
"Sepal.Width":            3.8,
"Petal.Length":            1.9,
"Petal.Width":            0.4,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.8,
"Sepal.Width":              3,
"Petal.Length":            1.4,
"Petal.Width":            0.3,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.1,
"Sepal.Width":            3.8,
"Petal.Length":            1.6,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            4.6,
"Sepal.Width":            3.2,
"Petal.Length":            1.4,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":            5.3,
"Sepal.Width":            3.7,
"Petal.Length":            1.5,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":              5,
"Sepal.Width":            3.3,
"Petal.Length":            1.4,
"Petal.Width":            0.2,
"Species": "setosa" 
},
{
 "Sepal.Length":              7,
"Sepal.Width":            3.2,
"Petal.Length":            4.7,
"Petal.Width":            1.4,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.4,
"Sepal.Width":            3.2,
"Petal.Length":            4.5,
"Petal.Width":            1.5,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.9,
"Sepal.Width":            3.1,
"Petal.Length":            4.9,
"Petal.Width":            1.5,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.5,
"Sepal.Width":            2.3,
"Petal.Length":              4,
"Petal.Width":            1.3,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.5,
"Sepal.Width":            2.8,
"Petal.Length":            4.6,
"Petal.Width":            1.5,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.7,
"Sepal.Width":            2.8,
"Petal.Length":            4.5,
"Petal.Width":            1.3,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.3,
"Sepal.Width":            3.3,
"Petal.Length":            4.7,
"Petal.Width":            1.6,
"Species": "versicolor" 
},
{
 "Sepal.Length":            4.9,
"Sepal.Width":            2.4,
"Petal.Length":            3.3,
"Petal.Width":              1,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.6,
"Sepal.Width":            2.9,
"Petal.Length":            4.6,
"Petal.Width":            1.3,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.2,
"Sepal.Width":            2.7,
"Petal.Length":            3.9,
"Petal.Width":            1.4,
"Species": "versicolor" 
},
{
 "Sepal.Length":              5,
"Sepal.Width":              2,
"Petal.Length":            3.5,
"Petal.Width":              1,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.9,
"Sepal.Width":              3,
"Petal.Length":            4.2,
"Petal.Width":            1.5,
"Species": "versicolor" 
},
{
 "Sepal.Length":              6,
"Sepal.Width":            2.2,
"Petal.Length":              4,
"Petal.Width":              1,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.1,
"Sepal.Width":            2.9,
"Petal.Length":            4.7,
"Petal.Width":            1.4,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.6,
"Sepal.Width":            2.9,
"Petal.Length":            3.6,
"Petal.Width":            1.3,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.7,
"Sepal.Width":            3.1,
"Petal.Length":            4.4,
"Petal.Width":            1.4,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.6,
"Sepal.Width":              3,
"Petal.Length":            4.5,
"Petal.Width":            1.5,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.8,
"Sepal.Width":            2.7,
"Petal.Length":            4.1,
"Petal.Width":              1,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.2,
"Sepal.Width":            2.2,
"Petal.Length":            4.5,
"Petal.Width":            1.5,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.6,
"Sepal.Width":            2.5,
"Petal.Length":            3.9,
"Petal.Width":            1.1,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.9,
"Sepal.Width":            3.2,
"Petal.Length":            4.8,
"Petal.Width":            1.8,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.1,
"Sepal.Width":            2.8,
"Petal.Length":              4,
"Petal.Width":            1.3,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.3,
"Sepal.Width":            2.5,
"Petal.Length":            4.9,
"Petal.Width":            1.5,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.1,
"Sepal.Width":            2.8,
"Petal.Length":            4.7,
"Petal.Width":            1.2,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.4,
"Sepal.Width":            2.9,
"Petal.Length":            4.3,
"Petal.Width":            1.3,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.6,
"Sepal.Width":              3,
"Petal.Length":            4.4,
"Petal.Width":            1.4,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.8,
"Sepal.Width":            2.8,
"Petal.Length":            4.8,
"Petal.Width":            1.4,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.7,
"Sepal.Width":              3,
"Petal.Length":              5,
"Petal.Width":            1.7,
"Species": "versicolor" 
},
{
 "Sepal.Length":              6,
"Sepal.Width":            2.9,
"Petal.Length":            4.5,
"Petal.Width":            1.5,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.7,
"Sepal.Width":            2.6,
"Petal.Length":            3.5,
"Petal.Width":              1,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.5,
"Sepal.Width":            2.4,
"Petal.Length":            3.8,
"Petal.Width":            1.1,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.5,
"Sepal.Width":            2.4,
"Petal.Length":            3.7,
"Petal.Width":              1,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.8,
"Sepal.Width":            2.7,
"Petal.Length":            3.9,
"Petal.Width":            1.2,
"Species": "versicolor" 
},
{
 "Sepal.Length":              6,
"Sepal.Width":            2.7,
"Petal.Length":            5.1,
"Petal.Width":            1.6,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.4,
"Sepal.Width":              3,
"Petal.Length":            4.5,
"Petal.Width":            1.5,
"Species": "versicolor" 
},
{
 "Sepal.Length":              6,
"Sepal.Width":            3.4,
"Petal.Length":            4.5,
"Petal.Width":            1.6,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.7,
"Sepal.Width":            3.1,
"Petal.Length":            4.7,
"Petal.Width":            1.5,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.3,
"Sepal.Width":            2.3,
"Petal.Length":            4.4,
"Petal.Width":            1.3,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.6,
"Sepal.Width":              3,
"Petal.Length":            4.1,
"Petal.Width":            1.3,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.5,
"Sepal.Width":            2.5,
"Petal.Length":              4,
"Petal.Width":            1.3,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.5,
"Sepal.Width":            2.6,
"Petal.Length":            4.4,
"Petal.Width":            1.2,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.1,
"Sepal.Width":              3,
"Petal.Length":            4.6,
"Petal.Width":            1.4,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.8,
"Sepal.Width":            2.6,
"Petal.Length":              4,
"Petal.Width":            1.2,
"Species": "versicolor" 
},
{
 "Sepal.Length":              5,
"Sepal.Width":            2.3,
"Petal.Length":            3.3,
"Petal.Width":              1,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.6,
"Sepal.Width":            2.7,
"Petal.Length":            4.2,
"Petal.Width":            1.3,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.7,
"Sepal.Width":              3,
"Petal.Length":            4.2,
"Petal.Width":            1.2,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.7,
"Sepal.Width":            2.9,
"Petal.Length":            4.2,
"Petal.Width":            1.3,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.2,
"Sepal.Width":            2.9,
"Petal.Length":            4.3,
"Petal.Width":            1.3,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.1,
"Sepal.Width":            2.5,
"Petal.Length":              3,
"Petal.Width":            1.1,
"Species": "versicolor" 
},
{
 "Sepal.Length":            5.7,
"Sepal.Width":            2.8,
"Petal.Length":            4.1,
"Petal.Width":            1.3,
"Species": "versicolor" 
},
{
 "Sepal.Length":            6.3,
"Sepal.Width":            3.3,
"Petal.Length":              6,
"Petal.Width":            2.5,
"Species": "virginica" 
},
{
 "Sepal.Length":            5.8,
"Sepal.Width":            2.7,
"Petal.Length":            5.1,
"Petal.Width":            1.9,
"Species": "virginica" 
},
{
 "Sepal.Length":            7.1,
"Sepal.Width":              3,
"Petal.Length":            5.9,
"Petal.Width":            2.1,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.3,
"Sepal.Width":            2.9,
"Petal.Length":            5.6,
"Petal.Width":            1.8,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.5,
"Sepal.Width":              3,
"Petal.Length":            5.8,
"Petal.Width":            2.2,
"Species": "virginica" 
},
{
 "Sepal.Length":            7.6,
"Sepal.Width":              3,
"Petal.Length":            6.6,
"Petal.Width":            2.1,
"Species": "virginica" 
},
{
 "Sepal.Length":            4.9,
"Sepal.Width":            2.5,
"Petal.Length":            4.5,
"Petal.Width":            1.7,
"Species": "virginica" 
},
{
 "Sepal.Length":            7.3,
"Sepal.Width":            2.9,
"Petal.Length":            6.3,
"Petal.Width":            1.8,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.7,
"Sepal.Width":            2.5,
"Petal.Length":            5.8,
"Petal.Width":            1.8,
"Species": "virginica" 
},
{
 "Sepal.Length":            7.2,
"Sepal.Width":            3.6,
"Petal.Length":            6.1,
"Petal.Width":            2.5,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.5,
"Sepal.Width":            3.2,
"Petal.Length":            5.1,
"Petal.Width":              2,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.4,
"Sepal.Width":            2.7,
"Petal.Length":            5.3,
"Petal.Width":            1.9,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.8,
"Sepal.Width":              3,
"Petal.Length":            5.5,
"Petal.Width":            2.1,
"Species": "virginica" 
},
{
 "Sepal.Length":            5.7,
"Sepal.Width":            2.5,
"Petal.Length":              5,
"Petal.Width":              2,
"Species": "virginica" 
},
{
 "Sepal.Length":            5.8,
"Sepal.Width":            2.8,
"Petal.Length":            5.1,
"Petal.Width":            2.4,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.4,
"Sepal.Width":            3.2,
"Petal.Length":            5.3,
"Petal.Width":            2.3,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.5,
"Sepal.Width":              3,
"Petal.Length":            5.5,
"Petal.Width":            1.8,
"Species": "virginica" 
},
{
 "Sepal.Length":            7.7,
"Sepal.Width":            3.8,
"Petal.Length":            6.7,
"Petal.Width":            2.2,
"Species": "virginica" 
},
{
 "Sepal.Length":            7.7,
"Sepal.Width":            2.6,
"Petal.Length":            6.9,
"Petal.Width":            2.3,
"Species": "virginica" 
},
{
 "Sepal.Length":              6,
"Sepal.Width":            2.2,
"Petal.Length":              5,
"Petal.Width":            1.5,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.9,
"Sepal.Width":            3.2,
"Petal.Length":            5.7,
"Petal.Width":            2.3,
"Species": "virginica" 
},
{
 "Sepal.Length":            5.6,
"Sepal.Width":            2.8,
"Petal.Length":            4.9,
"Petal.Width":              2,
"Species": "virginica" 
},
{
 "Sepal.Length":            7.7,
"Sepal.Width":            2.8,
"Petal.Length":            6.7,
"Petal.Width":              2,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.3,
"Sepal.Width":            2.7,
"Petal.Length":            4.9,
"Petal.Width":            1.8,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.7,
"Sepal.Width":            3.3,
"Petal.Length":            5.7,
"Petal.Width":            2.1,
"Species": "virginica" 
},
{
 "Sepal.Length":            7.2,
"Sepal.Width":            3.2,
"Petal.Length":              6,
"Petal.Width":            1.8,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.2,
"Sepal.Width":            2.8,
"Petal.Length":            4.8,
"Petal.Width":            1.8,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.1,
"Sepal.Width":              3,
"Petal.Length":            4.9,
"Petal.Width":            1.8,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.4,
"Sepal.Width":            2.8,
"Petal.Length":            5.6,
"Petal.Width":            2.1,
"Species": "virginica" 
},
{
 "Sepal.Length":            7.2,
"Sepal.Width":              3,
"Petal.Length":            5.8,
"Petal.Width":            1.6,
"Species": "virginica" 
},
{
 "Sepal.Length":            7.4,
"Sepal.Width":            2.8,
"Petal.Length":            6.1,
"Petal.Width":            1.9,
"Species": "virginica" 
},
{
 "Sepal.Length":            7.9,
"Sepal.Width":            3.8,
"Petal.Length":            6.4,
"Petal.Width":              2,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.4,
"Sepal.Width":            2.8,
"Petal.Length":            5.6,
"Petal.Width":            2.2,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.3,
"Sepal.Width":            2.8,
"Petal.Length":            5.1,
"Petal.Width":            1.5,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.1,
"Sepal.Width":            2.6,
"Petal.Length":            5.6,
"Petal.Width":            1.4,
"Species": "virginica" 
},
{
 "Sepal.Length":            7.7,
"Sepal.Width":              3,
"Petal.Length":            6.1,
"Petal.Width":            2.3,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.3,
"Sepal.Width":            3.4,
"Petal.Length":            5.6,
"Petal.Width":            2.4,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.4,
"Sepal.Width":            3.1,
"Petal.Length":            5.5,
"Petal.Width":            1.8,
"Species": "virginica" 
},
{
 "Sepal.Length":              6,
"Sepal.Width":              3,
"Petal.Length":            4.8,
"Petal.Width":            1.8,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.9,
"Sepal.Width":            3.1,
"Petal.Length":            5.4,
"Petal.Width":            2.1,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.7,
"Sepal.Width":            3.1,
"Petal.Length":            5.6,
"Petal.Width":            2.4,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.9,
"Sepal.Width":            3.1,
"Petal.Length":            5.1,
"Petal.Width":            2.3,
"Species": "virginica" 
},
{
 "Sepal.Length":            5.8,
"Sepal.Width":            2.7,
"Petal.Length":            5.1,
"Petal.Width":            1.9,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.8,
"Sepal.Width":            3.2,
"Petal.Length":            5.9,
"Petal.Width":            2.3,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.7,
"Sepal.Width":            3.3,
"Petal.Length":            5.7,
"Petal.Width":            2.5,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.7,
"Sepal.Width":              3,
"Petal.Length":            5.2,
"Petal.Width":            2.3,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.3,
"Sepal.Width":            2.5,
"Petal.Length":              5,
"Petal.Width":            1.9,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.5,
"Sepal.Width":              3,
"Petal.Length":            5.2,
"Petal.Width":              2,
"Species": "virginica" 
},
{
 "Sepal.Length":            6.2,
"Sepal.Width":            3.4,
"Petal.Length":            5.4,
"Petal.Width":            2.3,
"Species": "virginica" 
},
{
 "Sepal.Length":            5.9,
"Sepal.Width":              3,
"Petal.Length":            5.1,
"Petal.Width":            1.8,
"Species": "virginica" 
} 
]
  
      if(!(opts.type==="pieChart" || opts.type==="sparklinePlus" || opts.type==="bulletChart")) {
        var data = d3.nest()
          .key(function(d){
            //return opts.group === undefined ? 'main' : d[opts.group]
            //instead of main would think a better default is opts.x
            return opts.group === undefined ? opts.y : d[opts.group];
          })
          .entries(data);
      }
      
      if (opts.disabled != undefined){
        data.map(function(d, i){
          d.disabled = opts.disabled[i]
        })
      }
      
      nv.addGraph(function() {
        var chart = nv.models[opts.type]()
          .width(opts.width)
          .height(opts.height)
          
        if (opts.type != "bulletChart"){
          chart
            .x(function(d) { return d[opts.x] })
            .y(function(d) { return d[opts.y] })
        }
          
         
        
          
        

        
        
        
      
       d3.select("#" + opts.id)
        .append('svg')
        .datum(data)
        .transition().duration(500)
        .call(chart);

       nv.utils.windowResize(chart.update);
       return chart;
      });
    };
</script>

--- 

## Data Exploration
This are the histogram showing the distribution by features with respect to the Species.
![plot of chunk unnamed-chunk-4](assets/fig/unnamed-chunk-4-1.png) 

--- 
## Prediction Model'
This is the model to predict the species of the flower. As shown in the schema of the decision tree, Petal.Width and Petal.Length are the 2 primary predictors.


![plot of chunk unnamed-chunk-6](assets/fig/unnamed-chunk-6-1.png) 


