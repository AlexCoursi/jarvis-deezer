<!---
IMPORTANT
=========
This README.md is displayed in the WebStore as well as within Jarvis app
Please do not change the structure of this file
Fill-in Description, Usage & Author sections
Make sure to rename the [en] folder into the language code your plugin is written in (ex: fr, es, de, it...)
For multi-language plugin:
- clone the language directory and translate commands/functions.sh
- optionally write the Description / Usage sections in several languages
-->
## Description
Plugin for Deezer

## Pré-requis
Il faut au préalable lancer Deezer sur Chromium et s'enregistrer (compte gratuit).
Il faut ensuite lancer Jarvis en mode normal (en mode background, il y a des problèmes liés à la veriable d'environnement DISPLAY et xdotool).
Testé sur Raspberry PI3.

## Usage
```
You: Lance la playlist <NomChoisi>
Jarvis: OK, c'est parti
You: Mets en Pause 
Jarvis:...
You: Remets la lecture
Jarvis:...
You: Arrête la musique
Jarvis:...
```
*LIST*PLAYLIST*=Donne la liste des playlistes programmées
*PLAYLIST* (*)=Lance la playliste choisie
*ARRETE*|*STOP*=Arrête la lecture
*PAUSE*|*LECTURE*=Met en pause ou lecture
*VOLUME*D*FAU*=Met le volume par défaut
*VOLUME*FOND*=Met le volume au maximum
*VOLUME* (*)=Met le volume à X (%)


## Author
Alexandre Coursimault
