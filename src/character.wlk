import wollok.game.*
import accionesCharacter.*

object roboto {
	var property image = "character1Right.png"
	var property position = game.at(7,1)
	var vida = 150
	
	method vida() = vida
	
	method perderVida(){
		vida -= 5
	}
	method chocarConPersonaje_(personaje){
		self.perderVida()
	}
	
	method muerteDePersonaje(personaje){
		if(image == "character1Right.png"){
			personaje.muerteHaciaDerecha()
			game.schedule(1000,{=> game.removeVisual(self)})
		}
		else if(image == "character1Left.png"){
			personaje.muerteHaciaIzquierda()
			game.schedule(1000,{=> game.removeVisual(self)})
		}
	}
	
}
