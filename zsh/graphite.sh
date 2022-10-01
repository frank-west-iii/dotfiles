#compdef gt
###-begin-gt-completions-###
#
# yargs command completion script
#
# Installation: ../../../.asdf/installs/nodejs/16.13.0/.npm/bin/gt completion >> ~/.zshrc
#    or ../../../.asdf/installs/nodejs/16.13.0/.npm/bin/gt completion >> ~/.zprofile on OSX.
#
_gt_yargs_completions()
{
  local reply
  local si=$IFS
  IFS=$'
' reply=($(COMP_CWORD="$((CURRENT-1))" COMP_LINE="$BUFFER" COMP_POINT="$CURSOR" ../../../.asdf/installs/nodejs/16.13.0/.npm/bin/gt --get-yargs-completions "${words[@]}"))
  IFS=$si
  _describe 'values' reply
}
compdef _gt_yargs_completions gt
###-end-gt-completions-###
