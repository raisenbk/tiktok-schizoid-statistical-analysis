aftertiktok <- c(1,2,1,2,1,1,3,1,2,2,3,1,3,5,2,3,2,2,1,2,3,4,3,1,3,3,2,1,2,2,3,3,2,3,4,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,5,4,3,3,3,3,3,4,4,4,4,5,4,3,3,2,2,2,2,2,2,4,4,4,4,4,4,3,4,4,4,4,4,5,5,5,5,5,3,2,4,4,3,4,3,3,4,4,3,3,3,4,3,4,3,3,2,2,2,2,2,2,3,3,4,3,4,4,3,4,4,4,4,4,2,1,2,3,4,3,3,4,4,5,4,5, 5)
beforetiktok <- c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5)

#Pemusatan, Penyebaran, dan Posisi data
mean(beforetiktok)
median(beforetiktok)
var(beforetiktok)
sd(beforetiktok)
quantile(beforetiktok)
summary(beforetiktok)
IQR(beforetiktok)
modus <- function(x){
  uniqx <- unique(x)
  uniqx[which.max(tabulate(match(x,uniqx)))]
}
modus(beforetiktok)

#Bentuk Data
library(moments)
skewness(beforetiktok)
kurtosis(beforetiktok)

#Asosiasi Data
cor(beforetiktok, aftertiktok)
cov(beforetiktok, aftertiktok)

#Boxplot
boxplot(beforetiktok)

#Dot Plot
dotchart(beforetiktok)

#Histogram
hist(beforetiktok)

#Ogive
ecdf(beforetiktok)
plot(ecdf(beforetiktok), verticals = TRUE)

#Q-Q Plot
qqnorm(beforetiktok)
qqline(beforetiktok)

#Normalitas Shapiro-Wilk
shapiro.test(aftertiktok)

#Inferensi Satu Populasi dengan t-statistic
t.test(aftertiktok, mu=2, conf.level = 0.95, alternative = "g")

#Inferensi Satu Populasi dengan Wilcoxon
wilcox.test(aftertiktok, mu=2, conf.level = 0.95, alternative = "g")

#Inferensi Dua Populasi dengan t-statistic
t.test(aftertiktok, beforetiktok, conf.level = 0.95, mu=2, alternative = "g", paired =  TRUE)

#Regresi Linear
y <- aftertiktok
x <- beforetiktok
linearmod = lm(y~x)
print(linearmod)
summary(linearmod)

#Estimasi dan Prediksi
est <- c(5, 4, 3)
predict(linearmod, data.frame(x=est))

#Daftar Residu
res = resid(linearmod)
print(res)
summary(res)

#Plotting Residu
res <- resid(linearmod)
plot(fitted(linearmod), res)
abline(0, 0)

#Cek Normalitas Residu
qqnorm(res)
qqline(res)
plot(density(res))
shapiro.test(res)

#Chi-Square
skizoidindication <- matrix(c(94, 55), byrow = T, nrow = 2)
colnames(skizoidindication) <- c("Mengindikasikan Skizoid dari Durasi Bermain Tiktok")
rownames(skizoidindication) <- c("Ya", "Tidak")
print(skizoidindication)
chisq.test(skizoidindication)