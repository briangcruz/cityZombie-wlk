import wollok.game.*
import character.*
import configuracion.*


object movimiento{
	
	method moverPersonaje_A_(personaje,direccion){
		personaje.position(direccion.siguiente(personaje.position()))
	}
	
	method movimientosDePersonaje_(personaje){
		keyboard.up().onPressDo{self.moverPersonaje_A_(personaje,arriba)}
		cambio.modificarRoboto()
		keyboard.down().onPressDo{self.moverPersonaje_A_(personaje,abajo)}
		cambio.modificarRoboto()
		keyboard.left().onPressDo{self.moverPersonaje_A_(personaje,izquierda)}
		cambio.modificarRoboto()
		keyboard.right().onPressDo{self.moverPersonaje_A_(personaje,derecha)}
		cambio.modificarRoboto()
	}
}

object izquierda { 
	method siguiente(position) = position.left(1) 
	method opuesto() = derecha
}

object derecha { 
	method siguiente(position) = position.right(1) 
	method opuesto() = izquierda
}

object abajo { 
	method siguiente(position) = position.down(1) 
	method opuesto() = arriba
}

object arriba { 
	method siguiente(position) = position.up(1) 
	method opuesto() = abajo
}