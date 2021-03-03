# 회귀모형의 성능 평가하는 사용자 정의 함수 생성
regMeasure <- function(real, pred) {
  library(MLmetrics)
  result <- data.frame(
    MSE = MSE(y_pred = pred, y_true = real),
    RMSE = RMSE(y_pred = pred, y_true = real),
    MAE = MAE(y_pred = pred, y_true = real),
    MAPE = MAPE(y_pred = pred, y_true = real)
  )
  return(result)
}
