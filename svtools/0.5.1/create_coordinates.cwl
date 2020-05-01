#!/usr/bin/env cwl-runner

baseCommand:
- create_coordinates
class: CommandLineTool
cwlVersion: v1.0
id: create_coordinates
inputs:
- doc: VCF input
  id: input_vcf
  inputBinding:
    prefix: --input_vcf
  type: string
- doc: 'output coordinates to write (default: stdout)'
  id: output
  inputBinding:
    prefix: --output
  type: string