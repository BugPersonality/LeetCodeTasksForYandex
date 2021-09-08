from math import floor

path = "/Users/danildubov/Swift/LeetCodeTasksForYandex/README.md" 

f = open(path, "r")
lines = f.readlines()

count = 0
count_complete = 0

for line in lines: 
    if "|" in line:
        line_splt = line.split("|")
        status = (line_splt[-3]).strip()
        if status != "**nill**":
            count_complete += 1
        count += 1

precent = floor((count_complete / count) * 100)

f = open(path, "w")

for index in range(len(lines)): 
    if "### Progress" in lines[index]: 
        lines[index] = f"### Progress: {precent}% \n"
        break

f.writelines(lines)