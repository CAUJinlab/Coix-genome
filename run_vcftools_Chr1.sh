#!/bin/bash
#$ -cwd
#$ -j y
#$ -S /bin/bash
#

/NAS7/home/shijunpeng/software/vcftools/bin/bin/vcftools --gzvcf ../Chr1.x002.bam_file_list.intervals.baseRec.bam.vcf.gz --out ./Chr1.x002.bam_file_list.intervals.baseRec.bam.vcf --remove ./remove_list --site-pi 
/NAS7/home/shijunpeng/software/vcftools/bin/bin/vcftools --gzvcf ../Chr1.x002.bam_file_list.intervals.baseRec.bam.vcf.gz --out ./Chr1.x002.bam_file_list.intervals.baseRec.bam.vcf.subpop1 --keep ./subpop1 --site-pi
/NAS7/home/shijunpeng/software/vcftools/bin/bin/vcftools --gzvcf ../Chr1.x002.bam_file_list.intervals.baseRec.bam.vcf.gz --out ./Chr1.x002.bam_file_list.intervals.baseRec.bam.vcf.subpop2 --keep ./subpop2 --site-pi
/NAS7/home/shijunpeng/software/vcftools/bin/bin/vcftools --gzvcf ../Chr1.x002.bam_file_list.intervals.baseRec.bam.vcf.gz --out ./Chr1.x002.bam_file_list.intervals.baseRec.bam.vcf.subpop1_subpop2 --weir-fst-pop ./subpop1 --weir-fst-pop ./subpop2 
