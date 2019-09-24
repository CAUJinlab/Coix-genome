#!/bin/bash
#
#$ -j y
#$ -cwd
#$ -S /bin/bash
#

## get the distance matrix
/NAS7/home/shijunpeng/software/plink-1.07-x86_64/plink --file ../x002.bam_file_list.intervals.VQ50.Coix.maf_0.05.missing_0.5 --maf 0.05 --map3 --noweb --cluster --distance-matrix --out ./x002.bam_file_list.intervals.VQ50.Coix.maf_0.05.missing_0.5

perl ./convert_IBS_distance_matrix_into_phylip_input_format.pl ./x002.bam_file_list.intervals.VQ50.Coix.maf_0.05.missing_0.5.mdist ../x002.bam_file_list.intervals.VQ50.Coix.maf_0.05.missing_0.5.ped >./infile
