#!/bin/bash

if [[ $1 == "--date" ]]; then
  echo $(date)

elif [[ $1 == "--logs" ]]; then
  if [[ -n $2 ]]; then
    num_logs=$2
  else
    num_logs=100
  fi

  for ((i=1; i<=$num_logs; i++)); do
    filename="log$i.txt"
    echo -e "Nazwa pliku: $filename\nNazwa skryptu: skrypt.sh\nData: $(date)" > $filename
  done

elif [[ $1 == "--help" ]]; then
  echo "Dostępne opcje:"
  echo "- skrypt.sh --date: Wyświetla dzisiejszą datę."
  echo "- skrypt.sh --logs: Tworzy automatycznie 100 plików logx.txt (x - numer pliku od 1-100), z informacją o nazwie pliku, nazwie skryptu i dacie."
  echo "- skrypt.sh --logs N: Tworzy automatycznie N plików logx.txt (x - numer pliku od 1-N), z analogicznymi informacjami jak powyżej."
  echo "- skrypt.sh --help: Wyświetla wszystkie dostępne opcje."

else
  echo "Nieznana opcja. Użyj 'skrypt.sh --help' aby zobaczyć dostępne opcje."
fi
