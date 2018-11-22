import remiseria.*
import viajes.*

class Corsa {
	var property color = null
	
	method velocidadMaxima() {
		return 150
	}
	
	method capacidad() {
		return 4
	}
	
	method peso() {
		return 1300
	}
}

class AutoStandard {
	const color = "Azul"
	const pesoTanque = 150
	const pesoSinTanque = 1200
	
	var property tanqueAGasAdicional = false
	
	method capacidad() {
		return if (tanqueAGasAdicional){3}else{4}
	}
	
	method peso() {
		return if (tanqueAGasAdicional){pesoSinTanque+pesoTanque}else{pesoSinTanque}
	}
	
	method velocidadMaxima() {
		return if (tanqueAGasAdicional){120}else{110}
	}
}

object trafic {
	const pesoStandard = 4000
	const pesoMotorBataton = 500
	const pesoMotorPulenta = 800
	const pesoInteriorComodo = 700
	const pesoInteriorPopular = 1000
	
	const color = "Blanco"
	var property interiorComodo = false
	var property interiorPopular = false
	var property motorPulenta = false
	var property motorBataton = false
	
	method capacidad() {
		return if (interiorComodo&&!interiorPopular){5}else{12}
	}
	
	method velocidadMaxima() {
		return if (motorPulenta&&!motorBataton) {130}else{80}
	}
	
	method peso() {
		return if (interiorComodo&&!interiorPopular){
			if (motorPulenta&&!motorBataton){pesoInteriorComodo+pesoStandard+pesoMotorPulenta}
			else{pesoInteriorComodo+pesoStandard+pesoMotorBataton}
		}else{
			if (motorPulenta&&!motorBataton){pesoMotorPulenta+pesoInteriorPopular+pesoStandard}
			else{pesoMotorBataton+pesoInteriorPopular+pesoStandard}
			} 
	}
}

class Auto {
	var property capacidad = 0
	var property velocidadMaxima = 0
	var property peso = 0
	var property color = null
	

}

