---
title: "tutorial2"
author: "He Zhuyuan"
date: "31 Jan 2016"
output: md_document
---

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r}
summary(labs$WaitTime)
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  30.00   60.00   70.00   69.77   80.00  110.00 
summary(labs$SvcSat)
  N   Y 
 25 126 
p<-summary(labs$SvcSat)
pie(p)
ggplot(data=labs, aes(labs$WaitTime))+geom_histogram()
ggplot(data=labs,aes(labs$SvcSat,labs$Gender))+geom_count()
ggplot(data=labs, aes(labs$SvcSat,labs$AGE))+geom_count()
```

You can also embed plots, for example:

```{r, echo=FALSE}
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
