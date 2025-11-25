# Diagramas PlantUML - Sistema Multiagente

Este repositorio contiene los diagramas UML del Sistema Multiagente de Gestión Digital.

## 📋 Diagramas

- **`diagrama-entorno.puml`** - Diagrama de entorno mostrando la arquitectura del sistema, servicios externos y flujos de interacción
- **`diagrama-clases.puml`** - Diagrama de clases con la estructura orientada a objetos del sistema

## 🚀 Uso rápido

### Opción 1: Script Bash (recomendado para macOS)

```bash
chmod +x export.sh
./export.sh
```

Los diagramas PNG y SVG se generarán en la carpeta `out/`.

### Opción 2: Makefile

```bash
# Generar todos los diagramas
make

# Solo PNG
make png

# Solo SVG
make svg

# Limpiar archivos generados
make clean

# Generar y abrir carpeta
make open

# Ver ayuda
make help
```

### Opción 3: Comandos directos

```bash
# Crear carpeta de salida
mkdir -p out

# Exportar a PNG
plantuml -tpng -o out *.puml

# Exportar a SVG
plantuml -tsvg -o out *.puml
```

## 📦 Requisitos

### Instalación en macOS

```bash
brew update
brew install openjdk graphviz plantuml
```

Verificar instalación:
```bash
plantuml -version
```

### VS Code (opcional)

Instalar extensión PlantUML:
```bash
code --install-extension jebbs.plantuml
```

**Vista previa en VS Code:**
- Abrir archivo `.puml`
- Presionar `Alt+D` (o `Option+D`)
- O: `Cmd+Shift+P` → "PlantUML: Preview Current Diagram"

**Exportar desde VS Code:**
- `Cmd+Shift+P` → "PlantUML: Export Current Diagram"

## 📁 Estructura del proyecto

```
ProyectU-Diagrama/
├── diagrama-entorno.puml    # Diagrama de entorno
├── diagrama-clases.puml     # Diagrama de clases
├── export.sh                # Script de exportación
├── Makefile                 # Automatización con Make
├── README.md                # Este archivo
└── out/                     # Diagramas generados (PNG/SVG)
```

## 🎨 Formatos de salida

- **PNG** - Para documentación, presentaciones y uso general
- **SVG** - Vectorial, ideal para web y documentación técnica (escalable sin pérdida de calidad)

## 📝 Notas

- Los archivos generados se guardan en `out/` (ignorado en git)
- Los diagramas usan layout optimizado para reducir cruces de líneas
- El diagrama de entorno usa orientación horizontal (`left to right`)
- Incluye leyendas explicativas para facilitar comprensión

## 🔧 Troubleshooting

Si encuentras errores:

1. Verificar que PlantUML esté instalado: `plantuml -version`
2. Verificar que Graphviz esté instalado: `dot -V`
3. Si usas VS Code, reiniciar la ventana: `Cmd+Shift+P` → "Reload Window"

## 📄 Licencia

Proyecto académico - Sistema Multiagente de Gestión Digital
