#!/usr/bin/env cwl-runner

baseCommand:
- add_custom_gene.py
class: CommandLineTool
cwlVersion: v1.0
id: add_custom_gene.py
inputs:
- doc: The name of the organism for which the list of allowed candidate fusion genes
    is generated, e.g. homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'.
  id: organism
  inputBinding:
    prefix: --organism
  type: string
- doc: The output directory where the list of allowed candidate fusion genes is generated.
    Default is '.'.
  id: output
  inputBinding:
    prefix: --output
  type: string