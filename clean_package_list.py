file = open("./release_packages", "r")

packagesList = []

for line in file:
    if line.startswith("Package: ") and not (
        line.replace("Package: ", "") in packagesList
    ):
        packagesList.append(line.replace("Package: ", ""))
        print(line.replace("Package: ", ""))
file.close()

outText = ""
for i in packagesList:
    outText += i

with open("./release_packages_list", "w") as out:
    out.write(outText)
