Proceso Nom_Dia
	Definir NDIA Como Entero;
	Definir NOMDIA Como Cadena;
	Escribir "Digite Un Número Correspondiente A Un día Entre 1 Y 7: ";
	Leer NDIA;
	Si NDIA = 1 Entonces 
		NOMDIA <- "Corresponde A DOMINGO.";
		FinSi 
		Si NDIA = 2 Entonces 
			NOMDIA <- "Corresponde A LUNES.";
		FinSi 
			Si NDIA = 3 Entonces 
				NOMDIA <- "Corresponde A MARTES.";
			FinSi 
				Si NDIA = 4 Entonces 
					NOMDIA <- "Corresponde A MIÉRCOLES.";
				FinSi 
					Si NDIA = 5 Entonces 
						NOMDIA <- "Corresponde A JUEVES.";
					FinSi 
						Si NDIA = 6 Entonces 
							NOMDIA <- "Corresponde A VIERNES.";
						FinSi 
							Si NDIA = 7 Entonces 
								NOMDIA <- "Corresponde A SÁBADO.";
							FinSi 
							Si NDIA <- 0 O NDIA > 7 Entonces
								NOMDIA <- "El Número No Corresponde A Ningún día de la Semana.";
							FinSi
							Escribir "El Número de día de la Semana digitado Es: ", NDIA;
							Escribir "Este Número de día: ", NOMDIA;
FinProceso
