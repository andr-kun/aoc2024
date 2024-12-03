import re

sum = 0
enabled = True
with open("input.txt") as f:
    for line in f:
        line = line.strip()
        print(re.split("(don't\\(\\)|do\\(\\))", line))
        for element in re.split("(don't\\(\\)|do\\(\\))", line):
            if element == "don't()":
                enabled = False
            elif element == "do()":
                enabled = True
            elif enabled:
                print(element)
                for match in re.findall("mul\\(([0-9]{1,3}),([0-9]{1,3})\\)", element):
                    sum += int(match[0]) * int(match[1])

print(sum)