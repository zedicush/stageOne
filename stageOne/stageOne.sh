#!/usr/bin/bash
#18-07-2022
#Mame Seynabou Diop
#First name and last name printed together
firstName="Mame Seynabou"
lastName="Diop"
echo "My name is $firstName $lastName"

#First name and last name printed separatlys
firstName="First Name : Mame Seynabou"
lastName="Last Name: Diop"
echo "$firstName"
echo "$lastName"

# workshop genomic for story one
echo "hello"
echo "this is the steps for story one"
mkdir MameDiop
mkdir MameDiop/biocomputing
wget -P MameDiop/biocomputing https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna 
wget -P MameDiop/biocomputing https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
wget -P MameDiop/biocomputing https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
mv MameDiop/biocomputing/wildtype.fna MameDiop/
rm MameDiop/biocomputing/wildtype.gbk.1
echo "here if i use grep i will find both tatatata and tata and i will not be able to take into acount the starting codon atg so i will use awk"
grep 'tatatata' MameDiop/wildtype.fna
grep 'tata' MameDiop/wildtype.fna
awk '/tatatata*atg/' MameDiop/wildtype.fna
grep 'tatatata' MameDiop/wildtype.fna > MameDiop/mutant.txt
clear
HISTFILE=~/.bash_history
set -o history
history
ls MameDiop
ls MameDiop/biocomputing

# workshop genomic for story two
echo "this is the steps for story two"
mkdir compare
wget -P compare https://www.bioinformatics.babraham.ac.uk/training/Introduction%20to%20Unix/unix_intro_data.tar.gz 
gunzip compare/unix_intro_data.tar.gz 
tar -xf compare/unix_intro_data.tar -C compare/
mv compare/seqmonk_genomes/'Saccharomyces cerevisiae'/ compare/seqmonk_genomes/Saccharomyces_cerevisiae/
cat  compare/seqmonk_genomes/Saccharomyces_cerevisiae/EF4/Mito.dat
cp compare/seqmonk_genomes/Saccharomyces_cerevisiae/EF4/Mito.dat compare/
sed -i "s/Mito/Mitochondrion/" compare/Mito.dat 
mv compare/Mito.dat compare/Mitochondrion.txt
echo "number of lines in one file"
wc -l compare/FastQ_Data/lane8_DD_P4_TTAGGC_L008_R1.fastq.gz
echo "number of lines in all files"
wc -l compare/FastQ_Data/lane8* > compare/FastQ_Data/totalNumbersOfLines.txt
cat compare/FastQ_Data/totalNumbersOfLines.txt
echo "bye bye"
sleep 2 
kill -9 -1
