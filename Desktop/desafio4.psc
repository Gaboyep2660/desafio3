Funcion datoCaracter = capturarDatoChar(mensaje)
	Definir datoCaracter como Caracter
	Mostrar mensaje ": " Sin Saltar
	Leer datoCaracter
FinFuncion

Funcion datoNum = capturarDatoNum(mensaje)
	Definir datoNum como Real
	Mostrar mensaje ": " Sin Saltar
	Leer datoNum
FinFuncion

SubAlgoritmo totalventas(informacion Por Referencia)
	Definir ventas,AuxVentas,k,j, m Como Entero
	Definir menorventas, mayorventas Como Real
	Definir nombres,auxNomb, sucursal,l Como Caracter

	Dimension nombres[10]
	Dimension ventas[10]
	Para j = 1 hasta 10
		Mostrar "Ingrese el nombre de la " j "° sucursal"
		auxNomb = capturarDatoChar("Ingrese el nombre aqui")
		nombres(j) = auxNomb
		Mostrar "Ingrese la venta de la " j "° sucursal"
		AuxVentas = capturarDatoNum("Ingrese el monto de venta aqui")
		ventas(j) = AuxVentas
	FinPara
	
	sucursal=nombres(1)
	menorventas = ventas(1)
	Para k=2 hasta 10
		Si (k) < menorventas 
			sucursal = nombres(k)
			menorventas = ventas(k)
		FinSi
	FinPara
	Mostrar "La menor venta es: " menorventas
	Mostrar "Y la sucursal con esta cantidad obtenida es " sucursal 
	
	sucursal=nombres(1)
	mayorventas = ventas(1)
	Para m=2 hasta 10
		Si (m) > mayorventas 
			sucursal = nombres(m)
			mayorventas = ventas(m)
		FinSi
	FinPara
	Mostrar "La mayor venta es: " mayorventas
	Mostrar "Y la sucursal con esta cantidad obtenida es: " sucursal 
FinSubAlgoritmo

Proceso desafio4
	
	totalventas(informacion)

FinProceso
