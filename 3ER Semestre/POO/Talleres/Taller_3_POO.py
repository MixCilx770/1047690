"""
Taller 3 – Interfaces de POO
(Estudiante)

Nombres:
Miguel Angel Larrea Calle
Samuel Mosquera Palacios

Facultad:
Ingeniería de Software

Institución:
Corporación Universitaria Minuto de Dios

Curso:
Programación Orientada A Objetos
NRC - 10 – 56775

Docente:
Andrés Alfonso Mugas Viloria

Fecha:
26 de Mayo del 2026
"""

import tkinter as tk
# --- CREAMOS LA CLASE PRINCIPAL ---
class Estudiante:
    # --- USAMOS EL CONSTRUCTOR ---
    def __init__ (self, nombre, nota):
        self.nombre = nombre
        self.nota = nota
    # --- MÉTODO QUE MUESTRA LA INFORMACIÓN ---
    def mostrar_info(self): 
        print(f"El Nombre del Estudiante Es: {self.nombre}")
        print(f"La Nota del Estudiante Es: {self.nota}")
    # --- MÉTODO QUE RETORNA EL ESTADO ACADÉMICO ---
    def obtener_estado(self):
            if self.nota >= 3:
                return "Aprobado"
            else:
                return "Reprobado"

# --- FUNCIÓN PARA MOSTRAR LA INTERFAZ GRÁFICA ---           
def mostrar_inferfaz():
    # --- CREAMOS LAS EXCEPCIONES ---
    try:
        # --- REALIZAMOS LA LECTURA DE DATOS ---
        nombre = str(caja_nombre.get())
        # --- MANEJAMOS LOS ERRORES POR MEDIO DE LAS VALIDACIONES ---
        if nombre == "":
            raise ValueError("ERROR: El Nombre No Puede Estar Vacío.")
        elif not nombre.replace(" ", "").isalpha():
            raise ValueError("ERROR: El Nombre Solo Puede Contener Letras.")
        elif caja_nota.get().replace(".", "").isalpha():
            raise ValueError("ERROR: La Nota Solo Puede Contener Números.")
        nota = float(caja_nota.get())
        if nota < 0 or nota > 5.0:
            raise ValueError("ERROR: La Nota debe Ser Mayor A 0.0 Y Menor A 5.0.")
        # --- CREAMOS EL OBJETO ---
        E1 = Estudiante (nombre, nota)
        encabezado_error.config(text = "")
        if E1.obtener_estado() == "Aprobado":
            resultado.config(fg = "#00ff00")
        else:
            resultado.config(fg = "red")
             # --- MOSTRAMOS LOS RESULTADOS ---
        encabezado.config(text = "--- INFORMACIÓN DEL ESTUDIANTE ---")
        resultado.config(text = f"El Nombre del Estudiante Es: {E1.nombre}\nLa Nota del Estudiante Es: {E1.nota}\nEl Estado del Estudiante Es: {E1.obtener_estado()}")
        # --- CAPTURAMOS LOS ERRORES ---
    except ValueError as e:
        encabezado.config(text = "")
        resultado.config(text = "")
        encabezado_error.config(text = "--- ERROR ---")
        resultado.config(fg = "red", text=f"{e}")

# --- VENTANA ---
ventana = tk.Tk()
ventana.title("Estudiantes")
ventana.geometry("600x450")
ventana.configure(bg = "#1e1e1e")
ventana.grid_columnconfigure(0, weight=1)
ventana.grid_columnconfigure(1, weight=1)

# --- TÍTULO ---
tk.Label(ventana, text = "Registro de Estudiantes", bg = "#1e1e1e", fg = "white", font = ("Times New Roman", 24, "bold")).grid(row = 0, column = 0, columnspan = 2, pady = 15)

# --- ETIQUETAS Y CAJAS ---
# --- NOMBRE ---
tk.Label(ventana, text = "Nombre:", bg = "#1e1e1e", fg = "white", font = ("Times New Roman", 18, "bold")).grid(row = 1, column = 0, padx = (10,0), pady = 5, sticky = "e")
caja_nombre = tk.Entry(ventana, bg = "#3c3c3c", fg = "white", font = ("Times New Roman", 18), insertbackground = "white")
caja_nombre.grid(row = 1, column = 1, padx = (5,20), pady = 5, sticky = "w")
# --- NOTA ---
tk.Label(ventana, text = "Nota:", bg = "#1e1e1e", fg = "white", font = ("Times New Roman", 18, "bold")).grid(row = 2, column = 0, padx = (10,0), pady = 5, sticky = "e")
caja_nota = tk.Entry(ventana, bg = "#3c3c3c", fg = "white", font = ("Times New Roman", 18), insertbackground = "white")
caja_nota.grid(row = 2, column = 1, padx = (5,20), pady = 5, sticky = "w")

# --- BOTÓN ---
boton = tk.Button(ventana, text = "Registrar", command = mostrar_inferfaz, bg = "#0078d4", fg = "white", font = ("Times New Roman", 18, "bold"), padx = 10, pady = 5, cursor = "hand2")
boton.grid(row = 3, column = 0, columnspan = 2, pady = 15)

# --- ENCABEZADOS ---
# --- NORMAL ---
encabezado = tk.Label(ventana, text = "", bg = "#1e1e1e", fg = "white", font = ("Times New Roman", 18, "bold"))
encabezado.grid(row = 5, column = 0, columnspan = 2, pady = (10,0))
# --- ERROR ---
encabezado_error = tk.Label(ventana, text = "", bg = "#1e1e1e", fg = "red", font = ("Times New Roman", 18, "bold"))
encabezado_error.grid(row = 4, column = 0, columnspan = 2, pady = (10,0))

# --- RESULTADO ---
resultado = tk.Label(ventana, text = "", bg = "#1e1e1e", fg = "#00ff00", font = ("Times New Roman", 18))
resultado.grid(row = 6, column = 0, columnspan = 2, pady = 10)
ventana.mainloop()