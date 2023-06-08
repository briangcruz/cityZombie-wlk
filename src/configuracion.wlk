import wollok.game.*
import movimientos.*
import character.*
import zombies.*

object cambio{
	method modificarRoboto(){
		if(roboto.image() == "character1Right.png"){
			roboto.image("")
			roboto.image("character2Right.png")
		} else if(roboto.image() == "character2Right.png"){
			roboto.image("")
			roboto.image("character1Right.png")
		}
	}
}