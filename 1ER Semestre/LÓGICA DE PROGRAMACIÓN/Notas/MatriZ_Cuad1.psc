SubProceso llenar_mat(mat Por Referencia, n Por Valor)
	Definir f, c Como Entero;
	Escribir "Cargando matriz de, ", n, " tres (3) filas y ", n, " columnas con numeros aleatorios";
	Para f <- 0 hasta (n - 1) Con Paso 1 Hacer
		Para c <- 0 hasta (n - 1) Con Paso 1 Hacer 
			mat(f, c) <- aleatorio(-10, 10);
		FinPara
	FinPara
FinSubProceso

	SubProceso Mostrar_mat(mat Por Referencia, n Por Valor)
		Definir f, c Como Entero;
		Definir Tecla Como Caracter;
		Escribir "Mostrando los valores enteros aleatorios guardados en la matriz de ", n, " filas y ", n, " columnas ";
		Para f <- 0 hasta (n - 1) Con Paso 1 Hacer
			Para c <- 0 hasta (n - 1) Con Paso 1 Hacer 
				Escribir mat(f, c);
			FinPara
			Escribir "";
		FinPara
		Escribir "Presione ENTER Para Continuar... ";
		Esperar Tecla;
FinSubProceso

Proceso MatriZ_Cuad1
	Definir mat, n Como Entero;
	n <- 3;
	Dimension mat(n, n);
	llenar_mat(mat, n);
	Mostrar_mat(mat, n);
	
FinProceso
