version 1.0

task NucBed {
  input {
    Boolean fiFi
    Boolean bedBed
    Boolean sS
    Boolean seqSeq
    Boolean patternPattern
    Boolean cC
    Boolean fullFullHeader
    String byBy
  }
  command <<<
    nucBed \
      ~{true="-fi" false="" fiFi} \
      ~{true="-bed" false="" bedBed} \
      ~{true="-s" false="" sS} \
      ~{true="-seq" false="" seqSeq} \
      ~{true="-pattern" false="" patternPattern} \
      ~{true="-C" false="" cC} \
      ~{true="-fullHeader" false="" fullFullHeader} \
      ~{if defined(byBy) then ("- By " +  '"' + byBy + '"') else ""}
  >>>
}