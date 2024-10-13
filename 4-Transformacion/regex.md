## Guía de la Estructura de una Expresión Regular

Las expresiones regulares son como un mini-lenguaje para describir patrones de texto.  Aprender su estructura te permitirá aprovechar todo su poder. Aquí te presento una guía con los elementos clave:

**1. Caracteres Literales:**

* La forma más básica. Simplemente coinciden con el mismo carácter en el texto.
    * Ejemplo: `a` coincide con la letra "a", `1` coincide con el dígito "1".

**2. Metacaracteres:**

* Caracteres especiales con significado propio, que permiten crear patrones más flexibles. Algunos de los más comunes:
    * `.`: Coincide con cualquier carácter (excepto nueva línea).
    * `^`: Coincide con el inicio de una cadena.
    * `$`: Coincide con el final de una cadena.
    * `*`: Coincide con cero o más repeticiones del carácter anterior.
    * `+`: Coincide con una o más repeticiones del carácter anterior.
    * `?`: Coincide con cero o una repetición del carácter anterior.
    * `{m}`: Coincide con exactamente `m` repeticiones del carácter anterior.
    * `{m,n}`: Coincide con al menos `m` y como máximo `n` repeticiones del carácter anterior.
    * `[]`: Define un conjunto de caracteres. `[abc]` coincide con "a", "b" o "c".
    * `|`: Actúa como "o". `a|b` coincide con "a" o "b".
    * `()`: Define un grupo de captura. Permite extraer partes específicas de la coincidencia.
    * `\`: Escapa un metacaracter o define una secuencia especial. `\.` coincide con un punto literal.

**3. Clases de Caracteres:**

* Atajos para conjuntos de caracteres comunes:
    * `\d`: Coincide con cualquier dígito (equivalente a `[0-9]`).
    * `\D`: Coincide con cualquier carácter que no sea un dígito.
    * `\s`: Coincide con cualquier espacio en blanco.
    * `\S`: Coincide con cualquier carácter que no sea un espacio en blanco.
    * `\w`: Coincide con cualquier carácter alfanumérico y el guión bajo (equivalente a `[a-zA-Z0-9_]`).
    * `\W`: Coincide con cualquier carácter que no sea alfanumérico ni guión bajo.

**4. Secuencias de Escape:**

* Combinaciones que empiezan con `\` para representar caracteres especiales:
    * `\n`: Nueva línea.
    * `\t`: Tabulación.
    * `\r`: Retorno de carro.

**5. Anclas:**

* Caracteres que coinciden con una posición en la cadena, no con un carácter específico:
    * `^`: Inicio de la cadena.
    * `$`: Final de la cadena.
    * `\b`: Límite de palabra.
    * `\B`: No límite de palabra.

**6. Cuantificadores:**

* Indican cuántas veces debe aparecer un elemento:
    * `*`: Cero o más veces.
    * `+`: Una o más veces.
    * `?`: Cero o una vez.
    * `{m}`: Exactamente `m` veces.
    * `{m,n}`: Entre `m` y `n` veces.

**7. Grupos de Captura:**

* Permiten extraer partes específicas de la coincidencia:
    * `(patrón)`: Define un grupo de captura.

**8. Flags:**

* Modifican el comportamiento de la expresión regular:
    * `re.IGNORECASE`: Ignora mayúsculas y minúsculas.
    * `re.MULTILINE`: Habilita el modo multilínea.
    * `re.DOTALL`: El metacaracter `.` coincide con cualquier carácter, incluyendo nueva línea.

**Ejemplo:**

La expresión regular `^(\d{3})-(\d{2})-(\d{4})$` valida un número de teléfono en formato "XXX-XX-XXXX":

* `^`: Inicio de la cadena.
* `(\d{3})`: Grupo de captura 1: tres dígitos.
* `-`: Guión literal.
* `(\d{2})`: Grupo de captura 2: dos dígitos.
* `-`: Guión literal.
* `(\d{4})`: Grupo de captura 3: cuatro dígitos.
* `$`: Final de la cadena.

Con esta guía, puedes empezar a construir tus propias expresiones regulares para resolver diversas tareas de procesamiento de texto.