#!/bin/bash
#
# organizar-archivos.sh - Descomprime, clasifica por extension y asigna permisos
#Uso:. ./organizar-archivos.sh

# paso 1: Descomprimir el paquete de entrada en un directorio de trabajo
mkdir -p /tmp/trabajo_s02
tar -xzf ../recursos/archivos-mezclados.tar.gz -C /tmp/trabajo_s02

# paso 2: Crear subdirectorios y clasificar los archivos por extension con comodines
mkdir -p organized/{scripts,documentos,imagenes,registros,otros}
mv /tmp/trabajo_s02/*.sh organized/scripts/ 2>/dev/null || true
mv /tmp/trabajo_s02/*.txt organized/documentos/ 2>/dev/null || true
mv /tmp/trabajo_s02/*.png organized/imagenes/ 2>/dev/null || true
mv /tmp/trabajo_s02/*.log organized/registros/ 2>/dev/null || true
mv /tmp/trabajo_s02/* organized/otros/ 2>/dev/null || true
rm -rf /tmp/trabajo_s02

# paso 3: aplicar permisos en octal por categoria y a los directorios
chmod 755 organized organized/*
chmod 755 organized/scripts/*
chmod 644 organized/documentos/* organized/imagenes/*
chmod 444 organized/registros/* organized/otros/*

# paso 4: Imprimir resumen final de archivos por categoria
echo "========================================"
echo "Resumen de archivos organizados:"
echo "Scripts:    $(ls -1 organized/scripts/ | wc -l)"
echo "Documentos: $(ls -1 organized/documentos/ | wc -l)"
echo "Imagenes:   $(ls -1 organized/imagenes/ | wc -l)"
echo "Registros:  $(ls -1 organized/registros/ | wc -l)"
echo "Otros:      $(ls -1 organized/otros/ | wc -l)"
echo "========================================="
