#!/usr/bin/env cwl-runner

baseCommand:
- anvi-run-ncbi-cogs
class: CommandLineTool
cwlVersion: v1.0
id: anvi-run-ncbi-cogs
inputs:
- doc: Anvi'o contigs database generated by 'anvi-gen- contigs'
  id: contigs_db
  inputBinding:
    prefix: --contigs-db
  type: string
- doc: The directory path for your COG setup. Anvi'o will try to use the default path
    if you do not specify anything.
  id: cog_data_dir
  inputBinding:
    prefix: --cog-data-dir
  type: string
- doc: Maximum number of threads to use for multithreading whenever possible. Very
    conservatively, the default is 1. It is a good idea to not exceed the number of
    CPUs / cores on your system. Plus, please be careful with this option if you are
    running your commands on a SGE --if you are clusterizing your runs, and asking
    for multiple threads to use, you may deplete your resources very fast.
  id: num_threads
  inputBinding:
    prefix: --num-threads
  type: string
- doc: DIAMOND sensitivity. With this flag you can instruct DIAMOND to be 'sensitive',
    rather than 'fast' during the search. It is likely the search will take remarkably
    longer. But, hey, if you are doing it for your final analysis, maybe it should
    take longer and be more accurate. This flag is only relevant if you are running
    DIAMOND.
  id: sensitive
  inputBinding:
    prefix: --sensitive
  type: boolean
- doc: If you don't provide anything here, this program will come up with a temporary
    directory path by itself to store intermediate files, and clean it later. If you
    want to have full control over this, you can use this flag to define one..
  id: temporary_dir_path
  inputBinding:
    prefix: --temporary-dir-path
  type: File
- doc: 'What program to use for database searching. The default search uses blastp.
    All available options include: blastp.'
  id: search_with
  inputBinding:
    prefix: --search-with
  type: string