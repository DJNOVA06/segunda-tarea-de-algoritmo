//ejercicio secuenciales y condicionales simples = basico
//Ejercicio 1: Calculadora de vuelto
//Pedir costo y dinero recibido. Calcular y mostrar el vuelto o advertir si no alcanza.
funcion Calculadora_de_vuelto
	//definir las variables que vamos a usar 
	//darles el valor dependiendo si se calcula, se da o se lee
	definir costo, dinero, vuelto Como Real
	//costo y dinero se lee
	//vuelto se calcula
	costo=0;dinero=0;vuelto=0 
	//pedir al usuario los valores de las variables
	escribir "presente el costo del producto..."
	leer costo
	escribir "cantidad de dinero con el que va a pagar..."
	leer dinero
	escribir "_________________________________________"
	//presentando la formula y calculando el recultado del pago
	escribir "calculando el pago = ", costo, " - ", dinero
	vuelto = costo - dinero
	//usando la condicion (si...entonces, sino) para verificar si paso completo, pago demas o le falta
	si costo < dinero Entonces
		escribir "tiene como vuelto = $", abs(vuelto)
		escribir "gracias por si compra, que tenga un buen dia..."
	sino
		si costo > dinero Entonces
			escribir "el pago no alcanza, usted debe $", abs(vuelto)
		sino
			escribir "gracias por su compra, que tenga un buen dia"
		FinSi
	FinSi
FinFuncion

//____________________________________________________________________________________________________________________________________

//ejercicio secuenciales y condicionales simples = basico
//Ejercicio 2: Conversor de kilogramos a libras y viceversa
//Convertir entre kilogramos y libras. Mostrar el resultado.
Funcion Conversor_de_kilogramos_a_libras_y_viceversa
	//definir las variables que vamos a usar 
	//darles el valor dependiendo si se calcula, se da o se lee
	definir pedido Como Caracter
	definir kilos, libras Como Real
	definir resultado Como Real
	//kilos,pedido y libras se leen
	//resultado se calcula
	kilos=0;libras=0;resultado=0
	pedido=" "
	//pedir al usuario el valor de la variable
	escribir "¿Que desea medir? : (libras a kilos) o (kilos a libras) ?"
	leer pedido
	//con la condicional (si...Entonces, sino) verificamos que desea convertir primero, asi pedir los valores de lo que desea convertir
	//presentando las formulas y calculando
	si pedido = "libras a kilos" Entonces
		escribir "ingrese la candidad de libras que quiera convertir..."
		leer libras
		resultado = libras * (1/2.2046)
		escribir "formula --> libras * (1kg/2.2046lb)"
		escribir "kg = ",libras ," * (1kg/2.2046lb)"
		escribir "kg = ", resultado
		//esta formula se usa para que muestre el decimal con dos cifras
		resultado = redon(resultado*100) / 100
		escribir libras, " lb es igual a ", resultado, " kg"
	SiNo
		escribir "ingrese la candidad de kilos que quiera convertir..."
		leer kilos
		resultado = kilos * (2.2046/1)
		escribir "formula --> kilos * (2.2046/1)"
		escribir "lb = ",kilos ," * (2.2046lb/1kg)"
		escribir "lb = ",resultado
		//esta formula se usa para que muestre el decimal con dos cifras
		resultado = redon(resultado*100) / 100
		escribir kilos, " kg es igual a ", resultado, " lb"
	FinSi
FinFuncion

//____________________________________________________________________________________________________________________________________

//ejercicio secuenciales y condicionales simples = basico
//Ejercicio 3: Calculadora de descuentos
//Aplicar 0%, 5% o 10% de descuento según el monto de compra.
funcion Calculadora_de_descuentos
	//definir las variables que se usaran
	definir descuento como entero 
	definir precio, resultado, resultado_final Como Real
	//el descuento ya se lo tienes, que es 0,5,10 %
	//mientras que los resultados, se calculan
	descuento = 0; descuento = 5; descuento = 10; 
	resultado = 0; resultado_final=0
	//pedir al usuario los valores de las variables que vamos a usar
	escribir "ingrese el precio del producto..."
	leer precio
	escribir "verificando si requiere descuento..."
	//dependiendo del valor y las condiciones que se da, usando la condicional (si...entonces, sino)...
	//se da un valor, ya sea con descuento del 5% o del 10%
	//o no se lleva descuento
	si precio <= 100 Entonces
		escribir "su precio es menor e igual a 100, no requiere descuento"
		escribir "tieniendo el mismo precio = $",precio 
	SiNo
		si precio > 100 y precio <= 200 Entonces
			escribir "su precio es mayor de 100 y menor e igual a 200, le damos un 5% de descuento"
			descuento = 5
			resultado = precio * descuento/100
			resultado_final = precio - resultado
			escribir resultado_final
			escribir "tiene como valor a pagar = $", resultado_final
		SiNo
			escribir "su precio es mas de 200, le damos un 10% de descuento"
			descuento = 10
			resultado = precio * descuento/100
			resultado_final = precio - resultado
			escribir resultado_final
			escribir "tiene como valor a pagar = $", resultado_final
		FinSi
	FinSi
FinFuncion

//____________________________________________________________________________________________________________________________________

//ejercicio secuenciales y condicionales simples = basico
//Ejercicio 4: Cálculo del IVA (15%)
//Pedir un precio sin IVA y calcular el precio con IVA incluido del 15% con un descuento del 30%
funcion Cálculo_del_IVA
	//de define las variables que vamos a usar
	definir precio, iva,iva_precio, descuento, descuento_precio Como Real
	definir iva_final , precio_final, descuento_final Como Real
	//representando los valores que tienen
	//iva y descuento tienen valores determinados
	//precio, iva_final e iva_precio rerquieren un valor
	precio = 0; iva = 0.15; descuento = 0.30
	iva_final = 0; precio_final = 0
	//pedir al usuario el valor de las variables restantes
	escribir "ingrese el precio de su compra..."
	leer precio
	//calcular el valor que se pidio para poder calcular con el descuento y el iva
	escribir "calculando el precio con IVA incluido del 15% con un descuento del 30%"
	iva = 0.15
	descuento = 0.30
	//primero se aya el descuento con el precio, usando la formula y calculandola, sacando el resultado
	escribir "primero, sacamos el precio con el descuento..."
	descuento_precio = precio * descuento
	descuento_final = precio - descuento_precio
	escribir "precio con descuento = ", precio " * " descuento
	escribir "precio con descuento = ", precio  *  descuento
	escribir "precio final = ", precio " - " descuento_precio
	escribir "precio final = ", precio - descuento_precio
	escribir "el precio con descuento es = $ ",descuento_final
	escribir "________________________________________________________"
	//despues se usa el resultado del descuento con el precio para sacar el iva, usando la formula y calculando la respuesta
	escribir "ahora le agregamos el iva al precio final..."
	iva_precio = descuento_final * iva
	iva_final = descuento_final + iva_precio
	escribir "iva con el precio = ", descuento_final " * " iva
	escribir "iva con el precio = ", descuento_final  *  iva
	escribir "precio total = ", descuento_final " + " iva_precio
	escribir "precio total = ", descuento_final + iva_precio
	escribir "teniendo un precio total con el iva y el descuento = $ ",iva_final
