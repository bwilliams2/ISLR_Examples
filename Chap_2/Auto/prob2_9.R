#load auto data
auto <- read.csv('Auto.data',sep='')


qualt = c('origin','name','year')

quant = setdiff(colnames(auto),qualt)

auto$horsepower <- suppressWarnings(as.numeric(as.character(auto$horsepower)))

#Part b,c
quantProps <- data.frame(matrix(ncol=length(quant),nrow=4))
colnames(quantProps) <- quant
for (column in colnames(quantProps)){
  quantProps[1:2,column] = range(auto[,column],na.rm=TRUE)
  quantProps[3,column] = mean(auto[,column],na.rm=TRUE)
  quantProps[4,column] = sd(auto[,column],na.rm=TRUE)
}
rownames(quantProps) <- c('Low','High','Mean','Std.Dev')

#Part d,e
autoLimited = auto[-seq(10,85),]
quantPropsD <- data.frame(matrix(ncol=length(quant),nrow=4))
colnames(quantPropsD) <- quant
for (column in colnames(quantPropsD)){
  quantPropsD[1:2,column] = range(auto[,column],na.rm=TRUE)
  quantPropsD[3,column] = mean(auto[,column],na.rm=TRUE)
  quantPropsD[4,column] = sd(auto[,column],na.rm=TRUE)
}
rownames(quantPropsD) <- c('Low','High','Mean','Std.Dev')
