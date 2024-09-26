# Calculadoras Asociatividad - Precedencia
Realizado por:
- Julian Esteban Rincón Rodríguez
- Mariana Ruge Vargas
- Andrés Sebastian Urrego Amaya
- Sebastián Cortés Briceño

## Descripción
En este repositorio se almacenan 3 proyectos, el primero es un calculadora básica que hace las 4 operaciones aritméticas. Pero cada programa corresponde a una calculadora con reglas específicas de precedencia y asociatividad:
1. **Calculadora básica con precedencia normal**: Esta calculadora sigue las reglas estándar de precedencia, donde:
Paréntesis tienen mayor precedencia: Multiplicación y división tienen mayor precedencia que la suma y resta. Operadores con igual precedencia se evalúan de izquierda a derecha (asociatividad izquierda).
2. **Calculadora con precedencia invertida**: En esta versión, las reglas de precedencia están invertidas. Las operaciones se ejecutan en el siguiente orden:
Suma y resta tienen mayor precedencia que la multiplicación y división.
Los paréntesis también tienen menor precedencia que los operadores.
3. **Calculadora con menor precedencia en signos de agrupación**: En este caso, los signos de agrupación (paréntesis, corchetes, llaves) tienen una precedencia menor que los operadores aritméticos. Esto significa que las operaciones se ejecutan antes de que se evalúen los valores dentro de los signos de agrupación.

## Uso

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

## Clonar el proyecto en local

1. En tu terminal, ubicate en la carpeta del proyecto donde vas a clonar este repositorio.
```bash
cd CarpetaProyecto
```
2. Ejecuta el siguiente comando para clonar en local, este proyecto por medio de git.
```bash
 git clone https://github.com/mariana-ruge/Calculadoras-Asociatividad-Precedencia/tree/master
```
3. Ubicate en la carpeta del repositorio llamada 'Calculadoras-Asociatividad-Precedencia'
```bash
cd 'Calculadoras-Asociatividad-Precedencia'
```
4. Una vez haya finalizado, deberías ver las carpetas de las calculadoras.
- **Agrupación**: Menor precedencia a los signos de agrupación.
- **Calculadora**: Es la calculadora básica, sin ninguna alteración.
- **Suma a potencia**: Le da más prelación a la suma que a la potencia en el orden aritmético.

5. Para ver el uso de cada una de las calculadoras, puedes consultar el README de cada una, que esta en las correspondientes carpertas.