FinFuncion

//____________________________________________________________________________________________________________________________________

//ejercicio secuenciales y condicionales simples = basico
//Ejercicio 5: Comparación de precios entre dos productos
//Pedir dos precios. Mostrar cuál es mayor, menor o si son iguales.
Funcion Comparación_de_precios_entre_dos_productos
	//se define las variables que vamos a usar
	definir precio_1 , precio_2 Como Real
	//teniendo como precio_1 y precio_2 en 0, ya que se tienen que Leer 
	precio_1 = 0; precio_2 = 0
	//pedir al usuario que de los valores de las variables
	escribir "ingrese los dos precios de los productos..."
	leer precio_1
	leer precio_2
	//utilizando la condicional (si...Entonces, sino) para verificar cual es mayor, menor o son iguales
	//y representando cual de ellos es mayor y menor, asi sacando una respuesta a lo que se pidio
	escribir "verificando cual es mayor, menor o si son iguales..."
	si precio_1 > precio_2 Entonces
		escribir "$ ", precio_1, " es mayor"
		escribir "$ ", precio_2, " es menor"
	SiNo 
		si precio_1 < precio_2 Entonces
			escribir "$ ", precio_2, " es mayor"
			escribir "$ ", precio_1, " es menor"
		SiNo
			escribir "los dos son igual precio"
		FinSi
	FinSi
FinFuncion

//____________________________________________________________________________________________________________________________________

//ejercicio secuenciales y condicionales simples = basico
//Ejercicio 6: Clasificador de edad del cliente
//Pedir edad. Indicar si es niño (0-12), joven (13-17), adulto (18-64), adulto mayor (65+).
Funcion Clasificador_de_edad_del_cliente
	//definir las variables que vamos a usar
	definir edad Como Entero
	//el valor de edad se lee, quedando como 0
	edad = 0
	//pedir al usuario el valor de la variable
	escribir "ingrese su edad, por favor..."
	leer edad
	//utilizando la condicional (si...entonces, sino) para verificar si la edad que eligio
	//determine si es niño, joven, adulto o adulto mayor
	//presentando pantalla de lo que es
	escribir "verificando si es niño, joven, adulto o adulto mayor..."
	si edad <= 12 Entonces
		escribir "usted es un niño"
	sino 
		si edad >= 13 y edad <= 17 Entonces
			escribir "usted es un joven"
		SiNo
			si edad >= 18 y edad <= 64 Entonces
				escribir "usted es un adulto"
			SiNo
				escribir "usted es un adulto mayor"
			FinSi
		FinSi
	FinSi
FinFuncion

//____________________________________________________________________________________________________________________________________

//ejercicio secuenciales y condicionales simples = basico
//Ejercicio 7: Identificador de número par o impar
//Pedir un número y decir si es par y multiplo de 10. Para el caso de par utilice el mod de
//PseInt y para el caso de multiplo de 10 implemente usted mismo el mod.
funcion Identificador_de_número_par_o_impar
	//se definir las variables que vamos a usar
	definir num, resultado1, resultado2, resultado3, resultado Como Entero
	//el num se lee, mientras que los otros se calculan
	num = 0; resultado = 0; resultado1 = 0; resultado2= 0; resultado3 = 0
	//pedir al usuario que de valor a la variable
	escribir "ingrese un numero, por favor..."
	leer num
	//primero verificar si es par, usando mod
	//utilizando la condicional (si...entonces, sino) verificamos si es par o no
	//si el resultado del mod es 0, significa que es par, sino, no lo es
	escribir "verificar si el numero es par y multiplo de 10..."
	resultado1 = num mod 2
	escribir "si es par = ", num " mod " 2
	escribir "si es par = ", num  mod 2
	si resultado1 = 0 Entonces
		escribir num, " si es par"
	SiNo
		escribir num, " no es par"
	FinSi
	escribir "--------------------------------------------------------"
	//aqui es mas larga, ya que aqui no se implementa el mod pero si su Funcion 
	//remplazandolo y usar otras formulas para poder sacar el mod
	//primero usando el divcon el num y el 10, despues multiplicar con el dividendo, que es 10
	//y por ultimo, restarlo con el num; si sale 0, es porque es multiplo de 10, sino, no lo es
	resultado2 = trunc(num / 10)
	resultado3 = resultado2 * 10
	resultado = num - resultado3
	escribir "si es multiplo de 10..."
	escribir "sacar el div de la divicion = ", "trunc(" num " / 10)"
	escribir "sacar el div de la divicion = ", trunc( num / 10)
	escribir "multiplicarlo por 10 = ", resultado2 " * " 10
	escribir "multiplicarlo por 10 = ", resultado2  * 10
	escribir "por ultimo, restarlo con el numero seleccionado = ", num " - " resultado3
	escribir "por ultimo, restarlo con el numero seleccionado = ", num  - resultado3
	si resultado = 0 Entonces
		escribir "la respuesta es 0, entonces es multiplo de 10"
	SiNo
		escribir "la respuesta no es 0, entonces no es multiplo de 10"
	FinSi
FinFuncion

//____________________________________________________________________________________________________________________________________

//ejercicio secuenciales y condicionales simples = basico
//Ejercicio 8: Evaluador de puntuación de servicio
//Pedir una puntuación del 1 al 10 e interpretar como "Malo", "Regular", "Bueno",
//"Excelente".
funcion Evaluador_de_puntuación_de_servicio
	//definir las variaqbles que vamos a usar
	definir puntuacion Como Entero
	//la puntuacion se Leer 
	puntuacion = 0
	//se pide al usuario el valor de la variable
	escribir "del 1 a 10, como califica el servicio?..."
	leer puntuacion
	//dependiendo de lo que eliga, la condicion (ci..entonces, sino) se encarga de definir cual es la respuesta
	//dependiendo de la puntuacion (del 1 al 10) si es "Malo", "Regular", "Bueno" o "Excelente" el servicio.
	si puntuacion <= 3 Entonces
		escribir "el servicio fue malo"
		escribir "gracias por calificar"
	SiNo
		si puntuacion >= 4 y puntuacion <= 6 Entonces
			escribir " el servisio fue regular"
			escribir "gracias por calificar"
		sino
			si puntuacion >= 7 y puntuacion <= 9 Entonces
				Escribir "el servicio fue bueno"
				escribir "gracias por calificar"
			SiNo
				escribir "el servicio fue exelente"
				escribir "gracias por calificar"
			FinSi
		FinSi
	FinSi
