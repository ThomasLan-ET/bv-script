# bv-script
Bravo Script Practice

Se necesita crear un script con las siguientes caracteristicas:

En un directorio se están guardando unos archivos temporales con la nomenclatura invoice_<<YYYYmmdd_xxx>>.txt. Por ejemplo: invoice_20240301_001.txt, invoice_20240301_002.txt,
etc. Se necesita crear un bash script que se ejecute periódicamente para comprimir los archivos por mes de acuerdo con el nombre del archivo y elimine los archivos originales.

Se debe tener que para ejecutar se necesita darle permiso de ejecución chmod +x autoclean.sh

Además, se necesita crear el CronJob que se va a encargar de ejecutarlo donde se puede usar lo siguiente: crontab -e y agregar 0 3 1 * * /<directorio del script>/autoclean.sh