import rolando.*
import espectroMalefico.*
import hechizoBasico.*

object libroHechizos{
	var hechizos = [espectroMalefico,hechizoBasico]
	
	method poder(){
		var hechizosPoderosos = hechizos.filter({unHechizo => unHechizo.esPoderoso()})
		return hechizosPoderosos.sum({unHechizo => unHechizo.poder()})
	}
}