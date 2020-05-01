#!/usr/bin/env cwl-runner

baseCommand:
- anvi-get-aa-counts
class: CommandLineTool
cwlVersion: v1.0
id: anvi-get-aa-counts
inputs:
- doc: Anvi'o contigs database generated by 'anvi-gen- contigs'
  id: contigs_db
  inputBinding:
    prefix: --contigs-db
  type: string
- doc: File path to store results.
  id: output_file
  inputBinding:
    prefix: --output-file
  type: File
- doc: Anvi'o profile database
  id: profile_db
  inputBinding:
    prefix: --profile-db
  type: string
- doc: Collection name.
  id: collection_name
  inputBinding:
    prefix: --collection-name
  type: string
- doc: Text file for bins (each line should be a unique bin id).
  id: bin_ids_file
  inputBinding:
    prefix: --bin-ids-file
  type: File
- doc: A file with contig names. There should be only one column in the file, and
    each line should correspond to a unique split name.
  id: contigs_of_interest
  inputBinding:
    prefix: --contigs-of-interest
  type: File
- doc: Gene caller ids. Multiple of them can be declared separated by a delimiter
    (the default is a comma). In anvi-gen-variability-profile, if you declare nothing
    you will get all genes matching your other filtering criteria. In other programs,
    you may get everything, nothing, or an error. It really depends on the situation.
    Fortunately, mistakes are cheap, so it's worth a try.
  id: gene_caller_ids
  inputBinding:
    prefix: --gene-caller-ids
  type: string