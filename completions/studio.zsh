if [[ ! -o interactive ]]; then
    return
fi

compctl -K _studio studio

_studio() {
  local word words completions
  read -cA words
  word="${words[2]}"

  if [ "${#words}" -eq 2 ]; then
    completions="$(studio commands)"
  else
    completions="$(studio completions "${word}")"
  fi

  reply=("${(ps:\n:)completions}")
}
