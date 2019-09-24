#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#

############# modified in 20190110 to call SNPs for new pseudomolecules

samtools mpileup -E -C50 -Q20 -q20 -DSuf /NAS6/shijunpeng/Jinlab/liuhongbing/20181224/BJCoxi_reference.V1.fasta ../x002.bam_file_list.intervals.bam | /NAS7/soft/samtools-0.1.19/bcftools/bcftools view -Nbcvg - >./x002.bam_file_list.intervals.bcf
