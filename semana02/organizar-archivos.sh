#!/bin/bash
#
# organizar-archivos.sh - Descomprime, clasifica por extension y asigna permisos
#Uso:. ./organizar-archivos.sh

# paso 1: Descomprimir el paquete de entrada en un directorio de trabajo
mkdir -p /tmp/trabajo_s02
tar -xzf ../recursos/archivos-mezclados.tar.gz -C /tmp/trabajo_s02

