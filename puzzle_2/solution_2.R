reports = readLines("input.txt")
sum(sapply(reports, function(row) {
  row = as.integer(strsplit(row, " ")[[1]])
  any(sapply(1:length(row), function(i) {
    new_row = row[-c(i)]
    difference = new_row[c(1:length(new_row)-1)] - new_row[c(2:length(new_row))]
    (all(difference < 0) | all(difference > 0)) & all(abs(difference) <= 3 & abs(difference) >= 1)
  }))
}))