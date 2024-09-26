%{
#include "agrupacion.tab.h" // Incluye el archivo de encabezado generado por Yacc, que contiene definiciones de tokens y tipos de datos.
#include <stdlib.h>   // Incluye la librería estándar para funciones de gestión de memoria y conversión de tipos.
#include <ctype.h>    // Incluye la librería para funciones de manejo de caracteres, como isdigit().
%}

%%


[0-9]+\.[0-9]+    { yylval.val = atof(yytext); return NUMBER; } // Coincide con números flotantes.
[0-9]+            { yylval.val = atof(yytext); return NUMBER; } // Coincide con números enteros.
"+"                { return ADD; } // Coincide con el signo de adición.
"-"                { return SUB; } // Coincide con el signo de sustracción.
"*"                { return MUL; } // Coincide con el signo de multiplicación.
"/"                { return DIV; } // Coincide con el signo de división.
"^"                { return EXP; } // Coincide con el símbolo de exponentiación (potencia).
"\n"               { return EOL; } // Coincide con un salto de línea.
"|"                { return ABS; } // Coincide con el símbolo de valor absoluto.
[ \t]              { /* Ignorar espacios en blanco */ } // Ignora espacios y tabulaciones.
.                  { /* Ignorar otros caracteres no permitidos */ } // Ignora caracteres no definidos.

%%

int yywrap(void) {
    return 1; // Indica que no hay más archivos para procesar.
}
