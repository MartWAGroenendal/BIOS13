set.seed(187)
x1 = rnorm(200, 10, 2)
x2 = 0.5*x1 + rnorm(200, 0, 4)
y = 0.7*x1 + 2.2*x2 + rnorm(200, 0, 4)
m = lm(y~x1+x2)
coefs = summary(m)$coef

y_hat = coefs[1,1] + coefs[2,1]*x1 + coefs[3,1]*x2
y_hat1 = coefs[1,1] + coefs[2,1]*x1 + coefs[3,1]*mean(x2)
y_hat2 = coefs[1,1] + coefs[2,1]*mean(x1) + coefs[3,1]*x2
var(y_hat)
var(y_hat1)
var(y_hat2)

r2=var(y_hat)/var(y)

S=cov(cbind(x1,x2))

cbind(x1,x2)
v1=var(x1)
v2=var(x2)
x1_z = (x1 - mean(x1))/sd(x1)
x2_z = (x2 - mean(x2))/sd(x2)
m = lm(y ~ x1_z + x2_z)
summary(m)

# library("PerformanceAnalytics")
# chart.Correlation(plants, histogram=T)
# library("psych")
# pairs.panel(plants)
