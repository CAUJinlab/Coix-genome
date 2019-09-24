#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#

########### this script was used to call the SNPs and Indels in Coix
######### modified in 2019/02/15 to check whether the gzip option is OK
java -Xmx20G -jar /NAS7/home/shijunpeng/software/GATK/GenomeAnalysisTK.jar -T UnifiedGenotyper -R /NAS6/shijunpeng/Jinlab/liuhongbing/20181224/BJCoxi_reference.V1.fasta -I ./x002.bam_file_list.intervals.baseRec.bam -A AlleleBalance -stand_call_conf 4.0 -stand_emit_conf 4.0 -mbq 20 -out_mode EMIT_ALL_CONFIDENT_SITES -glm BOTH -o ./x002.bam_file_list.intervals.baseRec.bam.vcf
