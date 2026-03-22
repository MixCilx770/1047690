// Programa que permite almacenar en una matriz de N filas y M columnas numeros enteros y que muestre el contenido de valores enteros almacenados en la matriz
// Autor: 
// Version:

Funcion n <- Leer_Cant_FilasColumnas(m Por Referencia)
	Definir n, n1 Como Entero;
	Escribir "ingrese la cantidad de filas para la matriz: ";
	Leer n1;
	Escribir "Ingrese la cantidad de columnas para la matriz: ";
	Leer m;
	n <- n1;
FinFuncion

SubAlgoritmo Leer_Val_Matriz(n Por Valor, m Por Valor, matn Por Referencia)
	Definir f, c Como Entero;
	Escribir "A continuacion ingrese uno a uno los valores enteros a almacenar en la matriz: ";
	Para f <- 0 hasta (n - 1) Con Paso 1 Hacer
		Para c <- 0 hasta (n - 1) Con Paso 1 Hacer 
			Escribir  "Ingrese el valor de filas => ", f, " y eñ valor de columnas => ", c,;
			Leer matn(f, c);
		FinPara
	FinPara
FinSubAlgoritmo	
	
	SubProceso Mostrar_Val_Matriz(n Por Valor, m Por Valor, matn Por Referencia)
		Definir f, c Como Entero;
		Escribir "Los valores que contiene la matriz son: ";
		Escribir "Los valores enteros que contiene la matriz son: ";
		Para f <- 0 hasta (n - 1) Con Paso 1 Hacer
			Escribir "Elementos enteros de la fila => ", f;
			Para c <- 0 hasta (n - 1) Con Paso 1 Hacer 
				Escribir matn(f, c);
			FinPara
		FinPara
FinSubProceso

Funcion sumamat <- sumann(n Por Valor, m Por Valor, matn Por Referencia)
	Definir sumamat, sumam Como Real;
	Definir f, c Como Entero;
	sumam <- 0;
	Para f <- 0 hasta (n - 1) Con Paso 1 Hacer
		Para c <- 0 hasta (n - 1) Con Paso 1 Hacer 
			sumam <- sumam + matn (f, c);
		FinPara
	FinPara
	sumamat <- sumam;
FinFuncion

Funcion promemat <- promedioma(suma Por Valor, n Por Valor, m Por Valor)
	Definir promediomat, promedio Como Real;
	Definir tam Como Entero;
	tam <- n * m;
	promedio <- sumam /tam;
	promediomat <- promedio;
FinFuncion

Proceso Matriz_Enteros
	Definir n, m, matn Como Entero;
	Definir sumamat, promediomat Como Real;
	m <- 0;
	n <- Leer_Cant_FilasColumnas(m);
	Dimension matn(n, m);
	Escribir "La matriz tendra ", n, " filas y ", m," Columnas";
	Leer_Val_Matriz(n, m, matn);
	Mostrar_Val_Matriz(n , m, matn);
	sumamat <- sumann(n, m, matn);
	promediomat <- promedioma(suma, n, m);
	Escribir "La suma de los elementos de la matriz de enteros de ", n, "filas y de ", m, "columnas es: ", sumamat;
	Escribir "El Promedio de los elementos de la matriz de enteros de ", n, "filas y de ", m, "columnas es: ", promediomat;
FinProceso
