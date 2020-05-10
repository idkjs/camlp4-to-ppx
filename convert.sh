#!/usr/bin/env sh
# find /Users/mandalarian/Github/shcaml/lib -name "*.ml" > edits.cfg
# find /Users/mandalarian/Github/shcaml/lib -name "*.mli" >> edits.cfg

#!/bin/zsh
# get our filelist
file=edits.cfg

# define a function with the changes we want to make and call `fastreplacestring.exe` on each version of tuple
# function edits(){
#   for i in "ReasonReact.Update Update" "ReasonReact.NoUpdate NoUpdate" "ReasonReact.UpdateWithSideEffects UpdateWithSideEffects"
# do
#     set -- $i
#     echo fastreplacestring.exe $1 $2
# done
# };

# while IFS= read -r cmd; do
#     ./main.native $cmd > /Users/mandalarian/Github/shcaml/updated


# done < "$file"

function __convert_ml_to_re() {
  echo $pwd
  find . -name "*.ml" | while read filename; do ./main.native $filename >$filename; done

}