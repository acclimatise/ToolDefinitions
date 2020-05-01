#!/usr/bin/env cwl-runner

baseCommand:
- ChorusNGSfilter
class: CommandLineTool
cwlVersion: v1.0
id: chorusngsfilter
inputs:
- doc: The path where Jellyfish software installed
  id: jellyfish
  inputBinding:
    prefix: --jellyfish
  type: string
- doc: Fasta format genome file, should include all sequences from genome
  id: genome
  inputBinding:
    prefix: --genome
  type: string
- doc: 'Fastq format input files contain reads from whole genome shotgun sequencing,
    files can be gzipped. Multiple files separate with ",". For example: 1.fq.gz,2.fq.gz'
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: 'Input fastq file is gzipped(gz) or uncompressed(text). (Default: gz)'
  id: gzipped
  inputBinding:
    prefix: --gzipped
  type: string
- doc: 'Number of threads or CPUs to use. (Default: 1)'
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: 'Length of k-mer used for counting k-mers in input fastq files. (Default: 17)'
  id: km_er
  inputBinding:
    prefix: --kmer
  type: string
- doc: The bed format probe file generated by Chorus
  id: probe
  inputBinding:
    prefix: --probe
  type: string
- doc: 'Output bed format probe file with k-mer score. (Default: output.bed)'
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: /opt/software/jellyfish/bin/jellyfish -p probe.bed -o output.bed
  id: j
  inputBinding:
    prefix: -j
  type: boolean