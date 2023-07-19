import streams, xmlparser
import cligen
import marco/compile

proc marco(input: string = "", output: string = "", quiet = false) =
  when defined(linux):
    proc isatty(fd: int): int {.importc.}
    if not quiet and input == "" and output == "" and stdin.getOsFileHandle.isatty > 0 and stdout.getOsFileHandle.isatty > 0:
      echo "marco - android manifest compiler"
      echo "write manifest file to stdin (press ctrl+d to finish)"
  var input =
    if input == "": stdin.newFileStream
    else: input.openFileStream(fmRead)
  var output =
    if output == "": stdout.newFileStream
    else: output.openFileStream(fmWrite)

  output.write input.parseXml.marcoCompile

when isMainModule:
  dispatch marco
