#!/usr/bin/env cwl-runner

baseCommand:
- basename
class: CommandLineTool
cwlVersion: v1.0
id: basename
inputs:
- doc: support multiple arguments and treat each as a NAME
  id: multiple
  inputBinding:
    prefix: --multiple
  type: boolean
- doc: remove a trailing SUFFIX; implies -a
  id: suffix
  inputBinding:
    prefix: --suffix
  type: string
- doc: end each output line with NUL, not newline
  id: zero
  inputBinding:
    prefix: --zero
  type: boolean