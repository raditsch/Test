dat = read.csv("M:\\R\\particle_analysis_short.csv", header = FALSE, skip=1, sep = ';',dec=",", row.names=NULL)
typeof(dat)

datsize <- dat[1] 
datxyz <- dat[,c(2,3,4)]

datsize <- datsize * 1000
datxyz <- datxyz * 1.92

length(datNew)

datNew <- cbind(Index = seq.int(nrow(dat)), datxyz, datsize)
#datNew <- cbind(datsize, datxyz)
#options(max.print=1e7)

write.table(datNew,file="M:\\R\\erik2.txt",sep="\t", col.names = FALSE, row.names = FALSE)




