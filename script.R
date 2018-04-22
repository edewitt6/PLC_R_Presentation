`Pirates` <- read.csv(file = "C:/Users/edewi_000/AppData/Local/Temp/Pirates.csv.utf8", header = TRUE, row.names = NULL, encoding = "UTF-8", sep = ",", dec = ".", quote = "\"", comment.char = "")

Pirates
barchart(summary(Pirates$Country), xlab = "Number of Pirates", ylab = "Countries")
print('Number of pirates per country:', quote = FALSE)
summary(Pirates$Country)
plot(Pirates$Born, Pirates$Died,type = "p" ,xaxs = "r",xlab = "Year Born",ylab = "Year Died",main = "Pirates!", xlim = c(1520,1705),ylim = c(1595,1725))

age <- function() {
    fname <- Pirates$First.Name    
    lname <- Pirates$Last.Name
    ages <- c(1:7)

    for (i in c(1:7)) {
        f <- as.character(fname[i])
        l <- as.character(lname[i])
        a <- as.integer(Pirates$Died[[i]] - Pirates$Born[[i]])
        ages[i]<- a
        print(paste(f, l, " age:", a, sep = " "))
    }
    text(Pirates$Born,Pirates$Died,paste(lname,ages,sep = " age: "),adj = c(.5,-.5))
}

age()