FinFuncion

//____________________________________________________________________________________________________________________________________

//ejercicio secuenciales y condicionales simples = basico
//Ejercicio 9: Verificador de múltiplo de 3 o múltiplo de 9 o múltiplo de 12
//Pedir un número.
funcion Verificador_de_múltiplo_de_3_o_múltiplo_de_9_o_múltiplo_de_12
	//definir las variables que se van a usar
	definir num, resultado1, resultado2, resultado3 Como Entero
	//el num se pide el valor, las demas variables se calculan
	num = 0; resultado1 = 0; resultado2 = 0; resultado3 = 0
	//pedir al usuario que de el valor de la variable
	escribir "ingrese un numero, por favor..."
	leer num
	//usando la condicion (si...entonces, sino) de manera separada
	//verificamos si el numero es multiplo de 3, 9 o 12
	//presentando la respuesta de cada una
	escribir "verificando si es múltiplo de 3 o múltiplo de 9 o múltiplo de 12"
	resultado1 = num mod 3
	si resultado1 = 0 Entonces
		escribir num, " si es multiplo de 3"
	SiNo
		escribir num," no es multiplo de 3"
	FinSi
	resultado2 = num mod 9
	si resultado2 = 0 Entonces
		escribir num, " si es multiplo de 9"
	SiNo
		escribir num," no es multiplo de 9"
	FinSi
	resultado3 = num mod 12
	si resultado3 = 0 Entonces
		escribir num, " si es multiplo de 12"
	SiNo
		escribir num," no es multiplo de 12"
	FinSi
FinFuncion

//____________________________________________________________________________________________________________________________________

//ejercicio secuenciales y condicionales simples = basico
//Ejercicio 10: Calculadora de propina
//Pedir valor de la cuenta. Calcular propina del 10% o 15% según nivel de servicio.
funcion Calculadora_de_propina
	//definir las variables que se va a usar
	definir cuenta, propina, propina_cuenta, propina_total Como Real
	definir servisio Como Caracter
	//la cuenta y servicio se leen
	//la propina ya tiene valor
	//propina_cuenta, propina_total se calculan
	cuenta = 0; propina = 0.10; propina= 0.15; propina_cuenta = 0; propina_total = 0
	servisio = " "
	//pedir al usuario los valores de las variables
	escribir "ingrese el valor de su cuenta, por favor..."
	leer cuenta
	escribir "¿que nivel de servicio desea adquirio? (alto, medio, bajo)"
	leer servicio
	//usando la condicion (si...entonces, sino), con el servicio que nos indica
	//le damos el descuento que se requiera calcular con la cuenta
	//si es de nivel bajo, no se da propina y queda con el mismo valor de cuenta
	//presentando en pantalla la respuesta
	si servicio = "alto" Entonces
		escribir "agregando propina el 15% a su cuenta..."
		propina = 0.15
		propina_cuenta = cuenta * propina
		propina_total = cuenta + propina_cuenta
		escribir "cuenta con propina = ", cuenta " * " propina
		escribir "cuenta con propina = ", cuenta * propina
		escribir "la cuenta total = ", cuenta " + " propina_cuenta
		escribir "la cuenta total = ", cuenta + propina_cuenta
		escribir "teniendo un total de $", propina_total
	SiNo
		si servicio = "medio" Entonces
			escribir "agregando propina el 10% a su cuenta..."
			propina = 0.10
			propina_cuenta = cuenta * propina
			propina_total = cuenta + propina_cuenta
			escribir "cuenta con propina = ", cuenta " * " propina
			escribir "cuenta con propina = ", cuenta * propina
			escribir "la cuenta total = ", cuenta " + " propina_cuenta
			escribir "la cuenta total = ", cuenta + propina_cuenta
			escribir "teniendo un total de $", propina_total
		SiNo
			escribir "no requiere propina, su cuenta se establece igual = $", cuenta
		FinSi
	FinSi
FinFuncion

//____________________________________________________________________________________________________________________________________

//ejercicios de condicionales Anidadas y Complejas = intermedio
//Ejercicio 11: Clasificador de monto de compra
//Categorizar la compra: "baja" (<$10), "media" ($10-30), "alta" (>$30).
Funcion Clasificador_de_monto_de_compra
	//se define las variables que vamos a usar
	definir precio Como Real
	//el precio se Lee
	precio = 0
	//le pedimos al usuario que de el valor de la variable
	escribir "ingrese el valor del producto, por favor..."
	leer precio
	//usando condicional (si...entonces, sino)
	//para asi dependiendo de la cantidad del precio, demostrar que categoria puede ser su compra
	//ya sea baja (<10), media (10-30) o alta (>30)
	escribir "verificando que categoria pertenece..."
	si precio < 10 Entonces
		escribir "su compra se categoriza como baja"
	SiNo
		si precio >= 10 y precio <= 30 Entonces
			escribir "su compra se categoriza como medio"
		SiNo
			escribir " su compra de categoriza como alta"
		FinSi
	FinSi
FinFuncion

//____________________________________________________________________________________________________________________________________

//ejercicios de condicionales Anidadas y Complejas = intermedio
//Ejercicio 12: Determinar si un número es positivo deberá presentar el doble del
//número, Si es negativo lo convierte a positivo y lo presenta . Si es cero presenta el
//número es neutro
//Pedir un número y clasificar su signo.
funcion verificacion_de_signos
	//definir las variables que se van a usar
	definir num1, num2 Como Real
	//num1 se lee
	//num2 se calcula
	num1 = 0; num2 = 0
	//pedir al usuario el valor de la variable
	escribir "ingrese un numero, por favor..."
	leer num1
	//utilizando la condicional (si...entonces, sino)
	//dependiendo del numero, ya sea positivo, negativo o es 0, cada una tiene sus condiciones
	//si es positivo, duplica el numero, si es negativo, se vuelve negativo, y si es cero, se mantiene y presenta que es neutral
	escribir "presentando que signo es su numero..."
	si num1 < 0 Entonces
		escribir "su numero es negativo"
		escribir "convertir el numero a positivo..."
		num2 = abs(num1)
		escribir num1 " ---> ", num2
	SiNo
		si num1 > 0 Entonces
			escribir "su numero es positivo"
			escribir "convirtiendo el doble del numero..."
			num2 = 2*num1
			escribir num1, " ---> ", num2
		SiNo
			si num1 = 0 Entonces
				escribir "su numero es 0, entonces es neutral"
			FinSi
		FinSi
	FinSi
