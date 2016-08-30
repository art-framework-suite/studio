_studio_wrapper() {
  local command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  shell)
    eval `studio "sh-$command" "$@"`;;
  *)
    command studio "$command" "$@";;
  esac
}
alias studio=_studio_wrapper
