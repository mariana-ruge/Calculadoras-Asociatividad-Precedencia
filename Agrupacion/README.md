# Calculadora BISON - Precedencia de signos de agrupación invertida

## Descripción
En este repositorio se encuentra el desarrollo de una cálculadora básica implementada en los lenguajes Flex y Bison. La cálculadora realiza las 4 operaciones matemáticas básicas (suma, resta, multiplicación y división), además se manejan varios casos de error que puedan ser generados por entradas del usuario. 

**Importante, esta cálculadora tiene la precedencia de los signos de agrupación al revés, significa que leerá**: 

	1. Llaves {}
	2. Corchetes []
	3. Paréntesis ()


### Requisitos
1 .**Tener GCC  (Compilador de C):**
Este proyecto necesita el compilador de C para generar los ejecutables necesarios de Flex y Bison. La versión usada para el desarrollo es la siguiente:

    gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0

Puedes verificar si tienes instalado el compilador de C con el siguiente comando:
```bash
gcc --version
```
En caso de no tener el compilador de C en tu entorno local, puedes instalarlo  ejecutando en tu terminal el siguiente comando:
```bash
sudo apt-get update
sudo apt- get  install gcc
```

2 .  **Instalar Bison:**
También es necesario una herramienta de análisis sintáctico, en este caso deberás instalar Bison. La versión de Bison usada para este proyecto es la siguiente:
```bash
	bison (GNU Bison) 3.8.2
```
Puedes verificar la versión e instalación de Bison con el siguiente comando:
```bash
	bison --version
```
En caso de que no tengas instalado Bison en tú entorno local, puedes instalarlo con el siguiente comando:
```bash
sudo apt-get update
sudo apt- get  install bison
```

3 .  **Instalar Flex:**
Se debe instalar una herramienta para el análisis léxico, este generará un scanner a partir de un conjunto de reglas, conocida como Flex.

La versión de Flex usada en este proyecto es:
```bash
 flex 2.6.4
```
Puedes verificar la instalación y versión de flex con el siguiente comando:
```bash
 flex --version
```
En caso de no tenerlo instalado, por favor ejecuta en tu terminal.
```bash
 sudo apt-get update
 sudo apt-get install flex
```
Con esto, ya están listas las herramientas para correr el proyecto.

### Ejecuta el proyecto

1.  Compila el proyecto, primero con BISON y después con C y Flex. De la siguiente forma.

	1.1: Compila con bison
	```bash
		bison -d agrupacion.y
    ```
	Esto genera los archivos:
	- agrupacion.tab.c
	- agrupacion.tab.h

	1.2 Compila con flex
	```bash
		flex agrupacion.l
    ```

	1.2: Compila con el compilador de c y flex

    ```bash
		  gcc -o calc agrupacion.tab.c lex.yy.c -ll -lm
    ```

2. Si la compilación se realizó sin errores, puedes correr el programa con el siguiente comando.

    ```
	./agrupacion
	```