FinFuncion

//____________________________________________________________________________________________________________________________________

//ejercicios de condicionales Anidadas y Complejas = intermedio
//Ejercicio 13: Verificador de acceso por edad y dinero
//Permitir entrar a la tienda si tiene más de 18 años y al menos $1.
funcion Verificador_de_acceso_por_edad_y_dinero
	//definir las variebles que vamos a usar
	definir dinero Como Real
	definir edad Como Entero
	//la edad y el dinero se leen
	edad = 0; dinero = 0
	//pedimos al usuario los valores de las variables
	escribir "bienvenido a nuestra tienda"
	escribir "por favor, ingrese su edad...."
	leer edad
	escribir "cuanto dinero tiene..."
	leer dinero
	//usando la condicion (si...entonces, sino)
	//dependiendo si su edad es mayor a 18 y tenga aunque sea $1 o mas, indica que puede entrar
	//de lo contrario, negara la entrada
	escribir "verificando si tiene permiso para entrar..."
	si edad > 18 y dinero >= 1
		escribir "si tiene perminito entrar, que disfrute..."
	SiNo
		escribir "lo sentimos, no tiene permiso..."
	FinSi
FinFuncion

//____________________________________________________________________________________________________________________________________

//ejercicios de condicionales Anidadas y Complejas = intermedio
//Ejercicio 14: Descuento por edad y monto
//Aplicar descuento especial solo si el cliente es mayor de 60 y compra más de $50. Si no lo es
//aplica el iva del 15% con un descuento solo del 5%
funcion Descuento_por_edad_y_monto
	//definir las variables que vamos a usar
	definir monto,iva,iva_total,iva_monto,descuento,descuento_total, descuento_monto Como Real
	Definir edad Como Entero
	//monto y edad se leen
	//iva y descuento ya tienen valores
	//iva_monto, iva_total, descuento_monto y descuento_total se calculan
	monto = 0; edad = 0; iva = 0.15; descuento = 0.05; descuento = 0.15
	iva_monto = 0; iva_total = 0; descuento_monto = 0; descuento_total = 0
	//pedir al usuario los valores de las variables
	escribir "ingrese su edad, por favor..."
	leer edad
	escribir "tambien el monto de su compra..."
	leer monto
	//usando la condicional (si...entonces, sino)
	//si sus valores que eligio, cumple con las condiciones o no, tienen respuestas diferentes
	escribir "verificando si se le aplica descuento especial..."
	si edad > 60 y monto > 50 Entonces
		//si cumple la condicion, se le da un descuento especial al monto, usando la formula, representarla y dando el monto total
		escribir "si cumple con las condiciones necesarias, le aplicaremos el descuento especial..."
		descuento = 0.15
		descuento_monto = monto * descuento
		descuento_total = monto - descuento_monto
		escribir "descuento con el monto = ", monto " * " descuento
		escribir "descuento con el monto = ", monto * descuento
		escribir "monto total = ", monto " - " descuento_monto
		escribir "monto total = ", monto - descuento_monto
		escribir "tiene como monto total con el descuento especian = $" descuento_total
	SiNo
		//si no cumple con la condicion, se de aumenta el iva del 15% y un descuento del 5% al monto
		//presentando las formulas, primero con el descuento y despues el iva
		//presentando en pantalla la respuesta del descuento con el monto y despues incluyendo iva.
		//en este caso en el iva, sale decimal de tres cifras, usando el "redon(iva_total*100) / 100", podemos hacer que este en dos cifras los decimales.
		escribir "--------------------------------------------------------------------"
		escribir "no cumple con las condiciones necesarias, se mantiene monto..."
		escribir "aplicando iva del 15% y un descuento de 5%..."
		descuento = 0.05
		descuento_monto = monto * descuento
		descuento_total = monto - descuento_monto
		escribir "descuento con el monto = ", monto " * " descuento
		escribir "descuento con el monto = ", monto * descuento
		escribir "monto total = ", monto " - " descuento_monto
		escribir "monto total = ", monto - descuento_monto
		escribir descuento_total
		escribir "tiene como monto con descuento = $" descuento_total
		escribir "--------------------------------------------------------------------"
		escribir"ahora agregamos el iva..."
		iva = 0.15
		iva_monto = descuento_total * iva
		iva_total = descuento_total + iva_monto
		iva_total = redon(iva_total*100) / 100
		escribir "monto con el iva = ", descuento_total " * " iva
		escribir "monto con el iva = ", descuento_total * iva
		escribir "monto total = ", descuento_total " + " iva_monto
		escribir "monto total = ", redon(iva_total*100) / 100
		escribir "teniendo como monto mas el iva y el descuento = $", iva_total
	FinSi
FinFuncion

//____________________________________________________________________________________________________________________________________

//ejercicios de condicionales Anidadas y Complejas = intermedio
//Ejercicio 15: Cálculo de cambio exacto con billetes de $10 y $5
//Pedir valor del vuelto y mostrar cuántos billetes de $10 y $5 necesita.
funcion Cálculo_de_cambio_exacto_con_billetes_de_10_y_5
	//se define las variebles que se van a usar
	definir vuelto, billetes_10, billetes_5, resto Como real
	//el vuelto se lee
	// el billetes_10, billetes_5 y resto se calculan
	vuelto = 0; billetes_10 = 0; billetes_5 = 0; resto = 0
	//pedir al usuario que de el valor de la variable
	escribir "ingrese el vuelto, por favor..."
	leer vuelto
	//primero verificamos si el vuelto se puede sacar 10
	//usando la formulas precentes:
	//trunc(vuelto / 10) = ayuda que verificar cuantos billetes se necesita de 10
	//vuelto MOD 10 = ayuda a verificar que si de reciduo queda 0, entonces no es nesesario poner billete de 5, quedando 0
	billetes_10 = trunc(vuelto / 10)
    resto = vuelto MOD 10
	//si sobra el reciduo de arriba
	//usamos las formulas:
	//trunc(resto / 5) = ayuda a verificar cuantos billetes de 5 se necesitan
	//resto MOD 5 = ayuda a verificar si de reciduo queda 0 o no
	//si queda 0, es porque esta completo, sino, es porque sobra
    billetes_5 = trunc(resto / 5)
    resto = resto MOD 5
	//y por ultimo todos los valores lo presentamos en pantalla
	//billete de 10 y 5 que se necesita
	//y el resto si es que queda algo mas que pagar
    Escribir "Se necesitan ", billetes_10, " billetes de $10"
    Escribir "Se necesitan ", billetes_5, " billetes de $5"
    Escribir "Resto sin cubrir: $", resto
FinFuncion

