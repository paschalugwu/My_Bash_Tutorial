#Assigning different variables to my firstname and last name
Firstname="Violet"
Lastname="Nwoke"

#Referencing or printing the variables
echo $Firstname $Lastname

#Creating a folder title my name
mkdir Violet_Nwoke

#Single command to make directory titled biocompute and change to it
mkdircd(){ mkdir "$1" && cd "$1" ; }
mkdircd biocompute

#Downloading three files independently
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk

#Move .fna file to the Violet_Nwoke folder
mv wildtype.fna ../Violet_Nwoke

#Remove duplicate files
rm wildtype.gbk.1

#Search for 'tatatata' pattern within wildtype.fna file and print to a new file
cd ../Violet_Nwoke
grep 'tatatata' wildtype.fna > output.txt

#Clear terminal and print all previous commands used
clear && history

#List all files in folders created
ls
cd ../biocompute
ls

#Return to home directory
cd ~

#Install figlet command
sudo apt-get install figlet

#Use figlet command to graphically represent name
figlet Violet Nwoke
 
#Create a new folder in home dirtectory
mkdir compare 

#Download file into directory titled compare
cd compare
wget https://www.bioinformatics.babraham.ac.uk/training/Introduction%20to%20Unix/unix_intro_data.tar.gz
ls

#Unzip file with gunzip command
gunzip unix_intro_data.tar.gz

#Untar with tar command
tar -xvf unix_intro_data.tar
ls

#Get into seqmonk_genomes/Saccharomyces cerevisiae/EF4
cd seqmonk_genomes
ls
cd 'Saccharomyces cerevisiae'
ls
cd EF4
ls

#Identify the rRNA in Mito.dat
grep 'rRNA' Mito.dat

#copy Mito.dat file into the compare directory
cp Mito.dat ../../../

#Edit Mito.dat with nano 
nano Mito.dat
ctrl+\ to replace EF4:Mito with EF4:Mitochondrion
ctrl+O to save file
ctrl+X to exit nano

#Rename Mito.dat
mv Mito.dat Mitochondrion.txt
ls
