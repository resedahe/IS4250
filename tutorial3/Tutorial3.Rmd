---
title: "Tutorial3"
author: "He Zhuyuan"
date: "10 Feb 2016"
output: md_document
---

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r}
<c>
  Yes, from the plot, we can see that the service satisfaction is correlated with waiting times
> k<-ggplot(labs,aes(WaitTime, fill=SvcSat))
> k+geom_bar()

<d>
  High R square with low p value suggests "BMIs" are correlated to "Total Cholesterol"
> labs$BMI<-labs$WT/(labs$HT^2)
> lm<-lm(labs$BMI~labs$TC)
> summary(lm)

Call:
lm(formula = labs$BMI ~ labs$TC)

Residuals:
    Min      1Q  Median      3Q     Max 
-4.9353 -0.1405  0.0000  0.0487  5.8021 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) 19.32796    3.41585   5.658 8.82e-07 ***
labs$TC112  -2.89727    4.83073  -0.600  0.55155    
labs$TC115  -0.43354    4.83073  -0.090  0.92887    
labs$TC123   2.55503    4.83073   0.529  0.59936    
labs$TC129   4.62654    4.83073   0.958  0.34310    
labs$TC131  -0.64811    4.18354  -0.155  0.87755    
labs$TC140   0.04516    4.18354   0.011  0.99143    
labs$TC142   3.65373    4.83073   0.756  0.45321    
labs$TC144  -0.70114    4.83073  -0.145  0.88522    
labs$TC147  -1.03596    4.83073  -0.214  0.83112    
labs$TC149  -4.63558    4.83073  -0.960  0.34217    
labs$TC153   5.07595    4.83073   1.051  0.29874    
labs$TC160   4.73081    4.83073   0.979  0.33244    
labs$TC161   0.05716    4.83073   0.012  0.99061    
labs$TC162   6.06267    4.83073   1.255  0.21568    
labs$TC163   1.15647    4.83073   0.239  0.81184    
labs$TC165   1.48516    3.81903   0.389  0.69912    
labs$TC166   3.76837    4.18354   0.901  0.37231    
labs$TC167   0.07489    4.83073   0.016  0.98770    
labs$TC168  -2.35722    4.83073  -0.488  0.62785    
labs$TC169   6.46844    4.83073   1.339  0.18701    
labs$TC170  -2.29615    4.83073  -0.475  0.63676    
labs$TC175  -0.47020    4.18354  -0.112  0.91099    
labs$TC177   0.09867    3.94428   0.025  0.98015    
labs$TC178   0.82903    4.83073   0.172  0.86448    
labs$TC179  -0.73300    4.83073  -0.152  0.88004    
labs$TC180   4.42625    4.83073   0.916  0.36420    
labs$TC182   9.26365    4.83073   1.918  0.06124 .  
labs$TC184   2.32932    4.18354   0.557  0.58032    
labs$TC185   6.71270    4.83073   1.390  0.17120    
labs$TC186   0.24372    4.83073   0.050  0.95998    
labs$TC187   2.08604    4.18354   0.499  0.62037    
labs$TC188  -2.06389    3.94428  -0.523  0.60325    
labs$TC189   3.24995    3.94428   0.824  0.41412    
labs$TC190   0.93200    4.18354   0.223  0.82467    
labs$TC191   3.44548    4.83073   0.713  0.47922    
labs$TC193   3.84117    3.74187   1.027  0.30989    
labs$TC194   1.26588    3.81903   0.331  0.74177    
labs$TC195   0.59799    4.18354   0.143  0.88695    
labs$TC196   3.23757    4.18354   0.774  0.44288    
labs$TC198  -4.24165    4.83073  -0.878  0.38438    
labs$TC199   2.48664    4.83073   0.515  0.60914    
labs$TC200   0.22221    4.83073   0.046  0.96350    
labs$TC201   4.73081    4.83073   0.979  0.33244    
labs$TC202   4.20041    4.18354   1.004  0.32050    
labs$TC203  -0.26909    4.83073  -0.056  0.95581    
labs$TC205   7.31272    4.83073   1.514  0.13678    
labs$TC207  -0.54090    4.83073  -0.112  0.91132    
labs$TC208  -0.27833    4.83073  -0.058  0.95430    
labs$TC209   1.92918    4.83073   0.399  0.69144    
labs$TC210   0.40802    4.83073   0.084  0.93305    
labs$TC212   2.36890    4.18354   0.566  0.57392    
labs$TC213   7.23049    4.83073   1.497  0.14114    
labs$TC214   3.37873    4.18354   0.808  0.42338    
labs$TC215   2.06642    4.83073   0.428  0.67078    
labs$TC216   4.09621    3.94428   1.039  0.30434    
labs$TC218   7.11618    4.83073   1.473  0.14739    
labs$TC219   2.93549    4.18354   0.702  0.48634    
labs$TC220   8.78677    4.83073   1.819  0.07530 .  
labs$TC221   3.34026    3.94428   0.847  0.40136    
labs$TC222   2.84300    4.83073   0.589  0.55900    
labs$TC223   4.10779    3.94428   1.041  0.30299    
labs$TC224   1.64575    4.83073   0.341  0.73486    
labs$TC225   7.76395    4.83073   1.607  0.11471    
labs$TC226   4.26826    4.18354   1.020  0.31283    
labs$TC230   2.67703    3.94428   0.679  0.50065    
labs$TC231  -0.69075    4.83073  -0.143  0.88691    
labs$TC233   2.48630    4.18354   0.594  0.55516    
labs$TC234   6.05631    4.83073   1.254  0.21615    
labs$TC236   5.65959    4.18354   1.353  0.18258    
labs$TC237   8.28960    3.94428   2.102  0.04097 *  
labs$TC238   8.34353    4.83073   1.727  0.09070 .  
labs$TC239   1.95232    4.83073   0.404  0.68794    
labs$TC240   0.80274    4.83073   0.166  0.86873    
labs$TC242   2.99038    4.83073   0.619  0.53888    
labs$TC243   6.54810    4.83073   1.356  0.18173    
labs$TC245   3.02652    4.83073   0.627  0.53401    
labs$TC246   7.01162    4.83073   1.451  0.15329    
labs$TC248   4.06965    4.83073   0.842  0.40380    
labs$TC250   2.17496    4.83073   0.450  0.65461    
labs$TC253   8.01195    4.83073   1.659  0.10387    
labs$TC254   3.59930    4.18354   0.860  0.39397    
labs$TC255   8.24215    4.83073   1.706  0.09457 .  
labs$TC256   9.35891    4.83073   1.937  0.05872 .  
labs$TC257   1.18930    4.18354   0.284  0.77744    
labs$TC260   2.96285    4.83073   0.613  0.54261    
labs$TC261  -0.43162    4.83073  -0.089  0.92918    
labs$TC264   7.18039    4.18354   1.716  0.09268 .  
labs$TC272  10.15301    4.83073   2.102  0.04096 *  
labs$TC273   8.55860    4.83073   1.772  0.08293 .  
labs$TC280   7.73506    4.83073   1.601  0.11603    
labs$TC283   6.64216    4.83073   1.375  0.17566    
labs$TC287  15.48076    4.83073   3.205  0.00243 ** 
labs$TC288   4.28224    4.83073   0.886  0.37988    
labs$TC290   2.98720    4.83073   0.618  0.53931    
labs$TC291   8.08705    4.83073   1.674  0.10076    
labs$TC293   2.52695    4.83073   0.523  0.60336    
labs$TC296   8.79476    4.83073   1.821  0.07504 .  
labs$TC297   6.70954    4.83073   1.389  0.17140    
labs$TC299   9.97715    4.83073   2.065  0.04443 *  
labs$TC308  13.79988    4.83073   2.857  0.00636 ** 
labs$TC315   4.02272    4.83073   0.833  0.40921    
labs$TC327  12.15074    4.83073   2.515  0.01537 *  
labs$TCna    3.09251    3.94428   0.784  0.43694    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 3.416 on 47 degrees of freedom
Multiple R-squared:  0.7569,	Adjusted R-squared:  0.2241 
F-statistic: 1.421 on 103 and 47 DF,  p-value: 0.08988

(e) The variables are correlated \

> lm<-lm(formula=labs$BMI~labs$Gender+labs$TC+labs$AGE+labs$SBP)
> summary(lm)

Residual standard error: 3.042 on 44 degrees of freedom
Multiple R-squared:  0.8194,	Adjusted R-squared:  0.3845 
F-statistic: 1.884 on 106 and 44 DF,  p-value: 0.009772
```

You can also embed plots, for example:

```{r, echo=FALSE}

```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
