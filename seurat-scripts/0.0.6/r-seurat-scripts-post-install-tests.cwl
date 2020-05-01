#!/usr/bin/env cwl-runner

baseCommand:
- r-seurat-scripts-post-install-tests.sh
class: CommandLineTool
cwlVersion: v1.0
id: r-seurat-scripts-post-install-tests.sh
inputs:
- doc: ": what action to take, 'test' or 'clean'"
  id: action
  inputBinding:
    prefix: '- action'
  type: boolean
- doc: ", 'true' or 'false'"
  id: use_existing_outputs
  inputBinding:
    prefix: '- use_existing_outputs'
  type: boolean