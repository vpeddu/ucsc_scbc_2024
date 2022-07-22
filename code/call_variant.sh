#!/usr/bin/env bash
# call_variant.sh
# rreggiar@ucsc.edu
# 2022-07-21

# path to reference genome
ref_fa="/home/jovyan/SCBC_2022_dir/data/reference/GCA_000001405.15_GRCh38_no_alt_analysis_set.fna"

# how can we get the gene name from the user?
gene="TP53"
gene_panel_db="/home/jovyan/SCBC_2022_dir/data/final_gene_panel.csv"

# if we know the gene, how can get the following:
chr=$(grep $gene $gene_panel_db | cut -d, -f2)
start=$(grep $gene $gene_panel_db | cut -d, -f3)
stop=$(grep $gene $gene_panel_db | cut -d, -f4)
# ?

echo $chr":"$start"-"$stop

# how to handle input .bam files?
input_bam_path="/home/jovyan/SCBC_2022_dir/data/sample_data/panc_bams/panc.2.2.7_Aligned.sortedByCoord.out.bam"
# two options:
# 1. make a command line argument to take in .bam file path from user
# 2. use a for loop to run freebayes on each .bam file in the directory every time

./freebayes-1.3.6-linux-amd64-static -f $ref_fa -r $chr:$start-$stop -b $input_bam_path
