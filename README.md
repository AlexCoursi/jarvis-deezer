## Description
Play/Stop/Pause a deezer playlist with <a target="_blank" href="http://domotiquefacile.fr/jarvis/">Jarvis assistant</a>.


<img src="https://raw.githubusercontent.com/QuentinCG/jarvis-deezer/master/presentation.png" width="500">


## Usage
```
You: Lance la playlist <NomChoisi>
Jarvis: OK, c'est parti

You: Mets le mix <NomChoisi>
Jarvis : OK c'est parti

You: Mets en pause
Jarvis:...

You: Remets la lecture
Jarvis:...

You: Arrête la musique
Jarvis:...

You: Mets le volume à fond
Jarvis:...

You: Mets le volume à 25
Jarvis:...

You: Change de chanson (ou mets la chanson suivante)
Jarvis:...
```


## How to install

1) Be sure to have a <b>desktop</b> rapbian or debian version.

2) Add this plugin to your <a target="_blank" href="http://domotiquefacile.fr/jarvis/">Jarvis assistant</a> (<a target="_blank" href="http://domotiquefacile.fr/jarvis/content/plugins">more info here</a>): ```./jarvis.sh -p https://github.com/AlexCoursi/jarvis-deezer```

3) Login to deezer with Chromium (free account).

4) Configure the <a target="_blank" href="https://github.com/AlexCoursi/jarvis-deezer/blob/master/config.sh">configuration file</a> to match your requirements.

5) Launch Jarvis on normal mode (background mode is not possible for now because of DISPLAY and xdotool)

6) Enjoy


## Author
[Quentin Comte-Gaz](http://quentin.comte-gaz.com/) inspired and improved from [Alexandre Coursimault](https://github.com/AlexCoursi/jarvis-deezer).
(Quentin has a fork with the word deezer in the comands to work with other music players in Jarvis)

## License

This project is under MIT license. This means you can use it as you want (just don't delete the plugin header).


## Contribute

If you want to add more examples or improve the plugin, just create a pull request with proper commit message and right wrapping.
