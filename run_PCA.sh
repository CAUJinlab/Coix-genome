#!/bin/bash
#
#$ -j y
#$ -cwd
#$ -S /bin/bash
#

## convert the ped and map format to binary format which will facilitate the processing speed
/NAS7/home/shijunpeng/software/plink-1.07-x86_64/plink --file ../x002.bam_file_list.intervals.VQ50.maf_0.05.missing_0.5 --map3 --make-bed --noweb --out ../x002.bam_file_list.intervals.VQ50.maf_0.05.missing_0.5

## Estimate the genetic relationship matrix (GRM) between pairs of individuals from a set of SNPs and save the lower triangle elements of the GRM to binary files
/NAS7/home/shijunpeng/software/GCTA/gcta64 --bfile ../x002.bam_file_list.intervals.VQ50.maf_0.05.missing_0.5 --make-grm --out ./x002.bam_file_list.intervals.VQ50.maf_0.05.missing_0.5

## Input the GRM and output the first n (n = 50, default 20) eigenvalues (saved as *.eigenval, plain text file) and eigenvectors (saved as *.eigenvec, plain text file)
/NAS7/home/shijunpeng/software/GCTA/gcta64 --grm ./x002.bam_file_list.intervals.VQ50.maf_0.05.missing_0.5 --pca 20 --out ./x002.bam_file_list.intervals.VQ50.maf_0.05.missing_0.5
