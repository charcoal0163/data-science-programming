# quiz on Sunday 29 November: chapter 7 (analysis) and chapter 8 (importing)
# midterm until chapter 8 (importing) - tentative

# quiz prep:
# create an excel file, containing three sheets, each sheet has five columns (v 1 - 4, and score)
# import excel file, turn sheets into dataframes ("ali", "amal", "rawan"), and compute scores for each

path = "C:\\Users\\ASU\\Documents\\temporary file (0163)\\data science programming\\statConcepts\\dalbah.xlsx"
ali = read_excel(path, sheet = 1)
amal = read_excel(path, sheet = 2)
rawan = read_excel(path, sheet = 3)

oneAli = sum(ali[1, 1:4])
twoAli = sum(ali[2, 1:4])
threeAli = sum(ali[3, 1:4])
fourAli = sum(ali[4, 1:4])

ali $ score = c(oneAli, twoAli, threeAli, fourAli)

oneAmal = sum(amal[1, 1:4])
twoAmal = sum(amal[2, 1:4])
threeAmal = sum(amal[3, 1:4])

amal $ score = c(oneAmal, twoAmal, threeAmal)

oneR = sum(rawan[1, 1:4])
twoR = sum(rawan[2, 1:4])
threeR = sum(rawan[3, 1:4])
fourR = sum(rawan[4, 1:4])

rawan $ score = c(oneR, twoR, threeR, fourR)

v1 = c(0, 0, 0, 0)
v2 = c(0, 0, 0, 0)
v3 = c(0, 0, 0, 0)
v4 = c(0, 0, 0, 0)
score = c(0, 0, 0, 0)
amal = rbind(amal, c(0, 0, 0, 0, 0))
all = data.frame(v1, v2, v3, v4, score)
for(i in 1:4){
  for(j in 1:4){
    all[i, j] = (ali[i, j] + amal[i, j] + rawan[i, j]) / 3
  }
}
allOne = sum(all[1, 1:4])
allTwo = sum(all[2, 1:4])
allThree = sum(all[3, 1:4])
allFour = sum(all[4, 1:4])

all $ score = c(allOne, allTwo, allThree, allFour)

# end

# statistical concepts!