import random
import mysql.connector
from heapq import merge


cnx = mysql.connector.connect(user='root',password='', database='tramo')
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
		query1 = "SELECT * FROM tramo WHERE tramo <> \'" + i[1] +"\' AND ( inicio =\'" + i[4] +"\' OR fin = \'" + i[4] +"\' ) ORDER BY peso asc LIMIT 1"
		c1.execute(query1)

		for x in c1:
			print x[4]
			resp.append(x[4])


	else:
		print i[3]
		resp.append(i[3])
		query2 = "SELECT * FROM tramo WHERE  tramo <> \'" + i[1] +"\' AND ( inicio =\'" + i[3] +"\' OR fin = \'" + i[3] +"\' ) ORDER BY peso asc LIMIT 1"
		c1.execute(query2)

		for x in c1:
			print x[3]
			resp.append(x[3])

	return resp

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

		print resp

def main():

	origen = "baquedano"
	destino = "la cisterna"

	(Torigen,Tdestino)=inicial(origen,destino)

	if Torigen == Tdestino:
		print "el mismo tramo"
	else:
		print "ORIGEN"
		Rorigen = cruzar(Torigen,origen)

		print "\nDESTINO"
		Rdestino = cruzar(Tdestino,destino)
		

		c1.close()#CRUZAR
		cnx.close()#CRUZAR

	evalua = comparar(Rorigen,Rdestino)

	ordenar(evalua)
	


main()
