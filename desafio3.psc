SubAlgoritmo ingre_dato(mensaje, informacion Por Referencia)
	Repetir
		
	Hasta Que 
	Mostrar mensaje
	Leer informacion
FinSubAlgoritmo

SubAlgoritmo menu (mensaje Por Referencia, dato Por Referencia) 
	
	Repetir
		Mostrar "Bienvenido al menu de control de estudiantes:" 
		Mostrar "Presione el numero uno (1) para ingresar los datos de(los) alumno(s)" 
		Mostrar "Presione el numero dos (2) para mostrar cuantos alumnos aprobaron y el promedio que obtuvieron" 
		Mostrar "Presione el numero tres (3) para mostrar el porcentaje de los aprobados " 
		Mostrar "Presione el numero cuatro (4) para salir" 
		Leer dato 
		Segun dato Hacer
			1:
				Mostrar "010"
			2:
				Mostrar "b"
			3:
				mostrar "7"
			4:
				Mostrar "n"
			De Otro Modo:
				Mostrar "x"
		Fin Segun
	Hasta Que dato=4 
	
FinSubAlgoritmo

Algoritmo sin_titulo
	Definir dato Como entero
	menu(mensaje, dato)
	
FinAlgoritmo
