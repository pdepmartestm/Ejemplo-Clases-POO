/*import coches.* // Objetos de ejemplos definidos completamente
import clase_coche.* //Clase coche definida completamente
*/

object brian{
	var property coche = mitsubishiLancer
	const amigos = [toreto]
	
	method arrestar(delincuente){
		if(self.esAmigo(delincuente))
			self.ayudarAEscapar(delincuente) // self referencia a brian
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

// Ejemplos de objetos con mismo comportamiento, mismos atributos, diferente estado y distinta identidad
object mitsubishiLancer{
	var velocidad = 0
	var potenciaDeMotor
	var tanquesDeNitrogeno = 1
	var property color = "naranja"
	
	method agregarTanque(){
		tanquesDeNitrogeno += 1
	}
	
	method arrancar(){
		velocidad = 1
	}
	
	method acelerar(cantidad){
		velocidad += cantidad * potenciaDeMotor
	}
	
	method desacelerar(cantidad){
		velocidad -= cantidad * potenciaDeMotor
	}
	
	method usarNitro(){
		if(self.quedanTanques()){
			potenciaDeMotor *= 2
			tanquesDeNitrogeno -= 1
			self.acelerar(2)
		}
	}
	
	method quedanTanques() = tanquesDeNitrogeno > 0
}

object dodgeCharger{
	var velocidad = 0
	var potenciaDeMotor = 3
	var tanquesDeNitrogeno = 3
	var property color = "negro"
	
	// Ejemplo de desreferenciacion de un objeto y perdida del mismo sin perdida de memoria
	var property objeto_prueba = object{
		method saludar(){
			return "hola mundo"
		}
	}
	
	/* Ejemplificacion de Memory Leak para entender el GARABAGE COLECTOR
	 * char* string = malloc(sizeof(5))
	 * char* otro_string = malloc(sizeof(15))
	 * string = otro_string
	 */
	
	method agregarTanque(){
		tanquesDeNitrogeno += 1
	}
	
	method arrancar(){
		velocidad = 1
	}
	
	method acelerar(cantidad){
		velocidad += cantidad * potenciaDeMotor
	}
	
	method desacelerar(cantidad){
		velocidad -= cantidad * potenciaDeMotor
	}
	
	method usarNitro(){
		if(self.quedanTanques()){
			potenciaDeMotor *= 2
			tanquesDeNitrogeno -= 1
			self.acelerar(2)
		}
	}
	
	method quedanTanques() = tanquesDeNitrogeno > 0
}

// Creacion de la clase coche
class Coche{
	var velocidad = 0
	var potenciaDeMotor =4
	var tanquesDeNitrogeno = 3
	const property color = "negro"
	
	method agregarTanque(){
		tanquesDeNitrogeno += 1
	}
	
	method arrancar(){
		velocidad = 1
	}
	
	method acelerar(cantidad){
		velocidad += cantidad * potenciaDeMotor
	}
	
	method desacelerar(cantidad){
		velocidad -= cantidad * potenciaDeMotor
	}
	
	method usarNitro(){
		if(self.quedanTanques()){
			potenciaDeMotor *= 2
			tanquesDeNitrogeno -= 1
			self.acelerar(2)	// self hace referencia a la instancia particular que la llamo
		}
	}
	
	method quedanTanques() = tanquesDeNitrogeno > 0
}

// Ejemplo de objeto anonimo
const objeto_prueba_dos = object{
	method saludar(){
		return "hola."
	}
}