//____________________________________________________________________________________________________________________________________

//ejercicios de condicionales Anidadas y Complejas = intermedio
//Ejercicio 16: Categorizador de día de la semana
//Pedir número del 1 al 7 y mostrar qué día es. Validar entrada.
funcion Categorizador_de_día_de_la_semana
	definir dias Como Real
	dias = 0
	escribir "indique un numero del 1 a 7, por favor..."
	leer dias
	Segun dias Hacer
		1:
			escribir "dia lunes..."
			escribir "lo sentimos, solo puede entrar los dias, martes, jueves y sabado..."
		2:
			escribir "dia martes"
			Escribir "tiene permiso de entrar, bienvenido..."
		3:
			escribir "dia miercoles"
			escribir "lo sentimos, solo puede entrar los dias, martes, jueves y sabado..."
		4:
			Escribir "dia jueves"
			Escribir "tiene permiso de entrar, bienvenido..."
		5:
			escribir "dia viernes"
			escribir "lo sentimos, solo puede entrar los dias, martes, jueves y sabado..."
			
		6:
			Escribir "dia sabado"
			Escribir "tiene permiso de entrar, bienvenido..."
		7:
			escribir "dia domingo"
			escribir "lo sentimos, solo puede entrar los dias, martes, jueves y sabado..."
			
		De Otro Modo:
			escribir "numero de dia no valido"
	Fin Segun
FinFuncion

//____________________________________________________________________________________________________________________________________

//ejercicios de condicionales Anidadas y Complejas = intermedio
//Ejercicio 17: Clasificador de producto por precio unitario
//Pedir precio unitario y decir si es "económico", "regular" o "caro".
funcion Clasificador_de_producto_por_precio_unitario
	definir monto Como Real
	monto = 0
	escribir "ingrese el precio del su producto, por favor..."
	leer monto
	escribir "verificando si su producto es economico, regular o caro..."
	si monto <= 100 Entonces
		Escribir "su precio es economico"
	SiNo
		si monto > 100 y monto <= 150 Entonces
			escribir "su precio es regular"
		SiNo
			escribir "su precio es caro"
		FinSi
	FinSi

FinFuncion

//____________________________________________________________________________________________________________________________________

//ejercicios de condicionales Anidadas y Complejas = intermedio
//Ejercicio 18: Determinador de bisiesto (año)
//Pedir un año. Indicar si es bisiesto usando regla condicional (mod 4 y mod 100, mod 400).
funcion Determinador_de_bisiesto_(año)
	//se define las variables que vamos a usar
	definir anio Como Entero
	//el anio o año se lee 
	anio = 0
	//pedir al usuario el valor de la variable
	escribir "ingrese un año del calendario, por favor..."
	leer anio
	//este proceso aunque suene complejo, se ve facil
	//usando la condicion (si...entonces, sino)
	//el calendario gregoriano nos indica que para saber si es bisiesto o no:
	//tiene que ser divisible para 4, no sea divisible para 1000 a menos que sea divisible para 400
	//no es bisiesto cuando no es divisible para 400
	//presentando pantalla si es bisiesto o no
	Si (anio MOD 4 = 0) Entonces
		escribir "si es divisible para 4"
        Si (anio MOD 100 = 0) Entonces
			escribir "si es divisible para 100"
            Si (anio MOD 400 = 0) Entonces
				escribir "si es divisible para 400"
                Escribir "El año ", anio, " es bisiesto."
            Sino
				escribir "no es divisible para 400"
                Escribir "El año ", anio, " no es bisiesto."
            FinSi
        Sino
			escribir "no es divisible para 100"
            Escribir "El año ", anio, " es bisiesto."
        FinSi
    Sino
		escribir "no es divisible para 4, asi mismo con el 100 y 400"
        Escribir "El año ", anio, " no es bisiesto."
    FinSi
FinFuncion

//____________________________________________________________________________________________________________________________________

//ejercicios de condicionales Anidadas y Complejas = intermedio
//Ejercicio 19: Conversor de horas a minutos y segundos
//Pedir horas y calcular su equivalencia en minutos y segundos.
funcion Conversor
	//definir las variables que se van a usar
	definir hora, minutos, segu Como Real
	//la hora se lee 
	//minutos y seg se calculan
	hora = 0; minutos = 0; seg = 0
	//pedir al usuario el valor de la variable
	escribir "ingrese la hora que quiera convertir..."
	leer hora
	//implementamos las formulas a la maquina para que con el valor de hora
	//convierte de h a m y h a s
	//presentando pantalla como son en minutos y segundos
	escribir "transformando horas a minutos y segundos"
	minutos = hora * 60/1
	seg = hora * 3600/1
	escribir hora,"h a minutos son = ",minutos, "m"
	escribir hora,"h a segundos son = ", seg, "s"
FinFuncion

//____________________________________________________________________________________________________________________________________

//ejercicios de condicionales Anidadas y Complejas = intermedio
//Ejercicio 20: Verificador de triple de un número
//Pedir dos números. Verificar si el segundo es el triple del primero.
funcion Verificador_de_triple_de_un_número
	//define las variables que vamos a usa
	Definir num1, num2 Como Real
	definir resultado, verificacion Como Real
	//num1 y num2 se leen
	//resultado y verificacion se calculan
	num1 = 0; num2 = 0; resultado = 0; verificacion = 0
	//pedir al usuario los valores de las variables
	escribir "ingrese dos numeros, por favor.."
	leer num1
	Leer num2
	//implementamos una multiplicacion de 3 con el primero, despues se lo divide por el segundo
	//si sale 1 en la divicion, es porque num2 si es el triple de num1
	escribir "verificando si el segundo es el triple del primero..."
	resultado = num1 * 3
	verificacion = resultado / num2
	si verificacion = 1 Entonces
		escribir num2, " si es el triple de ", num1
	sino  
		escribir num2, " no es el triple de ", num1
	FinSi
FinFuncion

//____________________________________________________________________________________________________________________________________

