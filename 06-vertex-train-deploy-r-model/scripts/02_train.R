# 02_train.R --------------------------------------------------------------

library(here)

# train model
model <- randomForest(Species ~ ., data = iris)

# save model
save(model, file = "./build/model.RData")

# upload to cloud storage 
# TODO @justinjm - 
