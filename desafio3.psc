Funcion datoCaracter = capturarDatoC(mensaje)
	Definir datoCaracter como Caracter
	Mostrar mensaje ": " Sin Saltar
	Leer datoCaracter
FinFuncion

Funcion datoNum = capturarDatoN(mensaje)
	Definir datoNum como Real
	Mostrar mensaje ": " Sin Saltar
	Leer datoNum
FinFuncion

Funcion promedio = calcularPromedio(acum, cont)
	Definir promedio como Real
	Si cont <> 0
		promedio = acum / cont
	SiNo
		Mostrar "No se puede calcular con un contador igual a  cero (0)"
		promedio = 0
	FinSi
FinFuncion
Funcion porcentaje = calcularPorcentajeProporcional(contEsp, contGen)
	Definir porcentaje como Real
	Si contGen <> 0
		porcentaje = contEsp / contGen * 100
	SiNo
		Mostrar "No se puede calcular con un contador general igual a cero (0)"
		porcentaje = 0
	FinSi
FinFuncion

SubAlgoritmo opcion_menu(opciones Por Referencia)
	Mostrar "Bienvenido al menu de control de estudiantes:" 
	Mostrar "Presione el numero uno (1) para ingresar los datos de(los) alumno(s)" 
	Mostrar "Presione el numero dos (2) para mostrar cuantos alumnos aprobaron y el promedio que obtuvieron" 
	Mostrar "Presione el numero tres (3) para mostrar el porcentaje de los aprobados " 
	Mostrar "Presione el numero cuatro (4) para salir" 
FinSubAlgoritmo

SubAlgoritmo mostrar_menu ( dato Por Referencia) 
	Definir auxNota Como Real
	Definir total_alum, contNotaPerfecta, i Como Entero
	Definir auxNombre, acumNombres, auxEspacio, auxnombremayor, auxnombremenor como Caracter
	Definir acumTodasNotas, acumReprobados, acumAprobados, auxnotamayor, auxnotamenor como Real
	Definir promedioTodasNotas, porcAprobados, porcReprobados como Real
	Definir contAprobados, contReprobados Como Entero
	Definir promaprobados, promreprobados como real
	Repetir
		auxNota=0
		auxnotamayor=0
		auxnombremayor=""
		auxnombremenor=""
		auxnotamenor=100
		contaprobados=0
		acumAprobados=0
		acumReprobados=0
		contaprobados=0
		contreprobados=0
		acumTodasNotas=0
		opcion_menu(opciones)
		Leer dato 
		Segun dato Hacer
			1:total_alum = capturarDatoN("Ingrese el numero de estudiantes")
				Para i = 1 hasta total_alum
					auxNombre = capturarDatoC("Ingrese el nombre del alumno")
					auxNota = capturarDatoN("Ingrese la nota")
					Mostrar auxNota
					si auxNota>auxnotamayor
						auxnotamayor=auxNota
						auxnombremayor=auxNombre
					FinSi
					si auxNota<auxnotamenor
						auxnotamenor=auxNota
						auxnombremenor=auxNombre
					FinSi
					Si auxNota >= 80
						contaprobados=contaprobados+1
						acumAprobados = acumAprobados + auxNota
					FinSi
					
					Si auxNota < 80
						contreprobados=contreprobados+1
						acumReprobados = acumReprobados + auxNota
					FinSi				
					acumTodasNotas = acumTodasNotas + auxNota
				FinPara
			2:
				promaprobados=calcularPromedio(contaprobados,acumAprobados)
				promreprobados=calcularPromedio(contreprobados, acumReprobados)
			3:
				porcAprobados=calcularPorcentajeProporcional(contaprobados, total_alum)
			4:
				Mostrar "El programa ha finalizado"
			De Otro Modo:
				Mostrar "!!Debe Ingresar una opcion correcta para continuar!!"
		Fin Segun
	Hasta Que dato=4 
	
FinSubAlgoritmo

Algoritmo sin_titulo
	
	Definir dato Como entero
	mostrar_menu(dato)
FinAlgoritmo
