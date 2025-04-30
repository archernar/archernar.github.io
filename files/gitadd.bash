function gitadd() {
         paramsf "$filename"
  core.print.advice "git add $filename"
  git add "$filename"
  return 0
}
