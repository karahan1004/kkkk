#20210064 최희정
#1주차 과제
#1-1

#1-2

#1-3


#2주차 과제
#2-3
print("hello world!")


#3주차 과제
#3-1-1
10*5*(1/2)

#3-1-2
10*10*3.14

#3-2
install.packages('ggplot2')


#4주차 과제
#4-1
salt <- 50
water <- 100
result <- salt / (salt + water)*100
cat("소금 = ", salt, ", 물 = ", water, ": 농도 = ", result, "%")

#4-2
salt <- 70
water <- 110
result <- salt / (salt+water) * 100
cat("소금 = ", salt, ", 물 = ", water, ": 농도 = ", result, "%")


#5주차 과제
#5-1

#5-2-1
a <- '나의 나이는'
b <- 20
c <- '입니다'
paste(a, b, c, sep= ' ')

#5-2-2
a <- 1:12
b <- '월'
c <- paste(a, b, sep = '')
c


#6주차 과제
#6-1
#2차원 자료

#6-2
#6개의 주제에 대한 자료 정리

#6-3
#직업명은 문자로 되어 있고 종류가 정해져 있으므로 범주형 자료

#6-4
#데이터 과학자


#7주차 과제
#7-1
cafe <- list(espresso = c(4, 5, 3, 6, 5, 4, 7),
             americano = c(63, 68, 64, 68, 72, 89, 94),
             latte = c(61, 70, 59, 71, 71, 92, 88),
             price = c(2.0, 2.5, 3.0),
             menu = c('espresso', 'americano', 'latte'))

#7-2
cafe$menu <- factor(cafe$menu)

#7-3
names(cafe$price) <- cafe$menu

#7-4
sale.espresso <- cafe$price['espresso'] * cafe$espresso
sale.americano <- cafe$price['americano'] * cafe$americano
sale.latte <- cafe$price['latte'] * cafe$latte

#7-5
sale.day <- sale.espresso + sale.americano + sale.latte
names(sale.day) <- c('Mon', "Tue", "Wed", "Thu", "Fri", "Sat", "Sun")
sum(sale.day)
sale.mean <- mean(sale.day)
names(sale.day[sale.day >= sale.mean])


#8차시 과제
#8-2
burger <- matrix(c(514, 917, 11,
                   533, 853, 13,
                   566, 888, 10),
                 nrow = 3,
                 byrow = T)

#8-3
burger
rownames(burger) <- c("M", "L", "B")
colnames(burger) <- c('kcal', 'na', 'fat')
burger

#8-4
burger['M', 'na']
burger['M', ]
burger[, 'kcal']


#9주차 과제
IR.1 <- subset(iris, Species == 'setosa')
IR.1
IR.2 <- subset(iris, Sepal.Length > 5.0  & Sepal.Width > 4.0)
IR.2
IR.2[, c(2, 4)]

a <- matrix(1:20, 4, 5)
b <- matrix(21:40, 4, 5)
a
b

2*a
a+b
a <- a*3
b <- b-5

class(iris)
class(state.x77)
is.matrix(iris)
is.data.frame(iris)
is.matrix(state.x77)
is.data.frame(state.x77)

is.matrix(state.x77)
st <- data.frame(state.x77)
head(st)
class(st)

is.data.frame(iris[, 1:4])
iris.m <- as.matrix(iris[,1:4])
head(iris.m)
class(iris.m)

iris[, "Species"]
iris[, 5]
iris["Species"]
iris[5]
iris$Species


#10주차 과제
#10-1
install.packages('svDialogs')
library(svDialogs)

#10-2
height <- dlgInput('Input height(cm)')$res
weight <- dlgInput('Input weight(kg)')$res

#10-3
height <- as.numeric(height)
weight <- as.numeric(weight)

#10-4
height <- height / 100
bmi <- weight/(height^2)

#10-5
cat('입력한 키는 ', height*100, 'cm, 몸무게는 ', weight, 'kg 입니다. \n', sep = "")
cat('BMI는 ', bmi, '입니다.', sep="")


#11주차
#11-1
library(svDialogs)
height <- dlgInput('Input height (cm) ')$res
weight <- dlgInput('Input weight (kg) ')$res
height <- as.numeric(height)
weight <- as.numeric(weight)
height <- height / 100
bmi <- weight/(height^2)

#11-2
sink('bmi.txt', append = T)
cat(height*100, weight, bmi)
cat('\n')
sink()

#11-3
height <- dlgInput('Input height(cm) ')$res
weight <- dlgInput('Input weight(kg) ')$res
cat('\n')
sink()

#11-4
result <- read.table('bmi.txt', sep = " ")
result

#11-5
names(result) <- c('height', 'weight', 'bmi')
write.table(result, 'bmi_new.txt', row.names = F)


#12주차
#12-1
sub1 <- c(14, 16, 12, 20, 8, 6, 12, 18, 16, 10)
sub2 <- c(18, 14, 14, 16, 10, 12, 10, 20, 14, 14)
sub3 <- c(44, 38, 30, 48, 42, 50, 36, 52, 54, 32)
score <- data.frame(sub1, sub2, sub3)

#12-2
total <- apply(score, 1, sum)
scoreset <- cbind(score, total)

#12-3
result <- c()

#12-4
for(i in 1:nrow(scoreset)){
  if(scsoreset[i, 1] < 20*0.4 | scoreset[i, 2] < 20*0.4|
     scoreset[i, 3] < 60*0.4){
    result[i] <- '불합격'
  }else if(scoreset[i, 4] >= 60){
    result[i] <- '합격'
  }else{
    result[i] <- '불합격'
  }
  cat(i, '번째 응시생은', result[i], '입니다.\n')}


#13주차
#13-1
datermine <- function(score){}

#13-2
detamine <- function(score){
  total <- apply(score, 1, sum)
  scoreset < - cbind(score, total)
  result <- c()
  
  for(i in 1:nrow(scoreset)){
    if(scoreset[i,1] < 20*0.4 | scoreset[i, 2]< 20*0.4|
       scoreset[i, 3] < 60*0.4){
      result[i] <- '불합격'
    }else if(scoreset[i, 4] >= 60){
      result[i] <- '합격'
    }else{
      result[i] <- '불합격'
    }
    cat(i, '번째 응시생은', result[i], '입니다.\n')
  }
  result(result)
}

#13-3
