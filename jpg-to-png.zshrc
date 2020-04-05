j2p () {
  for f in *.jpg; do
    mv -- "$f" "${f%.jpg}.png"
  done
}
