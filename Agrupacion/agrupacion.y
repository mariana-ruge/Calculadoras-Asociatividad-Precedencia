%{
/*
    Importar librerías
*/

#include <stdio.h> // Standard input-output header
#include <stdlib.h> // Gestión de memoria, conversión de tipos de datos.
#include <math.h> // Funciones matemáticas, como pow (para potencia) y abs (para valor absoluto)

// Manejar errores y la tokenización
void yyerror(const char *s); // Declaración de la función de manejo de errores.
int yylex(void); // Función que realiza el análisis léxico (tokenización)

int error_occurred = 0;  // Variable global para controlar si ocurrió un error

%}

%union {
    double val; // Almacenar valores de tipo double, se usa para tokens que usan números de tipo flotante
}

%token <val> NUMBER // Token para números.
%token ADD SUB MUL DIV EXP EOL ABS // Token para operadores y delimitadores.

%left ADD SUB // Última precedencia, suma y resta.
%left MUL DIV // Precedencia media, multiplicación y división.
%right EXP  // La exponenciación tiene que tener mayor precedencia.
%right UMINUS // Operador unario negativo.

%type <val> expr // Variable para las expresiones 'val'.

%%

// Reglas de análisis sintáctico
calculo:
    expr EOL { // Se realiza el cálculo en una sola línea.
        if (!error_occurred) { // Verifica si ocurrió un error durante la evaluación.
            printf("= %.2f\n", $1); // Se formatea el resultado a dos decimales.
        }
        error_occurred = 0;  // Se resetea la bandera de error hasta la siguiente entrada.
    }
    | calculo expr EOL { // Permite múltiples expresiones.
        if (!error_occurred) { // Si no se presentan excepciones.
            printf("= %.2f\n", $2); // Se imprime en la consola el resultado.
        }
        error_occurred = 0;  // Reinicia el error hasta la siguiente bandera.
    }
    ;

expr:
    NUMBER { $$ = $1; } // Asigna el valor a una variable.
    | expr ADD expr { $$ = $1 + $3; } // Regla de la suma.
    | expr SUB expr { $$ = $1 - $3; } // Regla de la resta.
    | expr MUL expr { $$ = $1 * $3; } // Regla de la multiplicación.
    | expr DIV expr { // Regla de la división.
        if ($3 == 0) { // Evaluar si el divisor es 0.
            yyerror("Error: División por cero"); // Mostrar el error.
            error_occurred = 1;  // Crear la bandera del error.
        } else {
            $$ = $1 / $3; // Realizar la división.
        }
    }
    | expr EXP expr { $$ = pow($1, $3); } // Regla para la potenciación.
    | SUB expr %prec UMINUS { $$ = -$2; } // Operador unario negativo.
    | '{' expr '}' { $$ = $2; } // Manejo de llaves.
    | '[' expr ']' { $$ = $2; } // Manejo de corchetes.
    | '(' expr ')' { $$ = $2; } // Manejo de paréntesis.
    | ABS expr ABS { $$ = fabs($2); }  // Declarar el delimitador del valor absoluto.
    | '|' expr '|' { $$ = fabs($2); }  // Declarar la expresión del valor absoluto con '|'.
    ;

%%

// Manejo de errores, se imprime el mensaje.
void yyerror(const char *s) {
    fprintf(stderr, "%s\n", s); // Imprimir el error en la consola.
}

// Función main.
int main(void) {
    printf("Ingrese una expresión matemática:\n");
    return yyparse(); // Llamar al parser.
}
