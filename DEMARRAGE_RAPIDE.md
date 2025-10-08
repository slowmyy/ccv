# 🚀 Démarrage Rapide - Preview iPhone

## Étapes simples (5 minutes)

### 1️⃣ Sur ton iPhone
- Ouvre l'**App Store**
- Cherche **"Expo Go"**
- **Installe** l'application
- **Ouvre** Expo Go

### 2️⃣ Dans ton terminal
Lance cette commande :
```bash
./start-preview.sh
```

**OU** si tu préfères la version manuelle :
```bash
npx expo start --tunnel
```

### 3️⃣ Connecter ton iPhone
- Un **QR code** apparaît dans le terminal
- Ouvre **Expo Go** sur ton iPhone
- Appuie sur **"Scan QR code"**
- **Scanne** le QR code
- **Attends** 30 secondes que l'app charge

### ✅ C'est tout !

Tu devrais voir l'app s'afficher sur ton iPhone avec le texte :
> "Open up App.js to start working on your app!"

---

## ⚠️ Problèmes ?

### Écran blanc ou chargement infini
```bash
# Redémarre avec cache effacé
npx expo start --tunnel --clear
```

Puis **secoue ton iPhone** → sélectionne **"Reload"**

### Autres problèmes
Consulte le guide complet : `GUIDE_EXPO_IPHONE.md`

---

## 🎯 Commandes utiles

Une fois lancé, dans le terminal :
- **`r`** → Recharger l'app
- **`c`** → Effacer le cache
- **`Ctrl + C`** → Arrêter le serveur

---

**🔧 Vérifier l'installation :** `./verifier-installation.sh`
