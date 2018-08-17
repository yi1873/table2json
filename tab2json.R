args=commandArgs(TRUE)
tab = args[1]
out = args[2]

library(rjson)
library(data.table)

data = fread(tab)
tmp = toJSON(data)
writeLines(tmp,out)
