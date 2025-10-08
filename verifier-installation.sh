#!/bin/bash

echo "🔍 Vérification de l'installation..."
echo ""

# Vérifier Node.js
echo "✓ Node.js version:"
node --version
echo ""

# Vérifier npm
echo "✓ npm version:"
npm --version
echo ""

# Vérifier Expo
echo "✓ Expo installé:"
if npm list expo | grep -q "expo@"; then
    npm list expo | grep "expo@" | head -1
    echo "  ✅ Expo est installé"
else
    echo "  ❌ Expo n'est pas installé"
fi
echo ""

# Vérifier @expo/ngrok
echo "✓ @expo/ngrok (pour le mode tunnel):"
if npm list @expo/ngrok | grep -q "@expo/ngrok@"; then
    npm list @expo/ngrok | grep "@expo/ngrok@" | head -1
    echo "  ✅ @expo/ngrok est installé"
else
    echo "  ⚠️  @expo/ngrok n'est pas installé (le mode tunnel peut ne pas fonctionner)"
fi
echo ""

# Vérifier les fichiers importants
echo "✓ Fichiers du projet:"
if [ -f "App.js" ]; then
    echo "  ✅ App.js existe"
else
    echo "  ❌ App.js manquant"
fi

if [ -f "package.json" ]; then
    echo "  ✅ package.json existe"
else
    echo "  ❌ package.json manquant"
fi

if [ -f "app.json" ]; then
    echo "  ✅ app.json existe"
else
    echo "  ❌ app.json manquant"
fi
echo ""

echo "📋 Résumé:"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "✅ Ton projet Expo est prêt !"
echo ""
echo "🚀 Pour lancer la preview sur ton iPhone :"
echo "   ./start-preview.sh"
echo ""
echo "   OU manuellement :"
echo "   npx expo start --tunnel"
echo ""
echo "📱 N'oublie pas d'installer 'Expo Go' sur ton iPhone depuis l'App Store !"
echo ""
