# Este bloque de código define un parámetro llamado $ProjectName que es obligatorio. 
# Este parámetro será el nombre del proyecto y se usará para crear la estructura de carpetas y archivos.
param(
    [Parameter(Mandatory = $true)]
    [string]$ProjectName
)

# Este comando crea una nueva carpeta con el nombre especificado en $ProjectName.
New-Item -Path $ProjectName -ItemType Directory

# Estos comandos crean varias subcarpetas dentro de la carpeta principal del proyecto.
# Las subcarpetas son: Config, Data, Notebooks, Pipelines y Logs.
New-Item -Path "$ProjectName\Config" -ItemType Directory
New-Item -Path "$ProjectName\Data" -ItemType Directory
New-Item -Path "$ProjectName\Notebooks" -ItemType Directory
New-Item -Path "$ProjectName\Pipelines" -ItemType Directory
New-Item -Path "$ProjectName\Logs" -ItemType Directory

# Estos comandos cambian el directorio actual a la carpeta del proyecto y luego inicializan un nuevo repositorio Git en esa carpeta.
Set-Location $ProjectName
git init

# Estos comandos crean un archivo llamado README.md en la carpeta del proyecto y añaden una línea de texto que contiene el nombre del proyecto.
New-Item -Path "README.md" -ItemType File
Add-Content -Path "README.md" -Value "# $ProjectName"

# Estos comandos crean un nuevo entorno Anaconda llamado como el proyecto con Python 3.8 y luego activan ese entorno.
conda create -n $ProjectName python -y
conda activate $ProjectName

# Este comando abre Visual Studio Code en la carpeta del proyecto.
code .