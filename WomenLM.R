women
#predict weight for height = 67.5
fit = lm(weight ~ height, data = women)
fit
summary(fit)
(ndata1 = data.frame(height=c(69.5, 67.5)))
(p1= predict(fit, newdata = ndata1, type='response'))
p1
range(women$height)
cbind(ndata1,p1)
fit = lm(sales = price+promotion, data = omni)
?lm
