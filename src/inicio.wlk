import wollok.game.*
import zombies.*
import character.*
import accionesCharacter.*

object nivel {
	const ancho = 25
	const alto = 15
	
	method inicio(){
		game.width(ancho)
		game.height(alto)
		game.boardGround("city.jpg")
		game.addVisual(roboto)
		accion.movimientos()
		game.addVisual(zombie)
		
		game.whenCollideDo(zombie,{
			personaje => personaje.chocarConPersonaje_(zombie)
			if(personaje.vida() == 0){
				personaje.muerteDePersonaje(accion)
				game.schedule(2500, {=> game.clear()})
			}
		})
		
		game.onTick(600, "movimientoDeZombie",{
			zombie.acercarseAPersonaje_(roboto)
		})
	}
}
