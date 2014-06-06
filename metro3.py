import random
import mysql.connector
from heapq import merge


cnx = mysql.connector.connect(user='root',password='gnu30121308', database='tramo')
c1 = cnx.cursor()
c2 = cnx.cursor()


def inicial(inicio,fin):
	comienzo = []
	final = []
	queryInicial = "SELECT * FROM estacion WHERE nombre = \'" + inicio +"\' OR nombre = \'" + fin +"\'"
	c1.execute(queryInicial)

	for i in c1:
		if inicio == i[1]:
			comienzo.append(i[2])
		else:
			final.append(i[2])

	return comienzo,final

	c2.close()
	#cnx.close()

def cruzar(Torigen,origen):
	print "\ncruzar ----------------------------------\n"
	resp = []
	for x in Torigen:
		
		query = "SELECT * FROM tramo WHERE tramo = \'" + x +"\'"
		c1.execute(query)

		for i in c1:
			print origen
			resp.append(consulta(i,origen))
			
		
		print "----------------------------------"
	return resp

def consulta(i,origen):
	resp = []
	resp.append(origen)
	if i[3] == origen:
		print i[4]
		resp.append(i[4])
		query1 = "SELECT * FROM tramo WHERE tramo <> \'" + i[1] +"\' AND ( inicio =\'" + i[4] +"\' OR fin = \'" + i[4] +"\' )  LIMIT 1"
		c1.execute(query1)

		for x in c1:
			print x[4]
			resp.append(x[4])


	else:
		print i[3]
		resp.append(i[3])
		query2 = "SELECT * FROM tramo WHERE tramo <> \'" + i[1] +"\' AND ( inicio =\'" + i[3] +"\' OR fin = \'" + i[3] +"\' )  LIMIT 1"
		c1.execute(query2)

		for x in c1:
			print x[3]
			resp.append(x[3])

	return resp

#no
def comparar(origen,destino):
	resp = []
	for i in origen:
		for x in i:
			for j in destino:
				for y in j:
					if x == y:
						#print "coinside", i,j
						resp.append((i,j))


	return resp
#no
def ordenar(evalua):
	resp = []
	for x in evalua:
		tmp = x[0]
		tmp2 = x[1]
		tmp2 = tmp2[::-1]
		#print tmp, tmp2
		#
		#nueva = list(merge(tmp, tmp2))
		#nueva = list(set(tmp + tmp2))
		#print nueva
		resp.append((tmp,tmp2))

	respuesta = mutar(resp)

	return respuesta

def mutar(resp):
	print "\nmutar ----------------------------------\n"
	respuesta = []
	for x in resp:
		asd = []
		a = len(x[0]) 
		for y in xrange(0,a):
			#print x[0][a],x[1][0]
			if x[0][y] ==  x[1][0]:
				for l in x[1]:
					asd.append(l)
			else:
				asd.append(x[0][y])

		respuesta.append(asd)
	
	return respuesta

def obtenerOrigen(Torigen,Tdestino,origen,destino):

	if Torigen == Tdestino:
		print "el mismo tramo"
	else:
		print "ORIGEN"
		Rorigen = cruzar(Torigen,origen)

		print "\nDESTINO"
		Rdestino = cruzar(Tdestino,destino)
		

	return Rorigen,Rdestino

def nuevoOrigen(evalua):
	for x in evalua:

		a = len(x[0]) - 1
		tmp = x[0]
		
		query1 = "SELECT * FROM tramo WHERE inicio = \'" + x[0][a] +"\'AND fin != \'" + x[0][a-1] +"\' LIMIT 1"

		c1.execute(query1)
		for x in c1:
			tmp.append(x[4]) #x[4]

	for i in evalua:
		b = len(i[1]) -1 
		tmp2 = i[1]
		query2 = "SELECT * FROM tramo WHERE inicio = \'" + i[1][b] +"\'AND fin != \'" + i[1][b-1] +"\' LIMIT 1"
		
		c1.execute(query1)
		for i in c1:
			tmp.append(i[4]) #x[4]

	
	return evalua	

def matar(evalua):
	for x in evalua:
		#print x[3], x[4]

		a = len(x)-1
		print a
		
		for k in xrange(0,a):
			print k+1
			query = "SELECT peso FROM tramo WHERE (inicio = \'" + x[k] +"\' AND fin = \'" + x[k+1] +"\') OR (inicio = \'" + x[k+1] +"\' AND fin = \'" + x[k] +"\')"
			print query
			c1.execute(query)
			for x in c1:
				print x
	
	
def main():

	origen = "baquedano"
	destino = "la cisterna"
	#xf1

	(Torigen,Tdestino)=inicial(origen,destino)

	(Rorigen,Rdestino) = obtenerOrigen(Torigen,Tdestino,origen,destino)

	evalua = comparar(Rorigen,Rdestino)

	evalua = ordenar(evalua) 

	for x in evalua:
		print x

	
	matar(evalua)
	
	c1.close()#CRUZAR
	cnx.close()#CRUZAR

	
	
	
	

	
main()



