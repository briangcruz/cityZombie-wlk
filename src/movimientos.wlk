import wollok.game.*
import character.*
import configuracion.*


object movimiento{
	
	method movimientosDePersonaje_(personaje){
		
		game.schedule(50, {=> roboto.movimientoDerecha()})
		
		game.schedule(50, {=> roboto.movimientoIzquierda()})
		
		game.schedule(50, {=> roboto.atacar()})
		
	}
	
}
