dominos=read_excel("Dominos.xlsx")
head(dominos)

round(mean(dominos$Time), 2)
t.test(Dominos$Time, alt="less", mu=173.62)

One Sample t-test

data:  Dominos$Time
t = -4.2568, df = 29, p-value = 9.921e-05
alternative hypothesis: true mean is less than 173.62
95 percent confidence interval:
  -Inf 164.7089
sample estimates:
  mean of x 
158.789 

mydata = mtcars[, c(1,3,4,5,6,7)]
head(mydata)

cormat = round(cor(mydata),2)
head(cormat)



#H0: a car's disp is correlated to it's hp
#H1: A car's disp is not correlated to it's hp
head(mydata)
t.test(mydata$disp, mydata$hp, alt="two.sided")

Welch Two Sample t-test

data:  mydata$disp and mydata$hp
t = 3.3562, df = 48.349, p-value = 0.001546
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
  33.70046 134.36829
sample estimates:
  mean of x mean of y 
230.7219  146.6875 