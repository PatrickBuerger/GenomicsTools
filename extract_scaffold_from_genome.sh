#!/bin/bash

## Input parameters
genome_file="your_genome.fasta"
output_file="your_output.fasta"
scaffold_start="scaffoldXY"
scaffold_end="scaffoldXY+1"

## Awk command to extract a scaffold / contig from a genome fasta file
awk "/>${scaffold_start}/,/>${scaffold_end}/" "${genome_file}" > "${output_file}"

## Example
# awk '/>scaffold295/,/>scaffold296/' ./genome.fasta > scaffold295.fasta


## Alternative command using "seqkit"
## Install: conda install -c bioconda seqkit
## Seqkit website: https://bioinf.shenwei.me/seqkit/
# seqkit grep -p ${scaffold_start} "${genome_file}" > "${output_file}"

