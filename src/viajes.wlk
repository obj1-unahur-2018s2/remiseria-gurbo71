import vehiculos.*
import remiseria.*

class Viaje {
	var property kilometros = 0
	var property horasMaxima = 0
	var property cantPasajeros = 0
	var property colores = #{"Naranja","Azul","Rojo"}
	
	/*method puedeHacerViaje(auto) {
		return colores.any( {color => color == auto.color()} )
	}*/
	
	method puedeHacerViaje(auto) {
		return (auto.velocidadMaxima()+10>=(kilometros/horasMaxima))
			&&(auto.capacidad()<=self.cantPasajeros())
			&&(!colores.any( {color => color == auto.color()} ))
	}
}