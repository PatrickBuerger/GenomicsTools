#!/bin/bash

# Input parameters
genome_file="your_genome.fasta"
output_file="your_output.fasta"
scaffold_start="scaffoldXY"
scaffold_end="scaffoldXY+1"

# Awk command to extract the specified sequence range
awk "/>${scaffold_start}/,/>${scaffold_end}/" "${genome_file}" > "${output_file}"

# Example
awk '/>scaffold295/,/>scaffold296/' ./genome.fasta > scaffold295.fasta
