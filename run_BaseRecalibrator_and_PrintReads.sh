#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#

#java -Xmx30G -jar /NAS7/home/shijunpeng/software/GATK/GenomeAnalysisTK.jar -T BaseRecalibrator -R /NAS6/shijunpeng/Jinlab/liuhongbing/20181224/BJCoxi_reference.V1.fasta -I ./x002.bam_file_list.intervals.bam -knownSites ./samtools_SNPs/x002.bam_file_list.intervals.VQ20.bed -o ./x002.bam_file_list.intervals.baseRec -bqsrBAQGOP 30

java -Xmx20G -jar /NAS7/home/shijunpeng/software/GATK/GenomeAnalysisTK.jar -T PrintReads -R /NAS6/shijunpeng/Jinlab/liuhongbing/20181224/BJCoxi_reference.V1.fasta -I ./x002.bam_file_list.intervals.bam -BQSR ./x002.bam_file_list.intervals.baseRec -o ./x002.bam_file_list.intervals.baseRec.bam
