# Makefile para gestión de diagramas PlantUML

.PHONY: all png svg clean help open

# Directorio de salida
OUT_DIR := out

# Archivos fuente
SOURCES := $(wildcard *.puml)
PNG_FILES := $(patsubst %.puml,$(OUT_DIR)/%.png,$(SOURCES))
SVG_FILES := $(patsubst %.puml,$(OUT_DIR)/%.svg,$(SOURCES))

# Objetivo por defecto
all: png svg
	@echo "✅ Todos los diagramas generados"

# Generar PNG
png: $(PNG_FILES)
	@echo "✅ Archivos PNG generados en $(OUT_DIR)/"

# Generar SVG
svg: $(SVG_FILES)
	@echo "✅ Archivos SVG generados en $(OUT_DIR)/"

# Regla para generar PNG
$(OUT_DIR)/%.png: %.puml | $(OUT_DIR)
	@echo "📊 Generando $@..."
	@plantuml -tpng -o $(OUT_DIR) $<

# Regla para generar SVG
$(OUT_DIR)/%.svg: %.puml | $(OUT_DIR)
	@echo "📊 Generando $@..."
	@plantuml -tsvg -o $(OUT_DIR) $<

# Crear directorio de salida
$(OUT_DIR):
	@mkdir -p $(OUT_DIR)

# Limpiar archivos generados
clean:
	@echo "🧹 Limpiando archivos generados..."
	@rm -rf $(OUT_DIR)
	@echo "✅ Limpieza completa"

# Abrir carpeta de salida (macOS)
open: all
	@open $(OUT_DIR)

# Mostrar ayuda
help:
	@echo "Comandos disponibles:"
	@echo "  make          - Generar todos los diagramas (PNG y SVG)"
	@echo "  make png      - Generar solo archivos PNG"
	@echo "  make svg      - Generar solo archivos SVG"
	@echo "  make clean    - Eliminar archivos generados"
	@echo "  make open     - Generar y abrir carpeta de salida"
	@echo "  make help     - Mostrar esta ayuda"
