#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#

/NAS7/home/shijunpeng/software/admixture_linux-1.3.0/admixture --cv=10 ../x002.bam_file_list.intervals.VQ50.maf_0.05.missing_0.5.bed 2 | tee K2.output

/NAS7/home/shijunpeng/software/admixture_linux-1.3.0/admixture --cv=10 ../x002.bam_file_list.intervals.VQ50.maf_0.05.missing_0.5.bed 3 | tee K3.output

/NAS7/home/shijunpeng/software/admixture_linux-1.3.0/admixture --cv=10 ../x002.bam_file_list.intervals.VQ50.maf_0.05.missing_0.5.bed 4 | tee K4.output

/NAS7/home/shijunpeng/software/admixture_linux-1.3.0/admixture --cv=10 ../x002.bam_file_list.intervals.VQ50.maf_0.05.missing_0.5.bed 5 | tee K5.output

/NAS7/home/shijunpeng/software/admixture_linux-1.3.0/admixture --cv=10 ../x002.bam_file_list.intervals.VQ50.maf_0.05.missing_0.5.bed 6 | tee K6.output
