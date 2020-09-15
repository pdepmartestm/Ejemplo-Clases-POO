class Coche {
	var property color
	var velocidad = 0
	var potenciaMotor = 1
	var tanquesDeNitrogeno = 1
	var distanciaRecorrida = 0
	
	method velocidad() = velocidad
	
	method arrancar(){
		velocidad = 1
	}
	
	method acelerar(incrementoVelocidad){
		velocidad += incrementoVelocidad * potenciaMotor
		self.desplazarme()
	}
	
	method desacelerar(decrementoVelocidad){
		velocidad -= decrementoVelocidad * potenciaMotor
		self.desplazarme()
	}
	
	method usarNitro(){
		if(self.quedaNitro()){
			tanquesDeNitrogeno--
			potenciaMotor *= 2
			self.acelerar(2)
		}
	}
	
	method apagar(){
		velocidad = 0
		distanciaRecorrida = 0
	}
	
	method quedaNitro() = tanquesDeNitrogeno > 0
	
	method desplazarme(){
		distanciaRecorrida += velocidad * 2
	}
	
	method agregarTanque(){
		tanquesDeNitrogeno++
	}
	
	method cuantoRecorri() = distanciaRecorrida
}
