Proceso Nom_Dia
	Definir NDIA Como Entero;
	Definir NODIA Como Cadena;
	Escribir "Digite El Número Correspondiente A Un día Entre 1 Y 7: ";
	Leer NDIA;
	Segun NDIA Hacer
		1:
			NODIA <- "Corresponde A DOMINGO.";
		2:
			NODIA <- "Corresponde A LUNES.";
		3:
			NODIA <- "Corresponde A MARTES.";
		4:
			NODIA <- "Corresponde A MIÉRCOLES.";
		5:
			NODIA <- "Corresponde A JUEVES.";
		6:
			NODIA <- "Corresponde A VIERNES.";
		7:
			NODIA <- "Corresponde A SÁBADO.";
		De Otro Modo:
			NODIA <- "El Número No Corresponde A Ningún día de la Semana.";
	FinSegun
	Escribir "El Número de día de la Semana digitado Es: ", NDIA;
	Escribir "Este Número de día Es: ", NODIA;
FinProceso
