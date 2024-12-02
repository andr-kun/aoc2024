locations = read.table("input.txt")
frequency = table(locations[,2])
locations[,2] = frequency[as.character(locations[,1])]
sum(locations[,1]*locations[,2], na.rm=T)