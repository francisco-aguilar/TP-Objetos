object espectroMalefico {
	var nombre = "Espectro Malefico"
	var property esPoderoso = true
		
	method cambiarNombre(nuevoNombre){
		nombre = nuevoNombre
	}
	
	method esPoderoso(){
		return nombre.size() > 15
	}
	
	method poder(){
		return nombre.size()
	}
	
	method unidadesExtra(){
		return self.poder()
	}
}
