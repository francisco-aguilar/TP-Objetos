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
	
	method unidadesDeLucha(){
		if(tieneRefuerzo){
			return valorBase + refuerzo.unidadesExtra()
		}else{
			return valorBase
		}
	}
}

object espejo{
	method unidadesDeLucha(){
		if(rolando.artefactos() == [self]){
			return 0
		}else{
			return rolando.mejorPertenencia().unidadesDeLucha()
		}
	}
}