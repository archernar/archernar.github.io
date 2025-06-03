function gitadd() {
         paramsf "$filename"
  printAdvice "git add $filename"
  git add "$filename"
  return 0
}
