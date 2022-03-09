# !/bin/bash

mkdir -p _tmp
mkdir -p dataset
mkdir -p analysis

for filename in data/gam_g3_pooled/*.vcf;
do
    echo $filename
    bgzip -c $filename > $filename.gz
    tabix -p vcf $filename.gz
done

for filename in data/ara_small/*.vcf;
do
    echo $filename
    bgzip -c $filename > $filename.gz
    tabix -p vcf $filename.gz
done

for filename in data/hyb_rnaseq/*.vcf;
do
    echo $filename
    bgzip -c $filename > $filename.gz
    tabix -p vcf $filename.gz
done