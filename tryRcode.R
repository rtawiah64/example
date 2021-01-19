df <-
  structure(
    list(
      id = c(1L, 2L, 3L, 4L,5L),
      date1 = c("1/4/2004", "3/11/2004", "NA", "13/10/2004","11/3/2003"),
      date2 = c("8/6/2002", "11/5/2004", "3/5/2004", "25/11/2004","21/1/2004"),
      s1=c(1,2,1,"NA","NA"),
      date3=c("NA", "NA", "18/2/2006", "NA","NA"),
      s2=c("NA","NA",2,"NA","NA")
    ),
    .Names = c("id", "date1","date2","s1","date3","s2"),
    class = "data.frame",
    row.names = c(NA,-5L),
    col_types = c("numeric", "date","date","numeric","date","numeric")
  )
df

library(dplyr)
d<-rep(3,length(df))
#mutate(
#df<-df %>% 
#  group_by(id) %>%
#ifelse((date1!=NA & s1=="NA"),d,s1))%>%
#df

df$x1<-ifelse(!is.na(df$date1) & (df$s1=="NA"),d,df$s1)
df$x2<-ifelse(!is.na(df$date1) & (df$s2=="NA"),d,df$s2)
  df
  
  
  df<-df %>% 
    mutate_at(vars(starts_with("s"))%>%
      mutate(s=ifelse(!is.na(date1) & (s=="NA"),d,s))
df              

