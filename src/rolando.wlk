import fuerzaOscura.*
import espectroMalefico.*
import hechizoBasico.*
import hechiceriaAvanzada.*
import libroHechizos.*
import refuerzos.*

object rolando{
	var valorBase = 3
	var hechizoPreferido = libroHechizos
	var property artefactos = [collarDivino,mascaraOscura,espadaDelDestino,armadura,espejo]
	var valorBaseLucha = 1
	
	method nivelHechiceria(){
		return valorBase * hechizoPreferido.poder() + fuerzaOscura.valor()
	}
	
	method seCreePoderoso(){
		return hechizoPreferido.esPoderoso()	
	}
	
	method cambiarHechizoPreferido(nuevoHechizo){
		hechizoPreferido = nuevoHechizo
	}
	
	method nuevoValorBaseLucha(nuevoValor){
		valorBaseLucha = nuevoValor
	}

	method agregarArtefacto(artefacto){
		artefactos.add(artefacto)
	}
	
	method removerArtefacto(artefacto){
		artefactos.remove(artefacto)
	}
	
	method valorLucha(){
		return valorBaseLucha + artefactos.sum({unArtefacto => unArtefacto.unidadesDeLucha()})
	}
	
	method tieneMasLuchaQueHechiceria(){
		return self.valorLucha() > self.nivelHechiceria()
	}
	
	method mejorPertenencia(){
		var pertenenciasRestantes = artefactos.filter({unArtefacto => unArtefacto != espejo}) //lista sin el objeto espejo
		return pertenenciasRestantes.max({unArtefacto => unArtefacto.unidadesDeLucha()}) //maximo segun unidades de lucha
	}
	
	method estaCargado(){
		return artefactos.size() >= 5
	}
	
	/*¿Qué sucede si el libro de hechizos incluye como hechizo al mismo libro de hechizos?
	 
	 Lo que sucederá será que si se quiere averiguar el nivel de hechiceria de Rolando, entrará en un loop infinito
	 al querer calcular el poder del libro de hechizos, no pudiendo respondernos la consulta.
	 
	 */
	
}

object espadaDelDestino{
	method unidadesDeLucha(){
		return 3
	}
}

object collarDivino{
	var property cantidadDePerlas = 5
	
	method unidadesDeLucha(){
		return cantidadDePerlas
	}
	
	method nuevaCantidadDePerlas(nuevaCantidad){
		cantidadDePerlas = nuevaCantidad
	}
}

object mascaraOscura{

	method unidadesDeLucha(){
		return 4.max((fuerzaOscura.valor()) / 2)	
	}

}

