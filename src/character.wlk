import wollok.game.*
import movimientos.*

object roboto {
	var property image = "character1Right.png"
	var property position = game.at(7,1)
	var enMovimiento = false
	
	method ponerDefaultDerecha(){
		image = "character1Right.png"
			
	}
	method ponerDefaultIzquierda(){
		image = "character1Left.png"
	}

	method movimientoDerecha(){
		keyboard.right().onPressDo{
			position = position.right(1)
			game.schedule(70, {=> image = "character2Right.png"})
			game.schedule(120, {=> image = "character3Right.png"})
			game.schedule(200, {=> image = "character1Right.png"})
			
		}
		image = "character1Right.png"
		
	}
	method movimientoIzquierda(){
		keyboard.left().onPressDo{
			position = position.left(1)
			game.schedule(70, {=> image = "character2Left.png"})
			game.schedule(120, {=> image = "character3Left.png"})
			game.schedule(200, {=> image = "character1Left.png"})
		}
	}
	method atacar(){
		keyboard.m().onPressDo{
			if(image == "character1Right.png" or image == "character2Right.png"){
				image = "characterAttackR.png"
				game.schedule(100, {=> self.ponerDefaultDerecha()})
			} else if(image == "character1Left.png" or image == "character2Left.png"){
				image = "characterAttackL.png"
				game.schedule(100, {=> self.ponerDefaultIzquierda()}){
				
			}
		}
	}}
	method atacarDerecha(){
		keyboard.m().onPressDo{
			image = "characterAttackR.png"
			game.schedule(100, {=> self.ponerDefaultDerecha()})
		}
		
	}
	method atacarIzquierda(){
		keyboard.m().onPressDo{
			image = "characterAttackR.png"
			game.schedule(100, {=> self.ponerDefaultDerecha()})
		}
	}
	
	method muerteDePersonaje(){
			
	}
	
	
	method moverPersonaje_A_(personaje,direccion){
		personaje.position(direccion.siguiente(personaje.position()))
	}

	
	
	
	
	
	
}
