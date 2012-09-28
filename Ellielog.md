Ellie's Log
========================================================
My daughter, ellie, was born in January. Since her birth, we have been keeping detailed records of her sleep, feeding and diapers. In honor of QS2012, I digitized our log and have put together some plots of the key variables that we measured. I would love ideas and feedback on where to go next. 
<a href="http://imgur.com/4OQqA"><img src="http://i.imgur.com/4OQqA.jpg" title="Hosted by imgur.com" alt="" width="200" /></a>


```r
setwd("~/Desktop/Dropbox/EllieLog/")
require(ggplot2)
```

```
## Loading required package: ggplot2
```

```r
require(reshape2)
```

```
## Loading required package: reshape2
```

```r

Ellielog = read.csv("Ellielog.csv")
dates = seq(from = as.Date("2012-01-19"), to = as.Date("2012-09-11"), by = "day")
Ellielog$Date = dates
Ellielog$nightSleep[80] = 9.75
Ellielog$daySleep[37] = 4.25
Ellielog$daySleep[38] = 4.25
tmp = melt(Ellielog, id.vars = "Date")
```

## Sleep

```r
qplot(Date, LSP, data = Ellielog, geom = c("point", "smooth"), main = "Longest Sleep Period (hours)")
```

```
## geom_smooth: method="auto" and size of largest group is <1000, so using
## loess. Use 'method = x' to change the smoothing method.
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-1.png) 



```r
qplot(Date, nightSleep, data = Ellielog, geom = c("point", "smooth"), main = "Night time sleep (hours)")
```

```
## geom_smooth: method="auto" and size of largest group is <1000, so using
## loess. Use 'method = x' to change the smoothing method.
```

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.png) 


```r
qplot(Date, daySleep, data = Ellielog, geom = c("point", "smooth"), main = "Daytime sleep (hours)")
```

```
## geom_smooth: method="auto" and size of largest group is <1000, so using
## loess. Use 'method = x' to change the smoothing method.
```

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3.png) 


```r
qplot(Date, nightSleep + daySleep, data = Ellielog, geom = c("point", "smooth"), 
    main = "Total sleep (hours)")
```

```
## geom_smooth: method="auto" and size of largest group is <1000, so using
## loess. Use 'method = x' to change the smoothing method.
```

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4.png) 


```r
qplot(Date, naps, data = Ellielog, geom = c("point", "smooth"), main = "Number of naps")
```

```
## geom_smooth: method="auto" and size of largest group is <1000, so using
## loess. Use 'method = x' to change the smoothing method.
```

![plot of chunk unnamed-chunk-5](figure/unnamed-chunk-5.png) 


```r
qplot(Date, longestNap, data = Ellielog, geom = c("point", "smooth"), main = "Longest Nap (hours)")
```

```
## geom_smooth: method="auto" and size of largest group is <1000, so using
## loess. Use 'method = x' to change the smoothing method.
```

![plot of chunk unnamed-chunk-6](figure/unnamed-chunk-6.png) 


## Diapers

```r
qplot(Date, P, data = Ellielog, geom = c("point", "smooth"), main = "Number of poop diapers")
```

```
## geom_smooth: method="auto" and size of largest group is <1000, so using
## loess. Use 'method = x' to change the smoothing method.
```

![plot of chunk unnamed-chunk-7](figure/unnamed-chunk-7.png) 


## Feedings


```r
qplot(Date, feedings, data = Ellielog, geom = c("point", "smooth"), main = "Number of feedings")
```

```
## geom_smooth: method="auto" and size of largest group is <1000, so using
## loess. Use 'method = x' to change the smoothing method.
```

![plot of chunk unnamed-chunk-8](figure/unnamed-chunk-8.png) 


```r
qplot(Date, bottles, data = Ellielog, geom = c("point", "smooth"), main = "Number of bottle feedings")
```

```
## geom_smooth: method="auto" and size of largest group is <1000, so using
## loess. Use 'method = x' to change the smoothing method.
```

![plot of chunk unnamed-chunk-9](figure/unnamed-chunk-9.png) 


```r
qplot(Date, longestBF, data = Ellielog, geom = c("point", "smooth"), main = "Longest Breastfeeding (minutes)")
```

```
## geom_smooth: method="auto" and size of largest group is <1000, so using
## loess. Use 'method = x' to change the smoothing method.
```

![plot of chunk unnamed-chunk-10](figure/unnamed-chunk-10.png) 


```r
qplot(Date, solids, data = Ellielog, geom = c("point", "smooth"), main = "Number of solids feedings")
```

```
## geom_smooth: method="auto" and size of largest group is <1000, so using
## loess. Use 'method = x' to change the smoothing method.
```

![plot of chunk unnamed-chunk-11](figure/unnamed-chunk-11.png) 


<a href="http://imgur.com/bFLFG"><img src="http://i.imgur.com/bFLFG.jpg" title="Hosted by imgur.com" alt="" width="200" /></a>
