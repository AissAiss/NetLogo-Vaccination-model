library(readr)

noVacc365_R <- read_delim("Documents/Workspace/NetLogo/NetLogo-Vaccination-model/Data/noVacc365-R.csv", 
                          delim = ";", escape_double = FALSE, trim_ws = TRUE)

vacc_60_365_R <- read_csv("Documents/Workspace/NetLogo/NetLogo-Vaccination-model/Data/vacc-60-365-R.csv")
vacc_70_365_R <- read_csv("Documents/Workspace/NetLogo/NetLogo-Vaccination-model/Data/vacc-70-365-R.csv")
vacc_80_365_R <- read_csv("Documents/Workspace/NetLogo/NetLogo-Vaccination-model/Data/vacc-80-365-R.csv")
vacc_90_365_R <- read_csv("Documents/Workspace/NetLogo/NetLogo-Vaccination-model/Data/vacc-90-365-R.csv")


x<-c(1:360)

sick<- noVacc365_R$Sick
healthy<-noVacc365_R$Healthy
# Resize
sick<-sick[1:360]
vaccinated<-vaccinated[1:360]
healthy<-healthy[1:360]


plot(x, sick, type = "l", col = "red", xlim = c(0,360), ylim = c(0, 300), axes = FALSE, xlab = "", ylab = "")
axis(1, at = seq(0, 360, by = 30 ))
axis(2, at = seq(0, 300, by = 50))
lines(x, healthy, type = "l", col = "green")

legend(285, 280, legend=c("Sick", "Healthy"),
       col=c("red", "green"), lty=1, cex=0.8)






## Vaccinated 60 ## 
sick<- vacc_60_365_R$Sick
healthy<-vacc_60_365_R$Healthy
vaccinated<-vacc_60_365_R$Vaccinated

## Vaccinated 70 ## 
sick<- vacc_70_365_R$Sick
healthy<-vacc_70_365_R$Healthy
vaccinated<-vacc_70_365_R$Vaccinated

## Vaccinated 80 ## 
sick<- vacc_80_365_R$Sick
healthy<-vacc_80_365_R$Healthy
vaccinated<-vacc_80_365_R$Vaccinated

## Vaccinated 90 ## 
sick<- vacc_90_365_R$Sick
healthy<-vacc_90_365_R$Healthy
vaccinated<-vacc_90_365_R$Vaccinated

# PLOT #
sick<-sick[1:360]
vaccinated<-vaccinated[1:360]
healthy<-healthy[1:360]


par(mar=c(5.1, 4.1, 4.1, 10), xpd=TRUE)
plot(x, sick, 
     type = "l", col = "red", 
     xlim = c(0,360), ylim = c(0, 300), 
     axes = FALSE, 
     xlab = "Days", ylab = "People",
     main = "60% fully vaccinated people") 

axis(1, at = seq(0, 360, by = 30 ))
axis(2, at = seq(0, 300, by = 50))
lines(x, healthy, type = "l", col = "green")
lines(x, vaccinated, type = "l", col = "blue")
legend("topright", inset=c(-0.2,0),  legend=c("Sick", "Healthy", "Vaccinated"),
       col=c("red", "green", "blue"), lty=1, cex=0.9)


