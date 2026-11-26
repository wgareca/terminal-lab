# Casos de prueba de validador.sh

| Caso | Entrada | codigo esperado |
| --- | --- | --- |
| Sin argumentos | (ninguno) | 2 |
| Ruta inexistente | /no/existe | 1 |
| Directorio | /tmp | 0 |
| Archivo regular legible | /etc/hostname | 0 |
| Archivo sin permiso lectura | ./sin-lectura.txt | 3 |
| Archivo vacio | ./vacio.txt | 0 |
