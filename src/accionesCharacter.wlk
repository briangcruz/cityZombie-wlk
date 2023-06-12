import wollok.game.*
import character.*


object accion{
	
	method movimientos(){
		game.schedule(50, {=> self.movimientoHaciaDerecha()})
		game.schedule(50, {=> self.movimientoHaciaIzquierda()})
		game.schedule(50, {=> self.atacar()})
	}
	method chocarConRoboto(personaje){
		personaje.perderVida()
	}
	method movimientoHaciaDerecha(){
		keyboard.right().onPressDo{
			roboto.position(roboto.position().right(1))
			game.schedule(20,  {=> roboto.image("character2Right.png")})
			game.schedule(50,  {=> roboto.image("character3Right.png")})
	//		game.schedule(70,  {=> roboto.image("character4Right.png")})
			game.schedule(70,  {=> roboto.image("character5Right.png")})
			game.schedule(100, {=> roboto.image("character1Right.png")})
		}
	}
	method movimientoHaciaIzquierda(){
		keyboard.left().onPressDo{
			roboto.position(roboto.position().left(1))
			game.schedule(20,  {=> roboto.image("character2Left.png")})
			game.schedule(50,  {=> roboto.image("character3Left.png")})
	//		game.schedule(70,  {=> roboto.image("character3Left.png")})
			game.schedule(70,  {=> roboto.image("character3Left.png")})
			game.schedule(100, {=> roboto.image("character1Left.png")})
		}
	}
	method atacar(){
		keyboard.m().onPressDo{
			if(roboto.image() == "character1Right.png" or roboto.image() == "character2Right.png"){
				self.atacarDerecha()
			}
			else if(roboto.image() == "character1Left.png" or roboto.image() == "character2Left.png"){
				self.atacarIzquierda()
			}
		}
	}
	method atacarDerecha(){
		game.schedule(50,  {=> roboto.image("characterAttackR2.png")})
		game.schedule(70,  {=> roboto.image("characterAttackR3.png")})
	//	game.schedule(90,  {=> roboto.image("characterAttackR4.png")})
		game.schedule(110,  {=> roboto.image("characterAttackR5.png")})
		game.schedule(200, {=> roboto.image("character1Right.png")})
	}
	method atacarIzquierda(){
		game.schedule(50,  {=> roboto.image("characterAttackL2.png")})
		game.schedule(70,  {=> roboto.image("characterAttackL3.png")})
	//	game.schedule(90,  {=> roboto.image("characterAttackL4.png")})
		game.schedule(110,  {=> roboto.image("characterAttackL5.png")})
		game.schedule(200, {=> roboto.image("character1Left.png")})
	}
	method muerteHaciaDerecha(){
		game.schedule(100, {=> roboto.image("characterDR.png")})
		game.schedule(300, {=> roboto.image("characterDR1.png")})
		game.schedule(900, {=> roboto.image("characterDR2.png")})
		game.schedule(1600, {=> roboto.image("characterDR3.png")})
	}
	method muerteHaciaIzquierda(){
		game.schedule(100, {=> roboto.image("characterDL.png")})
		game.schedule(300, {=> roboto.image("characterDL1.png")})
		game.schedule(900, {=> roboto.image("characterDL2.png")})
		game.schedule(1600, {=> roboto.image("characterDL3.png")})
	}

}