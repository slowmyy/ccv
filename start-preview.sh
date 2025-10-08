#!/bin/bash

echo "🚀 Lancement de la preview Expo pour iPhone..."
echo ""
echo "📱 Étapes à suivre :"
echo "1. Assure-toi d'avoir installé 'Expo Go' sur ton iPhone (App Store)"
echo "2. Un QR code va apparaître ci-dessous"
echo "3. Ouvre Expo Go sur ton iPhone et scanne le QR code"
echo "4. Attends que l'app se charge (30 secondes à 1 minute)"
echo ""
echo "⏳ Démarrage du serveur en mode tunnel..."
echo ""

npx expo start --tunnel
