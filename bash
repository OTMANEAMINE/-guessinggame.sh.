#!/bin/bash

# Fonction pour compter les fichiers dans le répertoire
count_files() {
  echo $(ls -1 | wc -l)
}

# Demander à l'utilisateur de deviner le nombre de fichiers
echo "Combien de fichiers se trouvent dans le répertoire actuel ?"
correct_answer=$(count_files)

while true; do
  # Lire la réponse de l'utilisateur
  read user_guess
  if [[ $user_guess -lt $correct_answer ]]; then
    echo "Trop bas ! Essayez à nouveau."
  elif [[ $user_guess -gt $correct_answer ]]; then
    echo "Trop haut ! Essayez à nouveau."
  else
    echo "Félicitations, vous avez trouvé la bonne réponse!"
    break
  fi
done
