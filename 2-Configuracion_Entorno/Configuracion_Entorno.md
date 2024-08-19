# Configuracion de entorno de desarrollo en Windows para crear ETLs con Python

![Imagen](/Images/create_env.png)

## Introducción

Una de las tareas más comunes para los cientificos, ingenieros o analistas de datos es la creación de ETLs (Extract, Transform, Load) para la limpieza y transformación de datos. En esta clase aprenderas cómo configurar un entorno de desarrollo en Windows, evitarás problemas comunes y aprenderás a instalar las herramientas necesarias para la creación de ETLs con Python.

## Objetivos

Instalar y configurar:

- Anaconda.
- Visual Studio Code.
- Git.
- PowerShell.

## Introducción a PowerShell y la terminal de Windows

PowerShell es una interfaz de línea de comandos (CLI) que permite a los usuarios interactuar con el sistema operativo de Windows. PowerShell es una herramienta muy poderosa que permite a los usuarios automatizar tareas, administrar servicios y configurar el sistema operativo de Windows.

### Comandos básicos de PowerShell para procesos de ETL

Comandos para la administración de archivos y directorios (cmd):

- `cd`: Cambiar de directorio.
- `ls`: Listar archivos y directorios.
- `mkdir`: Crear un directorio.
- `rm`: Eliminar un archivo o directorio.
- `cp`: Copiar un archivo o directorio.
- `mv`: Mover un archivo o directorio.
- `pwd`: Mostrar el directorio actual.
- `cat`: Mostrar el contenido de un archivo.
- `echo`: Imprimir un mensaje en la terminal.
- `clear`: Limpiar la terminal.

Comandos para la administración de archivos y directorios (PowerShell):

- `Get-ChildItem`: Listar archivos y directorios.
- `New-Item`: Crear un archivo o directorio.
- `Remove-Item`: Eliminar un archivo o directorio.
- `Copy-Item`: Copiar un archivo o directorio.
- `Move-Item`: Mover un archivo o directorio.
- `Set-Location`: Cambiar de directorio.
- `Get-Location`: Mostrar el directorio actual.
- `Get-Content`: Mostrar el contenido de un archivo.
- `Clear-Host`: Limpiar la terminal.

## Manejo de entornos virtuales con Anaconda

Un entorno virtual es un espacio de trabajo aislado que nos permite instalar paquetes y librerías sin afectar el entorno global de Python. Anaconda es una distribución de Python que incluye una herramienta llamada `conda` que nos permite crear y gestionar entornos virtuales.

### Crear un entorno virtual

~~~bash
conda create --name mi_entorno python=3.8 pandas numpy
~~~

### Activar un entorno virtual

~~~bash
conda activate mi_entorno
~~~

### Instalar paquetes en un entorno virtual utilizando `conda`

~~~bash
conda install numpy
~~~

### Desinstalar paquetes en un entorno virtual utilizando `conda`

~~~bash
conda uninstall numpy
~~~

### Instalar paquetes en un entorno virtual utilizando `pip`

~~~bash
pip install numpy
~~~

### Desactivar un entorno virtual

~~~bash
conda deactivate
~~~

### Restablecer un entorno virtual

~~~bash
conda list ENV_NAME --revisions
conda install -n ENV_NAME --revision REV_NUM
~~~

### Exportar un entorno virtual

~~~bash
conda export --from-history>ENV.yml
conda export ENVNAME>ENV.yml
~~~

### Importar un entorno virtual

~~~bash
conda env create -n ENVNAME --file ENV.yml
~~~

### Listar entornos virtuales

~~~bash
conda env list
~~~

## Introducción a Git

Git es un sistema de control de versiones que nos permite llevar un registro de los cambios realizados en un proyecto. Git es una herramienta muy poderosa que nos permite colaborar con otros desarrolladores, mantener un historial de cambios y revertir cambios en caso de errores.

### Comandos básicos de Git

Comandos para la administración de repositorios:

- `git init`: Inicializar un repositorio.
- `git clone`: Clonar un repositorio.
- `git add`: Agregar archivos al área de preparación.
- `git commit`: Confirmar los cambios realizados.
- `git push`: Subir los cambios al repositorio remoto.
- `git pull`: Descargar los cambios del repositorio remoto.
