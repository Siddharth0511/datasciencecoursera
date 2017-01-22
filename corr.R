corr<-function(directory,threshold=0)
{
  if (getwd()!=paste("C:/Users/sk7563/Desktop/R/",directory,sep = ""))
  {
    setwd(paste("C:/Users/sk7563/Desktop/R/",directory,sep = ""))
  }
  name<-list.files(getwd())
  j<-1
  vec<-numeric()
  for(i in 1:length(name))
    {
    df<-read.csv(name[i],header=TRUE,sep=",")
    dfcomp<-complete.cases(df)
    dfread<-df[dfcomp,]
    if(nrow(dfread)>threshold)
      {
      sulfate<-dfread$sulfate
      nitrate<-dfread$nitrate
      vec[j]<-cor(sulfate,nitrate)
      j<-j+1
      }
    } 
  vec
}