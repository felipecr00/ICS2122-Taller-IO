#A continuación vamos a trabajar analizando el siguiente problema (modelo):
#  maximizar: c*x + d*y
#  sujeto a las siguientes restricciones:
#        A*x <= b
#          y >= u
#          x >= 0
#          y >= 0
#Donde x es un vector de largo n (donde cada uno de sus componentes es binario), y es un vector de largo m,
#u es un vector de largo m, b es un vector de largo m,
#A es una matriz de mxn, c es un vector de largo n,
#d es un vector de largo n y "*" representa el producto matricial

#Importamos las librerías que vamos a utilizar
from gurobipy import *
import numpy as np
import pickle

#Fijamos la semilla para generar números aleatorios
np.random.seed(1)
#Definimos los conjuntos de índices de las variables del problema en forma de listas
I=list(range(0,20))
J=list(range(0,10))
#Obtenemos la cardinalidad (largo de las listas) de esos conjuntos
n = len(I)
m = len(J)

#Definimos una lista con los límites de la restricción que vamos a relajar (los "límites u" del lado derecho de la desigualdad)
# lims_u = [5*i for i in range(0,300)]
lims_u = [i/40 for i in range(0,200)]
#Definimos una lista para ir guardando los valores de la función objetivo a medida que resolvemos los
#distintos problemas (las diferentes relajaciones)
VFOs = []
#Generamos los parámetros del problema de forma aleatoria (la matriz y vectores en el modelo)
A = np.random.randint(0, 10, (m, n))
b = np.random.randint(20,60,(m,1))
c = np.random.randint(30, 70,n)
d = np.random.randint(5, 15, m)
#Iteramos para cada uno de los valores del límite u
for lim_u in lims_u:
    #Definimos un nuevo modelo
    modelo = Model("Ej")
    # modelo.Params.Threads = 1
    #(Para fijar que Gurobi use solo 1 hilo de procesamiento)
    # modelo.Params.OutputFlag = 0
    #(Para que el solver de Gurobi no imprima sus outputs en la consola)
    #Definimos el vector del lado derecho (u) de la desigualdad como un vector con todos sus elementos
    #iguales al límite u correspondiente a esta relajación
    u = np.full((m,1),lim_u)
    #Definimos las variables del modelo
    x = {}
    for i in I:
        x[i] = modelo.addVar(vtype=GRB.BINARY, name="x_{}".format(i))
    y = {}
    for j in J:
        y[j] = modelo.addVar(vtype=GRB.INTEGER, name="y_{}".format(j))

    #Definimos la función objetivo del modelo
    modelo.setObjective(quicksum(c[i]*x[i] for i in I) + quicksum(d[j]*y[j] for j in J), GRB.MAXIMIZE)
    #Agregamos las restricciones
    for j in J:
        modelo.addConstr(quicksum(A[j,i]*x[i] for i in I)<= b[j])
    for i in I:
        modelo.addConstr(x[i] >= 0)
    for j in J:
        modelo.addConstr(y[j] >= 0)
        modelo.addConstr(y[j] <= u[j])

    #Le decimos al solver que resuleva el modelo
    modelo.optimize()

    #Imprimimos los valores de las variables en el óptimo
    for v in modelo.getVars():
        print('{0} -> {1}'.format(v.varName, v.x))

    #Imprimimos el valor de la función objetivo en el óptimo
    print('Obj: {}'.format(modelo.objVal))

    #Por último, agregamos el valor obtenido a la lista VFOs
    VFOs.append(modelo.objVal)


#Finalmente (una vez que ya resolvimos todas las relajaciones) guardamos los resultados
#(valores de los límites u y de las funciones objetivo en el óptimo) en un archivo usando la librería pickle
with open("lims_u","wb") as output_file:
    pickle.dump(lims_u, output_file)
with open("VFOs","wb") as output_file:
    pickle.dump(VFOs, output_file)
