import vehiculos.*

object mensajeria {
	var property mensajeros = []
	method contratar(alguien){ mensajeros.add(alguien)}
	method despedir(alguien){ mensajeros.remove(alguien)}
	method despedirATodos(){ mensajeros.removeAll(mensajeros)}
	method esGrande() = mensajeros.size() > 2
	method elPrimeroPuedeEntregar() = paquete.puedeSerEntregadoPor(mensajeros.first())
	method pesoDelUltimo() = mensajeros.last().peso()
	method sePuedeEntregarPaquete() = mensajeros.any({mensajero=> paquete.puedeSerEntregadoPor(mensajero)})
	method paqueteFacil() = mensajeros.all({mensajero=> paquete.puedeSerEntregadoPor(mensajero)})
	method candidatosALlevarPaquete() = mensajeros.filter({mensajero=> paquete.puedeSerEntregadoPor(mensajero)})
	method tieneSobrepeso() = (mensajeros.sum({mensajero=> mensajero.peso()}) / mensajeros.size()) > 500
	method enviarPaquete(){
		var property fueEnviado = false
		if(mensajeros.)
	} 
}

object roberto{
	var property vehiculo
	var property peso
	method asignarVehiculo(transporte){
		vehiculo = transporte
		peso += transporte.peso()
	}
	method puedeLlamar() = false 	
}

object chuckNorris{
	const property peso = 900
	method puedeLlamar() = true
}

object neo{
	const property peso = 0
	var property tieneCredito 
	method cargarCredito(){ tieneCredito = true}
	method puedeLlamar() = self.tieneCredito()
}

object paquete{
	 var property destino
	 var property estaPago = false
	 method asignarDestino(lugar){ destino = lugar}
	 method pagar(){estaPago = true}
	 method puedeSerEntregadoPor(mensajero) = self.estaPago() and destino.dejaPasar(mensajero)
	 
}





