#Importamos las librerías que vamos a utilizar
import numpy as np
import matplotlib.pyplot as plt
import pickle


#Abrimos el archivo con la lista con los límites
try:
    lims_u = pickle.load(open("lims_u", "rb"))
except:
    print("No se pudo leer correctamente el archivo")
#Abrimos el archivo con la lista con los valores objetivos obtenidos
try:
    VFOs = pickle.load(open("VFOs", "rb"))
except:
    print("No se pudo leer correctamente el archivo")

#Generamos un gráfico de línea para mostrar como varía la función objetivo a medida que relajamos la segunda desigualdad
plt.figure("Sensibilidad con respecto a lim_u")#Generamos una figura ("ventana de ploteo")
plt.plot(lims_u,VFOs,label="modelo 1")#Graficamos (dibujamos)
plt.title("Gráfico 1")#Le ponemos título al gráfico
plt.xlabel("lim_u",fontsize=16)#Le ponemos título al eje de las abscisas
plt.ylabel("Valor de la F.O.",fontsize=16)#Le ponemos título al eje de las ordenadas
plt.tight_layout() #Ajustamos la distribución de los elementos del gráfico
plt.legend()#Anotamos etiquetas para las curvas en el gráfico
plt.show()#Mostramos (si no no se abre ni se ve nada) la figura con el gráfico














