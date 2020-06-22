library(webshot)

install_phantomjs(force = TRUE)
setwd("/tmp") # 不能再根目录下
webshot::webshot("REmapinRmd.html", "REmapinRmd.png", delay = 4)
library(rmarkdown)

rmarkdown::render('/rmd_pdf_cn.Rmd')


pdf("rplot_cn.pdf") 
# 2. Create a plot
plot(x = iris$Sepal.Length, y = iris$Petal.Width,
     pch = 16, frame = FALSE,
     xlab = "wt", ylab = "mpg", col = "#2E9FDF",
     main="中文标题显示")
# Close the pdf file
dev.off() 


png("rplot_cn.png") 
# 2. Create a plot
plot(x = iris$Sepal.Length, y = iris$Petal.Width,
     pch = 16, frame = FALSE,
     xlab = "wt", ylab = "mpg", col = "#2E9FDF",
     main="中文标题显示")
# Close the pdf file
dev.off() 


library(ggplot2)

p1 <- ggplot(iris) +
  geom_point(aes(Sepal.Length, Petal.Width)) +
  ggtitle("中文标题显示")
ggsave("rgg_cn.png", p1)
ggsave("rgg_cn.pdf", p1)
