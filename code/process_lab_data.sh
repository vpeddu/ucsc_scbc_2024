#!/usr/bin/env bash
# process_lab_data.sh
# rreggiar@ucsc.edu
# 2022-07-19

# check for help flag in position $1 
if [ $1 = '-h' ]; then
    echo "$(basename $0)" # print script name
    echo "commands: gene_proc = FALSE patient_proc = FALSE"
    echo "for more help, email Roman at rreggiar <at> ucsc.edu"
    exit # exit script
fi

# defining variables as paths to input and output
echo "initializing gene and patient databases..."

gene_db="/home/jovyan/SCBC_2022_dir/data/gene_panel_database.fa"

gene_out="/home/jovyan/SCBC_2022_dir/data/final_gene_panel.csv"

patient_db="/home/jovyan/SCBC_2022_dir/data/patient_database"

# output file within patient_db dir
patient_out=$patient_db/"patient_data.csv"

# cmd-line arguments
proc_gene=${1:-"FALSE"}
proc_patients=${2:-"FALSE"}

# printing paths and contents of variables defined above
echo -e "gene database: " $gene_db "\n" # -e enables parsing of regex, using for \n newline
echo -e "patient database: " $patient_db "\n"
echo -e "patient database contents: " $(ls $patient_db) "\n"

### gene DB
if [ $proc_gene = "TRUE" ]; then
    echo "writing gene panel database to: " $gene_out

    echo "gene,chromosome,start,stop,strand" > $gene_out # printing column names

    # for gene in list, grep gene out of gene_db, remove '>', and append to gene_out
    for gene in EGFR KRAS TP53; do grep $gene $gene_db | cut -d'>' -f2 >> $gene_out; done
fi

### patient DB
if [ $proc_patients = "TRUE" ]; then
    echo "writing patient database to: " $patient_out

    echo "patient_id,gene,age,sex" > $patient_out ## printing column names, multiple ways to do this....

    # print all lines from files starting with [1-9], remove lines with 'patient', append to patient_out
    cat $patient_db/[1-9]_* | grep -v 'patient' >> $patient_out
fi
