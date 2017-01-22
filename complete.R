complete<-function(directory,id=1:332)
{
  if (getwd()!=paste("C:/Users/sk7563/Desktop/R/",directory,sep = ""))
  {
    setwd(paste("C:/Users/sk7563/Desktop/R/",directory,sep = ""))
  }
  id1<-sprintf("%03d",id)
  answer<-data.frame(id=numeric(),nobs=numeric())
  for(i in 1:length(id1))
  {
    dfread<-read.csv(paste(id1[i],".csv",sep=""),header=TRUE,sep=",")
    dfreadnew<-complete.cases(dfread)
    dfreadupd<-dfread[dfreadnew,]
    answer[i,1]<-id[i]
    answer[i,2]<-nrow(dfreadupd)
  }
  answer
}