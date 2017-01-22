pollutantmean<-function(directory, pollutant,id=1:332)
{
  if (getwd()!=paste("C:/Users/sk7563/Desktop/R/",directory,sep = ""))
  {
    setwd(paste("C:/Users/sk7563/Desktop/R/",directory,sep = ""))
  }
  id1<-sprintf("%03d",id)
  df<-read.csv(paste(id1[1],".csv",sep=""),header=TRUE,sep=",")
  if(length(id1)>1)
    {
    for(i in 2:length(id1))
      {
    df1<-read.csv(paste(id1[i],".csv",sep=""),header=TRUE,sep=",")
    df2<-rbind(df,df1)
    df<-df2
      }
    }
  mean(df[,pollutant],na.rm = TRUE)
}
