locations = read.table("input.txt")
locations = apply(locations, 2, sort)
sum(abs(locations[,2] - locations[,1]))