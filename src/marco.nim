import cligen
import marco/compile

proc marco(input: string, output: string) =
  writeFile output, marcoCompile(input.readFile)

when isMainModule:
  dispatch marco