//ejercicios de condicionales Anidadas y Complejas = intermedio
//Ejercicio 21: Determinar riesgo por síntomas múltiples para el efecto tienes
//Escribir "¿Tiene fiebre? (SI/NO):"	
//Escribir "¿Tiene dificultad para respirar? (SI/NO):"
//Escribir "¿Tiene dolor en el pecho? (SI/NO):"
//Si los tres síntomas son "SI" muestre un mensaje "Alto riesgo: Derivar a emergencia"
//caso contrario muestre "Riesgo bajo o medio"
Funcion Determinar_riesgo_por_síntomas_múltiples_para_el_efecto_tienes
	//definir las variables que vamos a usar
	definir fiebre, respirar, pecho Como Caracter
	//todas las variables se leen
	fiebre = ""; respirar = ""; pecho = ""
	//se pide al usuario el valor de las variables
	escribir "verificando sus sintomas..."
	escribir "¿tiene fiebre? (SI/NO):"
	leer fiebre
	Escribir "¿tiene dificultad para respirar? (SI/NO):"
	leer respirar
	Escribir "¿Tiene dolor en el pecho? (SI/NO):"
	leer pecho
	//usando la condicional (si...entonces, sino)
	//si confirma que tiene los tres sontimas, le da un mensaje "Alto riesgo: Derivar a emergencia"
	//si uno de ellos lo niega, de inmediato indica "Riesgo bajo o medio"
	si fiebre = "si" Entonces
		si respirar = "si" Entonces
			si pecho = "si" Entonces
				escribir "Alto riesgo: Derivar a emergencia"
			sino
				escribir "Riesgo bajo o medio"
			FinSi
		sino 
			Escribir "Riesgo bajo o medio"
		FinSi
	sino
		escribir "Riesgo bajo o medio"
	FinSi
FinFuncion

//____________________________________________________________________________________________________________________________________

//ejercicios de condicionales Anidadas y Complejas = intermedio
//ejercicio 22:La tienda desea implementar una función básica en su sistema para identificar el estado
//de salud de los clientes que se toman la presión arterial en su tienda. Para ello, solicita un
//pequeño algoritmo que reciba la presión sistólica como entrada y muestre una clasificación
//médica básica según la siguiente tabla:
//Presión Sistólica Clasificación
//Menor a 90 Presión baja
//Entre 90 y 120 Presión normal
//Entre 121 y 139 Prehipertensión
//140 o más Hipertensión
funcion verificacion_de_salud
	//definir las variables que vamos a usar
	DEFINIR presion Como Entero
	//presion se lee
	presion = 0
	escribir "bienvenidos a nuestra tienda"
	escribir "les informamos que por nuevas politicas, requerimos verificar su salud por presion arterial.."
	//pedir al usuario el valor de la variable
	escribir "¿cual es su precion?..."
	leer presion
	//con la condicional (si...entonces, sino)
	//podemos verificar como se califica su presion, con ciertas condiciones que damos
	//menos de 90 = presentar pantalla "presión baja"
	//Entre 90 y 120 = presenta pantalla "Presión normal"
	//entre 121 y 139 = presentar pantalla "Prehipertensión"
	//140 o más = presentar pantalla "Hipertensión"
	escribir "verificando su calificacion medica..."
	si presion < 90 Entonces
		Escribir "usted tiene presión baja"
	SiNo
		si presion >= 90 y presion <= 120 Entonces
			escribir "usted tiene precion normal"
		SiNo
			si presion >= 121 y presion <= 139 Entonces
				escribir "usted tiene Prehipertensión"
			SiNo
				si presion >= 140 Entonces
					escribir "usted tiene Hipertensión"
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion

//____________________________________________________________________________________________________________________________________

//ejercicio de logica simple de cadenas y comparaciones = aplicado
//ejercicio 23: Mostrar saludo personalizado
//Ingresar nombre y mostrar saludo: ¡Hola, [nombre]!
funcion Mostrar_saludo_personalizado
	//definir las variables que vamos a usar
	definir nombre Como Caracter
	//nombre se lee
	nombre = ""
	//con el valor de la variable, presentamos pantalla el valor con un saludo"
	escribir "ingrese su nombre, por favor..."
	leer nombre
	Escribir "¡Hola, ", nombre,"!"
	escribir "¡Bienvenido a la universidad estatal de milagro!"
FinFuncion

//ejercicio de logica simple de cadenas y comparaciones = aplicado
//ejercicio 24: Detectar si el carácter ingresado es una vocal
//Ingresar una letra. Verificar si es a, e, i, o, u.
funcion Detectar_si_el_carácter_ingresado_es_una_vocal
	//definir las variables que se van a usar
	definir letra Como Caracter
	//letra se lee
	letra = ""
	//pedir al usuario que de el valor de la variable
	escribir "ingrese una letra, por favor..."
	leer letra
	//utilizando la condicional (si...Entonces, sino)
	//para verificar si el valor que eligio es una de las vocales, ya sean mayusculas o minusculas
	//si es una vocal, se presenta en pantalla de que lo es
	//sino, presenta pantalla que no es una vocal
	escribir "verificando si es una vocal..."
	si letra = "a" o letra = "e" o letra = "i" o letra = "o" o letra = "u" o letra = "A" o letra = "E" o letra = "I" o letra = "O" o letra = "U"Entonces
		escribir "su letra es una vocal"
	SiNo
		escribir "su letra no es una vocal"
	FinSi
FinFuncion

//____________________________________________________________________________________________________________________________________

//ejercicio de logica simple de cadenas y comparaciones = aplicado
//Ejercicio 25: Detectar si el carácter ingresado es una consonante
//Ingresar una letra. Verificar si es una consonante (sin validaciones complejas).
funcion Detectar_si_el_carácter_ingresado_es_una_consonante
	//definir la variable que vamos a usar
	definir letra Como Caracter
	//letra se lee 
	letra = ""
	//pedirle al usuario que de valor a la variable
	escribir "ingrese una letra, por favor..."
	leer letra
	//utilizando la condicion (si...Entonces, sino)
	//verificamos que si la letra es diferente a las vocales, asi saber si es una consonante
	//si es diferente, presenta pantalla que es una consonante
	//si es igual, presenta pantalla que no es una consonante
	escribir "verificando si es una consonante.."
	si letra <> "a" Entonces
		si letra <> "e" Entonces
			si letra <> "i" Entonces
				si letra <> "o" Entonces
					si letra <> "u" Entonces
						escribir "su letra es una consonante"
					SiNo
						escribir "su letra no es una consonante"	
					FinSi
				SiNo
					escribir "su letra no es una consonante"	
				FinSi
			SiNo
				escribir "su letra no es una consonante"	
			FinSi
		SiNo
			escribir "su letra no es una consonante"
		FinSi
	SiNo
		escribir "su letra no es una consonante"
	FinSi
FinFuncion

//____________________________________________________________________________________________________________________________________

//ejercicio de logica simple de cadenas y comparaciones = aplicado
//Ejercicio 26: Comparar si dos nombres ingresados son iguales
//Pedir dos nombres y verificar si son iguales (texto exacto).
funcion Comparar_si_dos_nombres_ingresados_son_iguales
	//definir las variables que se van a usar
	definir nombre1, nombre2 Como Caracter
	//nombre1 y nombre 2 se leen
	nombre1 = ""; nombre2 = ""
	//pedir al usuario los valores de las variables
	escribir "ingrese dos nombres, por favor..."
	leer nombre1
	leer nombre2
	//utilizando la condicional (si...Entonces, sino)
	//ponemos como condicion que si el nombre1 y nombre2 son iguales, presentamos pantalla que lo son
	//si no, presenta pantalla que no son iguales
	escribir "verificando si son iguales.:."
	si nombre1 = nombre2 Entonces
		escribir "los nombres son iguales"
	sino 
		escribir "los nombres no son iguales"
	FinSi
