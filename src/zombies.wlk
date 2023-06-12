import wollok.game.*
import character.*


class Zombie{
	var property image 
	var property position 
	
	
}

object zombie {
	var property image = "zombieA1Left.png"
	var property position = game.at(11,1)
	
	method moverPersonaje_A_(personaje,direccion){
		personaje.position(direccion.siguiente(personaje.position()))
	}
	method acercarseAPersonaje_(personaje){
		var posicionCharacter = personaje.position()
		var newX = position.x() + if(posicionCharacter.x() > position.x()) {1} else {-1}
		if(posicionCharacter.x() < position.x()){
			self.loopMovimientoIzquierda()
			position = game.at(newX,1)
		} else if(posicionCharacter.x() > position.x()){
			self.loopMovimientoDerecha()
			position = game.at(newX,1)
		}
	}
	method loopMovimientoDerecha(){
			game.schedule(50,  {=> image = "zombieA2Right.png"})
			game.schedule(200, {=> image = "zombieA3Right.png"})
			game.schedule(350, {=> image = "zombieA5Right.png"})
			game.schedule(500, {=> image = "zombieA6Right.png"})
			game.schedule(650, {=> image = "zombieA1Right.png"})
	}
	method loopMovimientoIzquierda(){
			game.schedule(50,  {=> image = "zombieA2Left.png"})
			game.schedule(200, {=> image = "zombieA3Left.png"})
			game.schedule(350, {=> image = "zombieA5Left.png"})
			game.schedule(500, {=> image = "zombieA6Left.png"})
			game.schedule(650, {=> image = "zombieA1Left.png"})
	}
}