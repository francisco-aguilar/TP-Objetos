import rolando.*
import fuerzaOscura.*
import espectroMalefico.*
import hechizoBasico.*
import libroHechizos.*
import refuerzos.*

object armadura{
	var property tieneRefuerzo = false
	var property refuerzo // no pide inicializar
	var valorBase = 2
	
	method unidadesDeLucha(personaje){
			return valorBase + refuerzo.unidadesExtra()
	}
}

object espejo{
	method unidadesDeLucha(personaje){
		if(personaje.artefactos() == [self]){
			return 0
		}else{
			return personaje.mejorPertenencia().unidadesDeLucha()
		}
	}
}
