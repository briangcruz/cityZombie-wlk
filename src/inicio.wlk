import wollok.game.*
import zombies.*
import character.*
import movimientos.*
import configuracion.*

object nivel {
	const ancho = 20
	const alto = 10
	
	method inicio(){
		game.width(ancho)
		game.height(alto)
		game.boardGround("city.jpg")
		game.addVisual(roboto)
		movimiento.movimientosDePersonaje_(roboto)
		
	}
}
