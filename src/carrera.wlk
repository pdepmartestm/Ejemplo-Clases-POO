import coches.*
import clase_coche.*

object brian{
	var property coche = mitsubishiLancer
	const amigos = [toreto]
	
	method arrestar(delincuente){
		if(self.esAmigo(delincuente))
			self.ayudarAEscapar(delincuente)
		else
			delincuente.irAPrision()
	}
	
	method esAmigo(alguien){
		return amigos.contains(alguien)
	}
	
	method ayudarAEscapar(alguien){
		alguien.coche(coche)
	}
	
	method correrCarrera(){
		coche.arrancar()
		coche.acelerar(3)
		coche.desacelerar(1)
		coche.acelerar(2)
		coche.usarNitro()
	}
	
}

object toreto{
	
	var property coche = dodgeCharger
	
	method correrCarrera(){
		coche.arrancar()
		coche.acelerar(3)
		3.times({n => coche.usarNitro()})
	}
	
	method irAPrision(){
		self.perderCoche()
	}
	
	method perderCoche(){
		coche = null
	}
	
	method tunearCoche(nuevoColor){
		coche.color(nuevoColor)
		coche.agregarTanque()
	}
	
}
