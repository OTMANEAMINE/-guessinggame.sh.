README.md: guessinggame.sh
	@echo "# Projet de Jeu de Devinette" > README.md
	@echo "Date et heure de l'exécution : $(shell date)" >> README.md
	@echo "Nombre de lignes dans guessinggame.sh : $(shell wc -l < guessinggame.sh)" >> README.md
