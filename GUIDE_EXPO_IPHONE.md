# 📱 Guide : Lancer ton app Expo sur iPhone

## ✅ Étape 1 : Installer Expo Go sur ton iPhone

1. **Ouvre l'App Store** sur ton iPhone
2. **Cherche "Expo Go"**
3. **Installe l'application** Expo Go (c'est gratuit)
4. **Ouvre Expo Go** une fois installé

---

## 🚀 Étape 2 : Lancer le serveur de développement

Dans ton terminal (dans ce dossier `/workspace`), lance la commande suivante :

```bash
npx expo start --tunnel
```

**Pourquoi `--tunnel` ?**
- Le mode `--tunnel` permet à ton iPhone de se connecter à ton serveur même si vous n'êtes pas sur le même réseau Wi-Fi
- C'est la méthode la plus fiable pour la preview sur téléphone

**Ce que tu vas voir :**
- Un QR code va apparaître dans le terminal
- Une URL va être affichée
- Le serveur Metro va démarrer (il compile ton code React Native)

---

## 📷 Étape 3 : Scanner le QR code

### Option A : Scanner avec Expo Go (Recommandé pour iPhone)
1. **Ouvre l'app Expo Go** sur ton iPhone
2. **Appuie sur "Scan QR code"** (ou utilise l'onglet "Projects")
3. **Scanne le QR code** qui s'affiche dans ton terminal
4. **Attends le chargement** (ça peut prendre 30 secondes à 1 minute la première fois)

### Option B : Scanner avec l'appareil photo iOS
1. **Ouvre l'app Appareil Photo** native de l'iPhone
2. **Scanne le QR code** 
3. Une notification va apparaître en haut de l'écran
4. **Appuie sur la notification** pour ouvrir dans Expo Go

---

## 🔧 Étape 4 : Résoudre les problèmes courants

### Problème 1 : Écran blanc ou chargement infini ⚪

**Solutions :**

1. **Vérifier la connexion réseau**
   ```bash
   # Redémarre le serveur avec :
   npx expo start --tunnel --clear
   ```
   Le flag `--clear` efface le cache Metro

2. **Installer `@expo/ngrok`** (requis pour le mode tunnel)
   ```bash
   npm install -g @expo/ngrok
   ```

3. **Vérifier que le tunnel fonctionne**
   - Dans le terminal, tu dois voir une ligne comme : `exp://xxx.xxx.xxx.xxx:19000`
   - Si tu vois "Tunnel ready", c'est bon !

4. **Secouer ton iPhone** et sélectionner "Reload" dans le menu Expo Go

### Problème 2 : Erreur "Unable to connect to server" 🔌

**Solutions :**

1. **Assure-toi que le serveur est toujours en cours d'exécution** dans le terminal

2. **Redémarre le serveur :**
   - Appuie sur `Ctrl + C` dans le terminal pour arrêter le serveur
   - Relance avec `npx expo start --tunnel`

3. **Vérifier le pare-feu** (si tu es sur un réseau d'entreprise ou école)
   - Le mode tunnel peut être bloqué
   - Essaye de passer sur un réseau mobile/hotspot

### Problème 3 : L'app se ferme immédiatement 💥

**Solutions :**

1. **Vérifier les logs dans le terminal**
   - Les erreurs JavaScript apparaissent dans le terminal
   - Cherche les lignes en rouge

2. **Vérifier la version d'Expo Go**
   - Assure-toi d'avoir la dernière version d'Expo Go sur l'App Store
   - La version de ton app est : Expo SDK 54

3. **Recharger l'app** depuis Expo Go
   - Secoue ton iPhone
   - Sélectionne "Reload"

### Problème 4 : QR code ne scan pas 📷

**Solutions :**

1. **Utiliser le lien manuel :**
   - Dans Expo Go, va dans l'onglet "Projects"
   - Appuie sur "Enter URL manually"
   - Copie l'URL `exp://xxx.xxx.xxx.xxx:19000` depuis le terminal

2. **Vérifier la luminosité** de ton écran d'ordinateur

---

## 🎯 Commandes utiles pendant le développement

Une fois que le serveur est lancé, tu peux utiliser ces raccourcis dans le terminal :

- **`r`** : Recharger l'app
- **`m`** : Basculer le menu
- **`j`** : Ouvrir le debugger
- **`c`** : Effacer le cache et recharger
- **`Ctrl + C`** : Arrêter le serveur

---

## 📊 Vérifier que tout fonctionne

Quand l'app charge correctement, tu devrais voir :
- Un écran blanc avec le texte : **"Open up App.js to start working on your app!"**
- Pas d'erreurs dans le terminal
- L'app répond au toucher

---

## 💡 Astuces pour une preview stable

1. **Garde le terminal ouvert** pendant que tu développes
2. **Ne ferme pas Expo Go** sur ton iPhone
3. **Si tu modifies le code**, l'app va se recharger automatiquement (Fast Refresh)
4. **En cas de doute**, secoue ton iPhone → "Reload"

---

## 🆘 Si rien ne fonctionne

Si après avoir tout essayé, ça ne marche toujours pas :

1. **Réinstalle les dépendances :**
   ```bash
   rm -rf node_modules
   npm install
   ```

2. **Redémarre avec un cache propre :**
   ```bash
   npx expo start --tunnel --clear
   ```

3. **Vérifie que ton iPhone et ton ordinateur peuvent communiquer**
   - Le mode `--tunnel` devrait résoudre ce problème
   - Sinon, essaye le mode LAN : `npx expo start --lan`

---

## ✨ Prochaines étapes

Une fois que tu as une preview stable :
- Tu peux commencer à modifier `App.js`
- Les changements apparaîtront automatiquement sur ton iPhone
- Explore les composants React Native dans la documentation

**Bon développement ! 🚀**
