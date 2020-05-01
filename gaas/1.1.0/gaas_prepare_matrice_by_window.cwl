#!/usr/bin/env cwl-runner

baseCommand:
- gaas_prepare_matrice_by_window.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_prepare_matrice_by_window.pl
inputs:
- doc: Output name of the directory that will contain results
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: description,
  id: a
  inputBinding:
    prefix: '- a'
  type: string
- doc: relevant information as possible,
  id: as
  inputBinding:
    prefix: '- as'
  type: string
- doc: used,
  id: the
  inputBinding:
    prefix: '- the'
  type: string
- doc: sample,
  id: a
  inputBinding:
    prefix: '- a'
  type: string
- doc: of the expected behaviour that is not occurring.
  id: an
  inputBinding:
    prefix: '- an'
  type: string