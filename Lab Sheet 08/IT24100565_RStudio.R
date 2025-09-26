##Exercise
#1).
data<-read.table("Exercise - LaptopsWeights.txt",header=TRUE)
fix(data)
attach(data)

pop_mean <- mean(Weight.kg.) ##population mean
pop_mean
pop_var <- var(Weight.kg.) ##population variance
pop_sd<-sqrt(pop_var) ##population standard deviation
pop_sd

#2).
#sample mean and sample standard deviation of 25 random samples of size 6
sample_means <- numeric(25)
sample_sds <- numeric(25)
for(i in 1:25) {
  s <- sample(Weight.kg., 6, replace = TRUE)
  sample_means[i] <- mean(s)
  sample_sds[i] <- sd(s)
}
sample_means
sample_sds

#3).
# mean and standard deviation of the 25 sample means
mean_sample_means <- mean(sample_means)
sd_sample_means <- sd(sample_means)
mean_sample_means
sd_sample_means
# Mean of the 25 sample means ≈ Population Mean
#SD of the 25 sample means ≈ Population SD / √6