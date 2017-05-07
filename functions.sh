#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file
# To avoid conflicts, name your function like this
# pg_XX_myfunction () { }
# pg for PluGin
# XX is a short code for your plugin, ex: ww for Weather Wunderground
# You can use translations provided in the language folders functions.sh

pg_dz_lancerChromium()
{
        deezerDejaLance=`xdotool search --desktop 0 --name $jv_pg_dz_nomFenetre`
        if [ "$deezerDejaLance" == "" ]
        then
                lxterminal -e screen $jv_pg_dz_nomBrowser http://www.deezer.com/playlist/$1
                sleep 20s
                xdotool search --desktop 0 --name LXTerminal windowactivate
                xdotool key shift+ctrl+q
                xdotool search --desktop 0 --name $jv_pg_dz_nomFenetre windowactivate --sync mousemove --window %1 0 0 click 1
        fi
}

pg_dz_arreterChromium()
{
        deezerDejaLance=`xdotool search --desktop 0 --name $jv_pg_dz_nomFenetre`
        if [ ! "$deezerDejaLance" == "" ]
        then
                xdotool search --desktop 0 --name $jv_pg_dz_nomFenetre windowactivate
                xdotool key ctrl+w
                deezerDejaLance=`xdotool search --desktop 0 --name $jv_pg_dz_nomFenetre`
                if [ ! "$deezerDejaLance" == "" ]
                then
                        xdotool key "Return"
                fi
        fi
}

#pg_dz_lecturePause()
#{
#        xdotool search --desktop 0 --name $jv_pg_dz_nomFenetre windowactivate --sync mousemove --window %1 0 75 click 1
#        seq $jv_pg_dz_nbTabLecture | xargs -Iz xdotool key Tab sleep 0.1s
#        xdotool key space
#}

pg_dz_lecturePause()
{
		jv_pg_dz_hauteurFenetre=`xdotool search --desktop 0 --name $jv_pg_dz_nomFenetre getwindowgeometry | grep Geometry | sed -e 's/.*Geometry.*x\(.*\)/\1/g'`
		jv_pg_dz_hauteurDuBoutonPlay=$(($jv_pg_dz_hauteurFenetre - $jv_pg_dz_offsetHauteurNegativeBoutonPlay))
		jv_pg_dz_longueurDuBoutonPlay=$jv_pg_dz_offsetLargeurPositiveBoutonPlay
		xdotool search --desktop 0 --name $jv_pg_dz_nomFenetre windowactivate --sync mousemove --window %1 0 0
		sleep 1 
                xdotool search --desktop 0 --name $jv_pg_dz_nomFenetre windowactivate --sync mousemove --window %1 $jv_pg_dz_longueurDuBoutonPlay $jv_pg_dz_hauteurDuBoutonPlay click 1
}

pg_dz_runDeezer()
{
case "$1" in
  start)
        pg_dz_arreterChromium

                playlists=$(echo $jv_pg_dz_liste_playlists | tr ";" "\n")
                for playlist in $playlists
                do
                        index_tiret=`expr index "$playlist" _`
                        cle=${playlist:0:index_tiret-1}
                        longueur=`expr length $playlist`
                        valeur=${playlist:index_tiret:longueur-index_tiret}
                        if [ $cle == "$2" ]
                        then
                                break
                        fi
                        #Si on arrive la, c'est qu'on prend le dernier
                done
                echo "[$cle] => [$valeur]"

        pg_dz_lancerChromium "$valeur"
        pg_dz_lecturePause
        ;;

  stop)
        pg_dz_arreterChromium
        ;;

  lecture|pause)
        pg_dz_lecturePause
        ;;

  liste)
	say "La liste des playlistes est : "
	playlists=$(echo $jv_pg_dz_liste_playlists | tr ";" "\n")
        for playlist in $playlists
        do
             index_tiret=`expr index "$playlist" _`
             cle=${playlist:0:index_tiret-1}
	     say "$cle "
        done
	;;

esac
}
