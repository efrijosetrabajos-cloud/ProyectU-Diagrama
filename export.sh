#!/bin/bash

# Script para exportar diagramas PlantUML a PNG y SVG
# Uso: ./export.sh

set -e

# Colores para output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}📊 Exportando diagramas PlantUML...${NC}\n"

# Crear directorio de salida si no existe
mkdir -p out

# Verificar que PlantUML esté instalado
if ! command -v plantuml &> /dev/null; then
    echo "❌ PlantUML no está instalado."
    echo "Instálalo con: brew install plantuml"
    exit 1
fi

# Exportar todos los diagramas .puml a PNG
echo -e "${GREEN}Generando archivos PNG...${NC}"
plantuml -tpng -o out *.puml

# Exportar todos los diagramas .puml a SVG
echo -e "${GREEN}Generando archivos SVG...${NC}"
plantuml -tsvg -o out *.puml

echo -e "\n${GREEN}✅ Diagramas exportados exitosamente en ./out/${NC}"
echo "Archivos generados:"
ls -lh out/

# Abrir carpeta de salida (opcional, comentado por defecto)
# open out/
