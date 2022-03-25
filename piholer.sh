#!/bin/sh
#
# Das Skript nimmt die url_list.txt Datei und erstellt eine neue
# Gesamtdatei "pihole_list_raw.txt, die allerdings noch nicht bereinigt wurde auf:
# - Dopplungen
# - Kommentare

# zunächst eine bestehende (ältere) Datei löschen
rm pihole_list_raw.txt
rm pihole_final.txt

# Einlesen der URL Liste und in eine neue Liste zusammenfügen
cat url_list_v3.txt | while read url; do
     echo "$url"
     curl "$url" >> pihole_list_raw.txt;
done
sort -u pihole_list_raw.txt  > pihole_final.txt
sudo cp pihole_final.txt /var/www/html
rm pihole_final.txt
rm pihole_list_raw.txt
echo "Verarbeitung angeschlossen...!"
