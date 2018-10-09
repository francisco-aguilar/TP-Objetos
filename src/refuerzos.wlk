import rolando.*
import hechiceriaAvanzada.*

object cotaDeMalla{
	var unidadesExtra = 1

	method unidadesExtra(personaje){
		return unidadesExtra
	}
}

object bendicion{
	method unidadesExtra(personaje){
		return personaje.nivelHechiceria()
	}
}

object ninguno{
	var unidadesExtra = 0
	
	method unidadesExtra(personaje){
		return unidadesExtra
	}
}
