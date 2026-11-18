# semana 02 - archivos, permisos y modelo multiususario

## que hace
descomprime 50 archivos, los clasifica por extension usando comodines y les asigna permisos en octal.

## archivos
- `organizar-archivos.sh`- script principal
- `README.md` - documentacion de la semana

## como se ejecuta
chmod +x organizar-archivos.sh
./organizar-archivos.sh

## que se aprendio
- permisos en linux (r, w, x) y notacion octal (755, 644, 444).
- uso de comodines (*, ?, {}) y descompresion con tar -xzf.

## que quedo pendiente
- nada.

## evidencia de clasificacion (ls -lR organized/)
organized/:
total 20
drwxr-xr-x 2 wgareca wgareca 4096 Nov 18 01:55 documentos
drwxr-xr-x 2 wgareca wgareca 4096 Nov 18 01:55 imagenes
drwxr-xr-x 2 wgareca wgareca 4096 Nov 18 01:55 otros
drwxr-xr-x 2 wgareca wgareca 4096 Nov 18 01:55 registros
drwxr-xr-x 2 wgareca wgareca 4096 Nov 18 01:55 scripts

organized/documentos:
total 0
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 doc1.txt
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 doc10.txt
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 doc2.txt
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 doc3.txt
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 doc4.txt
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 doc5.txt
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 doc6.txt
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 doc7.txt
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 doc8.txt
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 doc9.txt

organized/imagenes:
total 0
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 img1.png
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 img10.png
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 img2.png
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 img3.png
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 img4.png
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 img5.png
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 img6.png
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 img7.png
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 img8.png
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 img9.png

organized/otros:
total 0
-r--r--r-- 1 wgareca wgareca 0 Nov 18 00:36 dato1.csv
-r--r--r-- 1 wgareca wgareca 0 Nov 18 00:36 dato10.csv
-r--r--r-- 1 wgareca wgareca 0 Nov 18 00:36 dato2.csv
-r--r--r-- 1 wgareca wgareca 0 Nov 18 00:36 dato3.csv
-r--r--r-- 1 wgareca wgareca 0 Nov 18 00:36 dato4.csv
-r--r--r-- 1 wgareca wgareca 0 Nov 18 00:36 dato5.csv
-r--r--r-- 1 wgareca wgareca 0 Nov 18 00:36 dato6.csv
-r--r--r-- 1 wgareca wgareca 0 Nov 18 00:36 dato7.csv
-r--r--r-- 1 wgareca wgareca 0 Nov 18 00:36 dato8.csv
-r--r--r-- 1 wgareca wgareca 0 Nov 18 00:36 dato9.csv

organized/registros:
total 0
-r--r--r-- 1 wgareca wgareca 0 Nov 18 00:36 app1.log
-r--r--r-- 1 wgareca wgareca 0 Nov 18 00:36 app10.log
-r--r--r-- 1 wgareca wgareca 0 Nov 18 00:36 app2.log
-r--r--r-- 1 wgareca wgareca 0 Nov 18 00:36 app3.log
-r--r--r-- 1 wgareca wgareca 0 Nov 18 00:36 app4.log
-r--r--r-- 1 wgareca wgareca 0 Nov 18 00:36 app5.log
-r--r--r-- 1 wgareca wgareca 0 Nov 18 00:36 app6.log
-r--r--r-- 1 wgareca wgareca 0 Nov 18 00:36 app7.log
-r--r--r-- 1 wgareca wgareca 0 Nov 18 00:36 app8.log
-r--r--r-- 1 wgareca wgareca 0 Nov 18 00:36 app9.log

organized/scripts:
total 0
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 script1.sh
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 script10.sh
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 script2.sh
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 script3.sh
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 script4.sh
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 script5.sh
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 script6.sh
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 script7.sh
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 script8.sh
-rw-rw-r-- 1 wgareca wgareca 0 Nov 18 00:36 script9.sh
