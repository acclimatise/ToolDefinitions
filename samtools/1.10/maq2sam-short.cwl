#!/usr/bin/env cwl-runner

baseCommand:
- maq2sam-short
class: CommandLineTool
cwlVersion: v1.0
id: maq2sam-short
inputs:
- doc: ''
  id: maq2sam
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: in_map
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: read_group
  inputBinding:
    position: 2
  type: string