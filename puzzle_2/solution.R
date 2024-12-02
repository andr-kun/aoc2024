reports = readLines("input.txt")
sum(sapply(reports, function(row) {
  row = as.integer(strsplit(row, " ")[[1]])
  difference = row[c(1:length(row)-1)] - row[c(2:length(row))]
  (all(difference < 0) | all(difference > 0)) & all(abs(difference) <= 3 & abs(difference) >= 1)
}))