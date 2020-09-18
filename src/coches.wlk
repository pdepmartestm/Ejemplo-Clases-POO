object mitsubishiLancer{
	var property color = "naranja"
	var velocidad = 0
	var potenciaMotor = 2
	var tanquesDeNitrogeno = 3
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
		self.acelerar( decrementoVelocidad*(-1))
	}
	
	method usarNitro(){
		if(self.quedaNitro()){
			tanquesDeNitrogeno -= 1
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
		tanquesDeNitrogeno += 1
	}
	
	method cuantoRecorri() = distanciaRecorrida
}


object dodgeCharger{
	var property color = "negro"
	var velocidad = 0
	var potenciaMotor = 5
	var tanquesDeNitrogeno = 3
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
		self.acelerar( decrementoVelocidad*(-1))
	}
	
	method usarNitro(){
		if(self.quedaNitro()){
			tanquesDeNitrogeno -=1 
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
		tanquesDeNitrogeno += 1
	}
	
	method cuantoRecorri() = distanciaRecorrida
}