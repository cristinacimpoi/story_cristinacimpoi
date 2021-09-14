df2 = df[,c(60:179, 210:329) ]
df=fread("/RStudio/data_project_733372_2021_03_16CompleteAndIncomplete.csv")
library(data.table)
library(dplyr)
df=fread("/RStudio/data_project_733372_2021_03_16CompleteAndIncomplete.csv")
df
unique(df$lfdn) #Get all unique values of the lfdn column
uniqueN(df$lfdn) #Get number of all unique values of the lfdn column
colnames(df)
df$group = ifelse(df$CreativityControlQ1_1 == "-66",1,0)
df
df2 = df[,c(60:179, 210:329) ]
df2[df2 == "-66" |  df2 == "-99"] = 0
df2[df2 != "0"] = 1
df2
df2 %>%
mutate_if(is.character,as.numeric)->df3
df3$sumExp1 = rowSums(df3[, 1:20])
df3$sumExp2 = rowSums(df3[, 21:40])
df3$sumExp3 = rowSums(df3[, 41:60])
df3$sumExp4 = rowSums(df3[, 61:80])
df3$sumExp5 = rowSums(df3[, 81:100])
df3$sumExp6 = rowSums(df3[, 101:120])
df3$meanExp = rowMeans(df3[, 241:246])
df3[, 241:247]
df3$sumContr1 = rowSums(df3[, 121:140])
df3$sumContr2 = rowSums(df3[, 141:160])
df3$sumContr3 = rowSums(df3[, 161:180])
df3$sumContr4 = rowSums(df3[, 181:200])
df3$sumContr5 = rowSums(df3[, 201:220])
df3$sumContr6 = rowSums(df3[, 221:240])
df3$meanContr = rowMeans(df3[, 248:253])
df3[, 248:254]
df4= cbind(df3$meanContr,df3$meanExp,df2)
df4
df5 = na.omit(df4)
df5
library(data.table)
library(dplyr)
df=fread("/RStudio/data_project_733372_2021_03_16CompleteAndIncomplete.csv")
df
unique(df$lfdn) #Get all unique values of the lfdn column
uniqueN(df$lfdn) #Get number of all unique values of the lfdn column
colnames(df)
df$group = ifelse(df$CreativityControlQ1_1 == "-66",1,0)
df
df2 = df[,c(60:179, 210:329) ]
df2[df2 == "-66" |  df2 == "-99"] = 0
df2[df2 != "0"] = 1
df2
df2 %>%
mutate_if(is.character,as.numeric)->df3
df3$sumExp1 = rowSums(df3[, 1:20])
df3$sumExp2 = rowSums(df3[, 21:40])
df3$sumExp3 = rowSums(df3[, 41:60])
df3$sumExp4 = rowSums(df3[, 61:80])
df3$sumExp5 = rowSums(df3[, 81:100])
df3$sumExp6 = rowSums(df3[, 101:120])
df3$meanExp = rowMeans(df3[, 241:246])
df3[, 241:247]
df3$sumContr1 = rowSums(df3[, 121:140])
df3$sumContr2 = rowSums(df3[, 141:160])
df3$sumContr3 = rowSums(df3[, 161:180])
df3$sumContr4 = rowSums(df3[, 181:200])
df3$sumContr5 = rowSums(df3[, 201:220])
df3$sumContr6 = rowSums(df3[, 221:240])
df3$meanContr = rowMeans(df3[, 248:253])
df3[, 248:254]
df4= cbind(df3$meanContr,df3$meanExp,df2)
df4
df5 = na.omit(df4)
df5
df6 = subset(df5,select = -V1)
df6
rowSums(df[, c("CreativityExpQ1_1","CreativityExpQ1_2", "CreativityExpQ1_3", "CreativityExpQ1_4", "CreativityExpQ1_5", "CreativityExpQ1_6", "CreativityExpQ1_7", "CreativityExpQ1_8",
"CreativityExpQ1_9", "CreativityExpQ1_10", "CreativityExpQ1_11", "CreativityExpQ1_12", "CreativityExpQ1_13", "CreativityExpQ1_14", "CreativityExpQ1_15", "CreativityExpQ1_16", "CreativityExpQ1_17", "CreativityExpQ1_18", "CreativityExpQ1_19", "CreativityExpQ1")])
library(data.table)
library(dplyr)
df=fread("/RStudio/data_project_733372_2021_03_16CompleteAndIncomplete.csv")
df
unique(df$lfdn) #Get all unique values of the lfdn column
uniqueN(df$lfdn) #Get number of all unique values of the lfdn column
colnames(df)
df$group = ifelse(df$CreativityControlQ1_1 == "-66",1,0)
df
df2 = df[,c(60:179, 210:329) ]
df2[df2 == "-66" |  df2 == "-99"] = 0
df2[df2 != "0"] = 1
df2
df2 %>%
mutate_if(is.character,as.numeric)->df3
df3$sumExp1 = rowSums(df3[, 1:20])
df3$sumExp2 = rowSums(df3[, 21:40])
df3$sumExp3 = rowSums(df3[, 41:60])
df3$sumExp4 = rowSums(df3[, 61:80])
df3$sumExp5 = rowSums(df3[, 81:100])
df3$sumExp6 = rowSums(df3[, 101:120])
df3$meanExp = rowMeans(df3[, 241:246])
df3[, 241:247]
df3$sumContr1 = rowSums(df3[, 121:140])
df3$sumContr2 = rowSums(df3[, 141:160])
df3$sumContr3 = rowSums(df3[, 161:180])
df3$sumContr4 = rowSums(df3[, 181:200])
df3$sumContr5 = rowSums(df3[, 201:220])
df3$sumContr6 = rowSums(df3[, 221:240])
df3$meanContr = rowMeans(df3[, 248:253])
df3[, 248:254]
df4= cbind(df3$meanContr,df3$meanExp,df2)
df4
df5 = na.omit(df4)
df5
df6 = subset(df5,select = -V1)
df6
rowSums(df[, c("CreativityExpQ1_1","CreativityExpQ1_2", "CreativityExpQ1_3", "CreativityExpQ1_4", "CreativityExpQ1_5", "CreativityExpQ1_6", "CreativityExpQ1_7", "CreativityExpQ1_8",
"CreativityExpQ1_9", "CreativityExpQ1_10", "CreativityExpQ1_11", "CreativityExpQ1_12", "CreativityExpQ1_13", "CreativityExpQ1_14", "CreativityExpQ1_15", "CreativityExpQ1_16", "CreativityExpQ1_17", "CreativityExpQ1_18", "CreativityExpQ1_19", "CreativityExpQ1")])
library(data.table)
library(dplyr)
df=fread("/RStudio/data_project_733372_2021_03_16CompleteAndIncomplete.csv")
df
unique(df$lfdn) #Get all unique values of the lfdn column
uniqueN(df$lfdn) #Get number of all unique values of the lfdn column
colnames(df)
df$group = ifelse(df$CreativityControlQ1_1 == "-66",1,0)
df
df2 = df[,c(60:179, 210:329) ]
df2[df2 == "-66" |  df2 == "-99"] = 0
df2[df2 != "0"] = 1
df2
df2 %>%
mutate_if(is.character,as.numeric)->df3
df3$sumExp1 = rowSums(df3[, 1:20])
df3$sumExp2 = rowSums(df3[, 21:40])
df3$sumExp3 = rowSums(df3[, 41:60])
df3$sumExp4 = rowSums(df3[, 61:80])
df3$sumExp5 = rowSums(df3[, 81:100])
df3$sumExp6 = rowSums(df3[, 101:120])
df3$meanExp = rowMeans(df3[, 241:246])
df3[, 241:247]
df3$sumContr1 = rowSums(df3[, 121:140])
df3$sumContr2 = rowSums(df3[, 141:160])
df3$sumContr3 = rowSums(df3[, 161:180])
df3$sumContr4 = rowSums(df3[, 181:200])
df3$sumContr5 = rowSums(df3[, 201:220])
df3$sumContr6 = rowSums(df3[, 221:240])
df3$meanContr = rowMeans(df3[, 248:253])
df3[, 248:254]
df4= cbind(df3$meanContr,df3$meanExp,df2)
df4
df5 = na.omit(df4)
df5
df6 = subset(df5,select = -V1)
df6
rowSums(df[, c("CreativityExpQ1_1","CreativityExpQ1_2", "CreativityExpQ1_3", "CreativityExpQ1_4", "CreativityExpQ1_5", "CreativityExpQ1_6", "CreativityExpQ1_7", "CreativityExpQ1_8",
"CreativityExpQ1_9", "CreativityExpQ1_10", "CreativityExpQ1_11", "CreativityExpQ1_12", "CreativityExpQ1_13", "CreativityExpQ1_14", "CreativityExpQ1_15", "CreativityExpQ1_16", "CreativityExpQ1_17", "CreativityExpQ1_18", "CreativityExpQ1_19", "CreativityExpQ1")])
#df6 = subset(df5,select = -V1)
df6 = select(df5, starts_with("V1"))
df6
#df6 = subset(df5,select = -V1)
df6 = select(df5, starts_with("V1"))
df6
#df6 = subset(df5,select = -V1)
df6 = select(df5, contains("V1"))
df6
#df6 = subset(df5,select = -V1)
df6 = select(df5, contains("Age"))
df6
#df6 = subset(df5,select = -V1)
df6 = select(df5, starts_with("Age"))
df6
#df6 = subset(df5,select = -V1)
df6 = select(df5, starts_with("V1"))
df6
Multilevel_Daten <- readRDS("D:/Basel Uni/Bachelor/Third Year/Spring/Forschungsmethoden und Statistik IV/Daten und R-Skript/Multilevel_Daten.RDS")
mod.B2 <- lme(fixed = read_prof ~ 1 + IQ_verb, data = df,
random= ~ 1 + IQ_verb | schoolnr, method = "ML")
lme help
help(lme)
??lme
mod.B2 <- nlme(fixed = read_prof ~ 1 + IQ_verb, data = df,
random= ~ 1 + IQ_verb | schoolnr, method = "ML")
install(nlme)
instal(nlme)
install.packages(nlme)
install.packages(nlme )
library(nlme, lib.loc = "C:/Program Files/R/R-4.0.4/library")
install.packages(nlme )
library(nlme, lib.loc = "C:/Program Files/R/R-4.0.4/library")
mod.B2 <- nlme(fixed = read_prof ~ 1 + IQ_verb, data = df,
random= ~ 1 + IQ_verb | schoolnr, method = "ML")
mod.B2 <- nlme(model, fixed = read_prof ~ 1 + IQ_verb, data = df,
mod.B2 <- nlme(model, fixed = read_prof ~ 1 + IQ_verb, data = df,
exit
Multilevel_Daten <- readRDS("D:/Basel Uni/Bachelor/Third Year/Spring/Forschungsmethoden und Statistik IV/Daten und R-Skript/Multilevel_Daten.RDS")
Multilevel_Daten <- readRDS("D:/Basel Uni/Bachelor/Third Year/Spring/Forschungsmethoden und Statistik IV/Daten und R-Skript/Multilevel_Daten.RDS")
Multilevel_Daten
mod.B2 <- lme(fixed = read_prof ~ 1 + IQ_verb, data = df,
random= ~ 1 + IQ_verb | schoolnr, method = "ML")
library(nlme, lib.loc = "C:/Program Files/R/R-4.0.4/library")
mod.B2 <- nlme(fixed = read_prof ~ 1 + IQ_verb, data = df,
random= ~ 1 + IQ_verb | schoolnr, method = "ML")
mod.B2 <- lme(model, fixed = read_prof ~ 1 + IQ_verb, data = df,
random= ~ 1 + IQ_verb | schoolnr, method = "ML")
mod.B2 <- nlme(model,fixed = read_prof ~ 1 + IQ_verb, data = df,
random= ~ 1 + IQ_verb | schoolnr, method = "ML")
mod.B2 <- nlme(Multilevel_Daten,fixed = read_prof ~ 1 + IQ_verb, data = df,
random= ~ 1 + IQ_verb | schoolnr, method = "ML")
mod.B2 <- lme(fixed = read_prof ~ 1 + IQ_verb, data = df,
random= ~ 1 + IQ_verb | schoolnr, method = "ML")
mod <- lme(fixed = y ~ 1 + x1, random = 1 + x1 | id, data = df)
summary(mod)
mod <- lme(fixed = y ~ 1 + x1, random = 1 + x1 | id, data = df)
save.image("C:\\Users\\beautiful sky\\Documents\\preprocessing.R")
