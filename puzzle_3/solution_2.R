memory = Reduce(paste0, readLines("input.txt"))
valid_instruction = stringr::str_extract_all(paste0("do()",memory,"don't()"), "do\\(\\)(.*?)don't\\(\\)")[[1]]
sum(sapply(valid_instruction, function(instruction) {
    match = stringr::str_match_all(instruction, "mul\\(([0-9]{1,3}),([0-9]{1,3})\\)")[[1]][, 2:3]
    match = matrix(match, ncol=2)
    sum(as.integer(match[,1]) * as.integer(match[,2]))
  }))