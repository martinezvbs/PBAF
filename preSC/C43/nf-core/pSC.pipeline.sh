#!/bin/bash

#SBATCH --job-name=pSC-C43
#SBATCH --partition=ycga_bigmem
#SBATCH --time=1-00:00:00
#SBATCH --cpus-per-task=30
#SBATCH --mem-per-cpu=40000
#SBATCH --mail-type=ALL

# Load modules
module load Nextflow/24.04.4
export NXF_OPTS='-Xms2G -Xmx4G'

# Run the pipeline
nextflow run \
nf-core/rnaseq -r 3.18.0 \
--input /vast/palmer/scratch/augert/jmm453/Computational/RNA-seq/preSC-results/C43/pSC-RNA-seq-Samples.csv \
--outdir /vast/palmer/scratch/augert/jmm453/Computational/RNA-seq/preSC-results/C43 \
--gtf /gpfs/gibbs/project/augert/jmm453/Computational/reference-genomes/mm39/gencode.vM35.annotation.gtf.gz \
--fasta /gpfs/gibbs/project/augert/jmm453/Computational/reference-genomes/mm39/GRCm39.genome.fa.gz \
--gencode \
--genome null \
--seq_center "YCGA" \
--igenomes_ignore true \
--multiqc_title "pSC RNA C43" \
--deseq2_vst FALSE \
--skip_deseq2_qc true \
--extra_star_align_args "--alignIntronMax 1000000 --alignIntronMin 20 --alignMatesGapMax 1000000 --alignSJoverhangMin 8 --outFilterMultimapNmax 20 --outFilterType BySJout --outFilterMismatchNoverLmax 0.1" \
-profile singularity