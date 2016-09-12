note_dir="~/.notes"

# Quick notes
function note() {
  date=`date +%Y-%m-%d`
  time=`date +%H:%M`
  header="---"
  note="${note_dir}/${date}.md"
  if [ ! -d "$note_dir" ]; then
    mkdir -p "${note_dir}"
  fi
  if [ ! -f "$note" ]; then
    touch $note
    echo ${date} > ${note}
  fi
  echo "\n\n${time}" >> ${note}
  echo ${header} >> ${note}
  echo ${@} >> ${note}
}

# Open todays notes in vim
function notes() {
  date=`date +%Y-%m-%d`
  note="${note_dir}/${date}.md"
  vim $note
}

# Open all notes in atom
function allnotes() {
  atom $note_dir
}
