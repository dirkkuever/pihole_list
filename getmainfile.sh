#!/bin/sh
#
# Das Skript nimmt die url_list.txt Datei und erstellt eine neue
# Gesamtdatei "pihole_list_raw.txt, die allerdings noch nicht bereinigt wurde auf:
# - Dopplungen
# - Kommentare

# zunächst eine bestehende (ältere) Datei löschen
rm pihole_list_raw.txt

# Einlesen der URL Liste und in eine neue Liste zusammenfügen
cat url_list.txt | while read url; do 
    curl "$url" >> pihole_list_raw.txt;
done
