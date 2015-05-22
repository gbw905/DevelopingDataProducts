Pitch Presentation
========================================================
author: Greg B Watson
date: System Date as of compile time 


```
[1] "May 12 2015"
```

Purpose of Shiny App
========================================================

I created the Shiny App to complete the requirements for the **Develop Data Products** course project

The Shiny App performs the following functions:
- Load data(mtcars) from the demo databases that ship with R
- Allow the user to select number of cylinders & type of transmission
- Display the models with the selected number of cylanders & transmission
- Calculate the average mpg for the models

Summary of the mtcars data
========================================================


```
      cyl              am        
 Min.   :4.000   Min.   :0.0000  
 1st Qu.:4.000   1st Qu.:0.0000  
 Median :6.000   Median :0.0000  
 Mean   :6.188   Mean   :0.4062  
 3rd Qu.:8.000   3rd Qu.:1.0000  
 Max.   :8.000   Max.   :1.0000  
```

```
      mpg       
 Min.   :10.40  
 1st Qu.:15.43  
 Median :19.20  
 Mean   :20.09  
 3rd Qu.:22.80  
 Max.   :33.90  
```

Variance by Cylinder
========================================================

![plot of chunk unnamed-chunk-3](PitchPresentation-figure/unnamed-chunk-3-1.png) 

Conclusion
========================================================

As you manipulate the data note the following:
- With 4 cylinders, manual transmission has higher average mgp
- With 6 or more cylinders, automatic transmission has higher average mpg

