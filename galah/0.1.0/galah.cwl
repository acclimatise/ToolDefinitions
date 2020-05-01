#!/usr/bin/env cwl-runner

baseCommand:
- galah
class: CommandLineTool
cwlVersion: v1.0
id: galah
inputs:
- doc: Unless there is an error, do not print logging information
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Print extra debug logging information
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean