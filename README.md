# Auto Audio Affinity Script

## Description

Ce projet propose un script batch qui permet de régler automatiquement les paramètres d'affinité du processus `audiodg.exe` (utilisé par le système audio de Windows) afin de résoudre les problèmes de grésillement du microphone. Ce script est conçu pour être simple à utiliser et ne nécessite qu'un minimum d'interaction de l'utilisateur.

## Fonctionnalités

- **Automatisation** : Le script recherche automatiquement le processus `audiodg.exe` et ajuste ses paramètres d'affinité CPU.
- **Personnalisation** : L'utilisateur peut choisir l'unité centrale (UC) spécifique à utiliser pour le processus audio.

## Utilisation

### Prérequis

- **Système d'exploitation** : Windows
- **Privilèges** : Le script doit être exécuté en mode administrateur.

### Instructions

1. **Téléchargez le script** : Téléchargez le fichier `audiodg.bat` sur votre ordinateur.
2. **Exécution en mode administrateur** :
   - Faites un clic droit sur le fichier `audiodg.bat`.
   - Sélectionnez **Exécuter en tant qu'administrateur**.
3. **Suivez les instructions** :
   - Une fois le script lancé, il affichera un ASCII art en couleur.
   - Il vous sera demandé de choisir le numéro de l'UC (0 pour CPU 0, 1 pour CPU 1, etc.) pour le processus `audiodg.exe`.
   - Entrez le numéro de l'UC souhaitée et appuyez sur Entrée.

Le script configurera alors automatiquement l'affinité du processus `audiodg.exe` pour utiliser l'UC spécifiée, aidant à réduire ou éliminer les problèmes de grésillement du microphone.

## Auteur

Dev by Sharok

## Remarques

- Si `audiodg.exe` n'est pas en cours d'exécution, le script vous en informera et se fermera automatiquement.
- Assurez-vous de toujours exécuter le script en mode administrateur pour qu'il puisse modifier les paramètres d'affinité du processeur.

---
Discord : c4tl0ve