FinFuncion

//____________________________________________________________________________________________________________________________________

//ejercicio de logica simple de cadenas y comparaciones = aplicado
//Ejercicio 27: Verificar si una letra es mayúscula o minúscula
//Ingresar una letra. Comparar con su versión en mayúscula/minúscula.
Funcion Verificar_si_una_letra_es_mayúscula_o_minúscula
	//definir las variables que vamos a usar
	definir letra, mayuscula, minuscula  Como Caracter
	//letra se lee 
	//mayuscula y minuscula se calcula
	letra = ""; mayuscula = ""; minuscula = ""
	//se pide al usuario el valor de la vaqriable
	escribir "ingrese una letra, por favor..."
	leer letra
	//usando el "Mayusculas(letra)" para hacer que la letra este en mayuscula
	//usando el "Minusculas(letra)" para hacer que la letra este en minuscula
	mayuscula = Mayusculas(letra)
	minuscula = Minusculas(letra)
	//asi presentando pantalla la letra ya en mayuscula y minuscula
	escribir "su letra en masyucula es = ", mayuscula 
	escribir "su letra en minuscula es = ", minuscula 
FinFuncion

//____________________________________________________________________________________________________________________________________

//ejercicio de logica simple de cadenas y comparaciones = aplicado
//Ejercicio 28: Mostrar nombre completo del cliente
//Pedir nombre y apellido por separado. Mostrar nombre completo.
funcion  Mostrar_nombre_completo_del_cliente
	//definir las variables que vamos a usar
	definir nombre, apellido, a , b Como Caracter
	//nombre y apellido se leen
	//a y b se calculan
	nombre = ""; apellido = ""; a = ""; b = ""
	//pedir al usuario los valores de las variables
	escribir "ingrese su nombre, por favor..."
	leer nombre
	escribir "ahora, su apellido..."
	leer apellido
	//como adicional, aplicamos una formula para que el nombre y apellido tengan mayuscula en la primera letra
	//"Mayusculas(cadena)" ayuda a concertir las letras en mayusculas
	//"SubCadena(cadena,desde,hasta)" ayuda a indicar la tetra que quieres ysar o presentra en espesifico
	a = Mayusculas(SubCadena(nombre,0,1)) + SubCadena(nombre,2,10)
	b = Mayusculas(SubCadena(apellido,0,1)) + SubCadena(apellido,2,10)
	//y asi presentamos pantalla, el nombre y el apellido en mayuscula al inicio
	escribir "su nombre completo es ", a, " ", b
FinFuncion

//____________________________________________________________________________________________________________________________________

//ejercicio de logica simple de cadenas y comparaciones = aplicado
//Ejercicio 29: Verificar si una palabra es corta o larga
//Pedir una palabra. Si tiene más de 6 caracteres, decir "larga"; si no, "corta".
Funcion Verificar_si_una_palabra_es_corta_o_larga
	//definir las variables que se van a usar
	definir palabra Como Caracter
	//palabra se lee
	palabra = ""
	//pedir al usuario que de el valor de la variable
	escribir "ingrese una palabra, por favor..."
	leer palabra
	//usando la condicional (si...entonces, sino)
	//usamos el "Longitud(palabra)" en la condicion para saber si la palabra tiene mas de 6 caracteres
	//si tiene mas, se presenta pantalla que la palabra es larga
	//sino, presenta pantalla que la palabra es corta
	//Longitud(palabra) = ayuda a saber cuantas letras tiene una palabra
	escribir "verificando si es larga o corta..."
	si Longitud(palabra) > 6 Entonces
		escribir "la palabra es larga"
	SiNo
		escribir "la palabra es corta"
	FinSi
FinFuncion

//____________________________________________________________________________________________________________________________________

//ejercicio de logica simple de cadenas y comparaciones = aplicado
//Ejercicio 30: Contadar los caracteres y convertir a mayúsculas cualquier frase (sin recorrer)
//Pedir frase. Usar funciones de PseInt de cadenas para este ejercicio
funcion Contadar_los_caracteres_y_convertir_a_mayúsculas_cualquier_frase_(sin_recorrer)
	//definir las variables que vamos a usar
	definir frase Como Caracter
	//frase se lee 
	frase = ""
	//pedir al usuario que de el valor de la variable
	Escribir "ingrese una frase, por favor..."
	leer frase
	//como adocional a lo pedido, usando la condicional (si...entonces, sino)
	//usamos "Longitud(cadena)" para saber cuandots caracteres hay en la frase
	//si no es igual de 1, presenta pantalla cuantos caracteres hay
	//si es 1, presenta pantalla que es un solo caracter
	escribir "verificando cuantos caracteres tiene su frase..."
	si Longitud(frase) = 1 Entonces
		escribir "su frase tiene ",Longitud(frase), " caracter"
	SiNo
		Escribir "su frase tiene ",Longitud(frase), " caracteres"
	FinSi
	//despues transformamos toda la frase en mayusculas con "Mayusculas(cadena)"
	//presentando pantalla la frase ya en mayusculas
	escribir "transformar su frase en mayuscula..."
	escribir Mayusculas(frase)
FinFuncion

//____________________________________________________________________________________________________________________________________

funcion ejercicio_secuenciales_y_condicionales_simples_=_basico
	definir ejercicio Como entero
	definir letra Como Caracter
	ejercicio = 0; letra = ""
	Repetir
		escribir "Nivel Básico (Secuenciales y Condicionales Simples)"
		escribir "elija cual ejercicio quiera usar y verificar...(1 al 10)"
		leer ejercicio
		escribir "_________________________________________________________"
		Segun ejercicio Hacer
			1:
				escribir "ejercicio 1: Calculadora_de_vuelto"
				Calculadora_de_vuelto
			2:
				escribir "ejercicio 2: Conversor_de_kilogramos_a_libras_y_viceversa"
				Conversor_de_kilogramos_a_libras_y_viceversa
			3:
				escribir "ejercicio 3: Calculadora_de_descuentos"
				Calculadora_de_descuentos
			4:
				Escribir "ejercicio 4: Cálculo_del_IVA"
				Cálculo_del_IVA
			5: 
				escribir "ejercicio 5: Comparación_de_precios_entre_dos_productos"
				Comparación_de_precios_entre_dos_productos
			6:
				Escribir "Ejercicio 6: Clasificador_de_edad_del_cliente"
				Clasificador_de_edad_del_cliente
			7:
				escribir "Ejercicio 7: Identificador_de_número_par_o_impar"
				Identificador_de_número_par_o_impar
			8:
				escribir "ejercicio 8: Evaluador_de_puntuación_de_servicio"
				Evaluador_de_puntuación_de_servicio
			9:
				escribir "ejercicio 9: Verificador_de_múltiplo_de_3_o_múltiplo_de_9_o_múltiplo_de_12"
				Verificador_de_múltiplo_de_3_o_múltiplo_de_9_o_múltiplo_de_12
			10:
				escribir "ejercicio 10: Calculadora_de_propina"
				Calculadora_de_propina
			De Otro Modo:
				escribir "ejercicio no encontrado"
		Fin Segun
		escribir "¿Desea volver al menu? (si/no)"
		leer letra
	Hasta Que letra = "si" o letra = "SI" o letra = "S"
