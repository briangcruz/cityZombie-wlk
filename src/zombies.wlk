import wollok.game.*
import movimientos.*


object zombie {
	var property image = "zombieA1Left.png"
	var property position = game.at(11,1)
	
	
	method moverPersonaje_A_(personaje,direccion){
		personaje.position(direccion.siguiente(personaje.position()))
	}
	
	method ponerDefaultDerecha(){
		image = "zombieA1Right.png"
			
	}
	method ponerDefaultIzquierda(){
		image = "zombieA1Left.png"
	}

	method movimientoDerecha(){
			position = position.right(1)
			image = "zombieA2Right.png"
			game.schedule(100, {=> self.ponerDefaultDerecha()})
			image = "zombieA3Right.png"
			game.schedule(80, {=> self.ponerDefaultDerecha()})
			image = "zombieA4Right.png"
			game.schedule(60, {=> self.ponerDefaultDerecha()})
			image = "zombieA5Right.png"
			game.schedule(40, {=> self.ponerDefaultDerecha()})

	}
	method movimientoIzquierda(){
			position = position.left(1)
			image = "zombieA2Left.png"
			game.schedule(100, {=> self.ponerDefaultIzquierda()})
			image = "zombieA3Left.png"
			game.schedule(80, {=> self.ponerDefaultIzquierda()})
			image = "zombieA4Left.png"
			game.schedule(60, {=> self.ponerDefaultIzquierda()})
			image = "zombieA5Left.png"
			game.schedule(40, {=> self.ponerDefaultIzquierda()})
		
	}
}



