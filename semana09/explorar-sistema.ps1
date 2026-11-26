# explorar-sistema.ps1 - Recorre la jerarquia del
# Uso: pwsh ./explorar-sistema.ps1

# Bash: echo "Directorio: /etc" ; ls-lh /etc | head -n 6
Write-Output "======================================="
Write-Output "Directorio: /etc"
Write-Output "Funcion: Guarda los archivos de configuracion del sistema en texto plano."
Get-ChildItem -Path /etc | Select-Object -First 6

# Bash: echo "Directorio: /var" ; ls -lh /var | head -n 6
Write-Output "========================================"
Write-Output "Directorio: /var"
Write-Output "Funcion: Almacena datos que cambian durante la operacion como registros, cola y cache."
Get-ChildItem -Path /var | Select-Object -First 6

# Bash: echo "Directorio: /home" ; ls -lh /home | head -n 6
Write-Output "========================================"
Write-Output "Directorio: /home"
Write-Output "Funcion: contiene un subdirectorio por cada usuario con sus archivos personales."
Get-ChildItem -Path /home | Select-Object -First 6

# Bash: echo "Directorio: /bin" ; ls -lh /bin | head -n 6
Write-Output "========================================"
Write-Output "Directorio: /bin"
Write-Output "Funcion: Contiene los ejecutables esenciales del sistema disponibles para todos."
Get-ChildItem -Path /bin | Select-Object -First 6

# Bash: echo "Directorio: /tmp" ; ls -lh /tmp | head -n 6
Write-Output "========================================"
Write-Output "Directorio: /tmp"
Write-Output "Funcion: Espacio temporal para archivos de sesion que se limpian al reiniciar."
Get-ChildItem -Path /tmp | Select-Object -First 6

# Bash: echo "Directorio: /proc" ; ls -lh /proc | head -n 6
Write-Output "=========================================="
Write-Output "Directorio: /proc"
Write-Output "Funcion: Sistema de archivos virtual con informacion viva de kernel y procesos."
Get-ChildItem -Path /proc | Select-Object -First 6









