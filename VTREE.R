setwd("C:/Users/VEGE/Desktop/sequences")
library(seqinr)
HIV= read.fasta(file = "HIV-1 isolate Uganda.fasta", seqtype= "DNA", forceDNAtolower = TRUE)
HIV
names=getName(HIV)
names
annotation= getAnnot(HIV)
annotation
len_seq=getLength(HIV)
len_seq
count(HIV[[1]],1)
table(HIV)
dinucleotide_count=count(HIV[[1]],2)
print(dinucleotide_count)
trinucleotide_count=count(HIV[[1]],3)
print(trinucleotide_count)
GC_content=GC(HIV[[1]])
print(paste("GC Content =",GC_content))
