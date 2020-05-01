#!/usr/bin/env cwl-runner

baseCommand:
- VcfStreamSort
class: CommandLineTool
cwlVersion: v1.0
id: vcfstreamsort
inputs:
- doc: "Input VCF file. If unset, reads from STDIN. Default value: ''"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output VCF list. If unset, writes to STDOUT. Default value: ''"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Number of variants to cache for sorting. Default value: '10000'"
  id: n
  inputBinding:
    prefix: -n
  type: long
- doc: Prints changeloge and exits.
  id: changelog
  inputBinding:
    prefix: --changelog
  type: boolean
- doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  id: tdx
  inputBinding:
    prefix: --tdx
  type: boolean