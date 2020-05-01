#!/usr/bin/env cwl-runner

baseCommand:
- anvi-gen-gene-consensus-sequences
class: CommandLineTool
cwlVersion: v1.0
id: anvi-gen-gene-consensus-sequences
inputs:
- doc: Normally all samples with variation will have their own consensus sequence.
    If this flag is provided, the coverages from each sample of interest will be summed
    and only a single consenus sequence for each gene/contig will be output.
  id: compress_samples
  inputBinding:
    prefix: --compress-samples
  type: boolean
- doc: Anvi'o profile database
  id: profile_db
  inputBinding:
    prefix: --profile-db
  type: string
- doc: Anvi'o contigs database generated by 'anvi-gen- contigs'
  id: contigs_db
  inputBinding:
    prefix: --contigs-db
  type: string
- doc: Gene caller ids. Multiple of them can be declared separated by a delimiter
    (the default is a comma). In anvi-gen-variability-profile, if you declare nothing
    you will get all genes matching your other filtering criteria. In other programs,
    you may get everything, nothing, or an error. It really depends on the situation.
    Fortunately, mistakes are cheap, so it's worth a try.
  id: gene_caller_ids
  inputBinding:
    prefix: --gene-caller-ids
  type: string
- doc: A file with anvi'o gene caller IDs. There should be only one column in the
    file, and each line should correspond to a unique gene caller id (without a column
    header).
  id: genes_of_interest
  inputBinding:
    prefix: --genes-of-interest
  type: File
- doc: A file with samples names. There should be only one column in the file, and
    each line should correspond to a unique sample name (without a column header).
  id: samples_of_interest
  inputBinding:
    prefix: --samples-of-interest
  type: File
- doc: The output file name. The boring default is "genes.fa". You can change the
    output file format to a TAB-delimited file using teh flag `--tab-delimited`, in
    which case please do not forget to change the file name, too.
  id: output_file
  inputBinding:
    prefix: --output-file
  type: File
- doc: Use the TAB-delimited format for the output file.
  id: tab_delimited
  inputBinding:
    prefix: --tab-delimited
  type: boolean
- doc: Variability engine. The default is 'NT'.
  id: engine
  inputBinding:
    prefix: --engine
  type: string
- doc: Use this flag to output consensus sequences of contigs, instead of the default,
    which is genes
  id: contigs_mode
  inputBinding:
    prefix: --contigs-mode
  type: boolean