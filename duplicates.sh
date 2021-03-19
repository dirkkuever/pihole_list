#!/bin/sh
#
# Das Skript soll doppelte Einträge finden und eine neue Datei erstellen
# Funktion "sort" wird verwendet und in eine neue Datei umgeleitet
# zunächst wird eine eventuell bestehende Datei entfernt, danach eine neue erstellt
rm pihole_final.txt
sort -u pihole_list_raw.txt  > pihole_final.txt 


