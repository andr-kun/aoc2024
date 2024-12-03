memory = readLines("input.txt")
sum(sapply(memory, function(row) {
  match = stringr::str_match_all(row, "mul\\(([0-9]{1,3}),([0-9]{1,3})\\)")[[1]][, 2:3]
  sum(as.integer(match[,1]) * as.integer(match[,2]))
}))