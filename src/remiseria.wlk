import vehiculos.*
import viajes.*

class Remiseria {
	var property flota = []
	
	method agregarAFlota(vehiculo) {
		flota.add(vehiculo)
	}
	
	method quitarDeFlota(vehiculo) {
		flota.remove(vehiculo)
	}
	
	method pesoTotalFlota() {
		return flota.map({f=>f.peso()}).sum()
	}
	
	method esRecomendable() {
		return ((flota.size()>= 3)&&(self.velocidadMasDeCien()))
	}
	
	method velocidadMasDeCien() {
		return flota.all({f=>f.velocidadMaxima()>=100})
	}
	
	method colorDelAutoMasRapido() {
		return flota.max({f=>f.velocidadMaxima()}).color()
	}
	
	method capacidadTotalYendoA(velocidad) {
		//return flota.filter({ f=>f.velocidadMaxima()>=velocidad.capacidad() })
		return flota.filter({f=>f.velocidadMaxima()>=velocidad}).sum({f=>f.capacidad()})
	}
}