#!/usr/bin/env cwl-runner

baseCommand:
- htseq-count
class: CommandLineTool
cwlVersion: v1.0
id: htseq-count
inputs:
- doc: Path to the SAM/BAM files containing the mapped reads. If '-' is selected,
    read from standard input
  id: sam_filenames
  inputBinding:
    position: 0
  type: string
- doc: Path to the GTF file containing the features
  id: features_filename
  inputBinding:
    position: 1
  type: string
- doc: 'Type of <alignment_file> data. DEPRECATED: file format is detected automatically.
    This option is ignored.'
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: "'pos' or 'name'. Sorting order of <alignment_file> (default: name). Paired-end\
    \ sequencing data must be sorted either by position or by read name, and the sorting\
    \ order must be specified. Ignored for single- end data."
  id: order
  inputBinding:
    prefix: --order
  type: string
- doc: When <alignment_file> is paired end sorted by position, allow only so many
    reads to stay in memory until the mates are found (raising this number will use
    more memory). Has no effect for single end or paired end sorted by name
  id: max_reads_in_buffer
  inputBinding:
    prefix: --max-reads-in-buffer
  type: long
- doc: "Whether the data is from a strand-specific assay. Specify 'yes', 'no', or\
    \ 'reverse' (default: yes). 'reverse' means 'yes' with reversed strand interpretation"
  id: stranded
  inputBinding:
    prefix: --stranded
  type: string
- doc: 'Skip all reads with MAPQ alignment quality lower than the given minimum value
    (default: 10). MAPQ is the 5th column of a SAM/BAM file and its usage depends
    on the software used to map the reads.'
  id: mina_qual
  inputBinding:
    prefix: --minaqual
  type: long
- doc: 'Feature type (3rd column in GTF file) to be used, all features of other type
    are ignored (default, suitable for Ensembl GTF files: exon)'
  id: type
  inputBinding:
    prefix: --type
  type: string
- doc: 'GTF attribute to be used as feature ID (default, suitable for Ensembl GTF
    files: gene_id). All feature of the right type (see -t option) within the same
    GTF attribute will be added together. The typical way of using this option is
    to count all exonic reads from each gene and add the exons but other uses are
    possible as well.'
  id: id_attr
  inputBinding:
    prefix: --idattr
  type: string
- doc: 'Additional feature attributes (default: none, suitable for Ensembl GTF files:
    gene_name). Use multiple times for more than one additional attribute. These attributes
    are only used as annotations in the output, while the determination of how the
    counts are added together is done based on option -i.'
  id: additional_attr
  inputBinding:
    prefix: --additional-attr
  type: string
- doc: 'Mode to handle reads overlapping more than one feature (choices: union, intersection-strict,
    intersection- nonempty; default: union)'
  id: mode
  inputBinding:
    prefix: --mode
  type: string
- doc: 'Whether and how to score reads that are not uniquely aligned or ambiguously
    assigned to features (choices: none, all, fraction, random; default: none)'
  id: non_unique
  inputBinding:
    prefix: --nonunique
  type: string
- doc: Whether to score secondary alignments (0x100 flag)
  id: secondary_alignments
  inputBinding:
    prefix: --secondary-alignments
  type: string
- doc: Whether to score supplementary alignments (0x800 flag)
  id: supplementary_alignments
  inputBinding:
    prefix: --supplementary-alignments
  type: string
- doc: Write out all SAM alignment records into SAM/BAM files (one per input file
    needed), annotating each line with its feature assignment (as an optional field
    with tag 'XF'). See the -p option to use BAM instead of SAM.
  id: sam_out
  inputBinding:
    prefix: --samout
  type: string
- doc: Format to use with the --samout option.
  id: sam_out_format
  inputBinding:
    prefix: --samout-format
  type: string
- doc: 'Column delimiter in output (default: TAB).'
  id: delimiter
  inputBinding:
    prefix: --delimiter
  type: string
- doc: Filename to output the counts to instead of stdout.
  id: counts_output
  inputBinding:
    prefix: --counts_output
  type: string
- doc: Append counts output. This option is useful if you have already creates a TSV/CSV/similar
    file with a header for your samples (with additional columns for the feature name
    and any additionl attributes) and want to fill in the rest of the file.
  id: append_output
  inputBinding:
    prefix: --append-output
  type: boolean
- doc: 'Number of parallel CPU processes to use (default: 1).'
  id: n_processes
  inputBinding:
    prefix: --nprocesses
  type: string
- doc: "Restrict to features descibed in this expression. Currently supports a single\
    \ kind of expression: attribute == \"one attr\" to restrict the GFF to a single\
    \ gene or transcript, e.g. --feature-query 'gene_name == \"ACTB\"' - notice the\
    \ single quotes around the argument of this option and the double quotes around\
    \ the gene name. Broader queries might become available in the future."
  id: feature_query
  inputBinding:
    prefix: --feature-query
  type: string
- doc: Suppress progress report
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean