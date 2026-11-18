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