FinFuncion

funcion ejercicios_de_condicionales_Anidadas_y_Complejas_=_intermedio
	definir ejercicio Como entero
	definir letra Como Caracter
	ejercicio = 0; letra = ""
	Repetir
		escribir "Nivel Intermedio (Condicionales Anidadas y Complejas)"
		escribir "elija cual ejercicio quiera usar y verificar...(11 al 22)"
		leer ejercicio
		escribir "_________________________________________________________"
		Segun ejercicio Hacer
			11:
				escribir "ejercicio 11: Clasificador_de_monto_de_compra"
				Clasificador_de_monto_de_compra
			12:
				escribir "ejercicio 12: Determinar_si_un_número_es_positivo_deberá_presentar_el_doble_del_número,_Si_es_negativo_lo_convierte_a_positivo_y_lo_presenta._Si_es_cero_presenta_el_número_es_neutro"
				verificacion_de_signos
			13:
				Escribir "ejercicio 13: Verificador_de_acceso_por_edad_y_dinero"
				Verificador_de_acceso_por_edad_y_dinero
			14:
				escribir "ejercicio 14: Descuento_por_edad_y_monto"
				Descuento_por_edad_y_monto
			15:
				escribir "ejercicio 15: Cálculo_de_cambio_exacto_con_billetes_de_$_10_y_$_5"
				Cálculo_de_cambio_exacto_con_billetes_de_10_y_5
			16:
				escribir "ejercicio 16: Categorizador_de_día_de_la_semana"
				Categorizador_de_día_de_la_semana
			17:
				Escribir "ejercicio 17: Clasificador_de_producto_por_precio_unitario"
				Clasificador_de_producto_por_precio_unitario
			18:
				escribir "ejercicio 18: Determinador_de_bisiesto_(año)"
				Determinador_de_bisiesto_(año)
			19:
				Escribir "ejercicio 19: Conversor_de_horas_a minutos_y_segundos"
				Conversor
			20:
				escribir "ejercicio 20: Verificador_de_triple_de_un_número"
				Verificador_de_triple_de_un_número
			21:
				escribir "ejercicio 21: Determinar_riesgo_por_síntomas_múltiples_para_el_efecto_tienes"
				Determinar_riesgo_por_síntomas_múltiples_para_el_efecto_tienes
			22: 
				escribir "ejercicio 22: verificacion_de_salud"
				verificacion_de_salud
			De Otro Modo:
				escribir "ejercicio no encontrado"
		Fin Segun
		escribir "¿Desea volver al menu? (si/no)"
		leer letra
	Hasta Que letra = "si" o letra = "SI" o letra = "S"
FinFuncion

funcion ejercicio_de_logica_simple_de_cadenas_y_comparaciones_=_aplicado
	definir ejercicio Como entero
	definir letra Como Caracter
	ejercicio = 0; letra = ""
	escribir "_________________________________________________________"
	Repetir
		escribir "Nivel Aplicado (Lógica Simple de Cadenas y Comparaciones)"
		escribir "elija cual ejercicio quiera usar y verificar...(23 al 30)"
		leer ejercicio
		Segun ejercicio Hacer
			23:
				escribir "ejercicio 23: Mostrar_saludo_personalizado"
				Mostrar_saludo_personalizado
			24: 
				escribir "ejercicio 24: Detectar_si_el_carácter_ingresado_es_una_vocal"
				Detectar_si_el_carácter_ingresado_es_una_vocal
			25:
				escribir "ejercicio 25: Detectar_si_el_carácter_ingresado_es_una_consonante"
				Detectar_si_el_carácter_ingresado_es_una_consonante
			26:
				escribir "ejercicio 26: Comparar_si_dos_nombres_ingresados_son_iguales"
				Comparar_si_dos_nombres_ingresados_son_iguales
			27:
				escribir "ejercicio 27: Verificar_si_una_letra_es_mayúscula_o_minúscula"
				Verificar_si_una_letra_es_mayúscula_o_minúscula
			28:
				escribir "ejercicio 28: Mostrar_nombre_completo_del_cliente"
				Mostrar_nombre_completo_del_cliente
			29:
				escribir "ejercicio 29: Verificar_si_una_palabra_es_corta_o_larga"
				Verificar_si_una_palabra_es_corta_o_larga
			30:
				Escribir "ejercicio 30: Contadar_los_caracteres_y_convertir_a_mayúsculas_cualquier_frase_(sin_recorrer)"
				Contadar_los_caracteres_y_convertir_a_mayúsculas_cualquier_frase_(sin_recorrer)
			De Otro Modo:
				escribir "ejercicio no encontrado"
		Fin Segun
		escribir "¿Desea volver al menu? (si/no)"
		leer letra
	Hasta Que letra = "si" o letra = "SI" o letra = "S"
FinFuncion

Algoritmo menu_de_ejercicios
	definir nivel Como Caracter
	definir letra Como Caracter
	Repetir
		escribir "_________________________________________________________________"
		escribir "Menu de ejercidios para la tarea grupal de algoritmo"
		escribir "¿de que nivel desea ver? (basico/intermedio/aplicado)"
		leer nivel
		Segun nivel Hacer
			"basico":
				ejercicio_secuenciales_y_condicionales_simples_=_basico
			"intermedio":
				ejercicios_de_condicionales_Anidadas_y_Complejas_=_intermedio
			"aplicado":
				ejercicio_de_logica_simple_de_cadenas_y_comparaciones_=_aplicado
			De Otro Modo:
				escribir "no se encuentra ese nivel..."
		Fin Segun
		escribir "¿le gustaria ver otro nivel? (si/no)"
		leer letra
	Hasta Que letra = "no" o letra = "NO" o letra = "N"
FinAlgoritmo
	