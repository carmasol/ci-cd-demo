#!/bin/bash

echo "===== Début des tests ====="

if [ ! -f "site/index.html" ]; then
    echo "ERREUR : index.html n'existe pas."
    exit 1
fi

echo "OK : index.html existe."

if grep -q "Mon premier pipeline CI/CD" site/index.html; then
    echo "OK : titre trouvé."
else 
    echo "ERREUR : titre absent."
    exit 1
fi


echo "===== Tous les tests sont réussis ====="
