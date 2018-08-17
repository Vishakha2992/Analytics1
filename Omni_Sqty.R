library(gsheet)
url= "https://docs.google.com/spreadsheets/d/1h7HU0X_Q4T5h5D1Q36qoK40Tplz94x_HZYHOJJC_edU/edit#gid=1595306231"
omni3 = as.data.frame(gsheet::gsheet2tbl(url))

omni = omni3
head(omni3)
omni3

mlrmodel1 = lm(sqty~ price+promotion, data= omni)
mlrmodel1
summary(mlrmodel1)
#If the p-value less than 0.5 then we say our model exists 
#74% of dependence on price+promotion for sales qnty
#Both Price and promotion are important
#Homoscedascity
plot(mlrmodel1)
#autocorrelation- todays data is dependent on yesterday's data.If there is auto-correlation then there is no LR
#accept the null hypothesis so that we know we can proceed with lr
#multicolinearity:
#outliers

(ndata1 = data.frame(price=c(60,70), promotion=c(300,400))
range(omni$price);range(omni$promotion)
predict(mlrmodel1,newdata)