import spa.*

object olivia {
	var concentracion = 6
	
	method gradoDeConcentracion(){
		return concentracion	
	}
	
	method recibirMasajes(){
		concentracion +=3
	}
	
	method discute(){
		concentracion -=1
	}
	
	method darseUnBanioDeVapor(){ 
		
	}
}


object bruno {
	var property esFeliz = true
	var property tieneSed = false
	var property peso = 55000
	
	method esFeliz() { return esFeliz }
	method tieneSed() { return tieneSed }
	method peso() { return peso }
	
	method recibirMasajes() { esFeliz = true }
	method darseUnBanioDeVapor() { peso -= 500 ; tieneSed = true }
	method tomarAgua() { tieneSed = false }
	method comerFideos() { peso += 250; tieneSed = true }
	method correr() { peso -= 300 }
	method verElNoticiero() { esFeliz = false }
	
	method estaPerfecto() { 
		return self.esFeliz() and 
		not self.tieneSed() and 
		self.peso().between(50000, 70000)
	}
	method mediodiaEnCasa() { 
		self.comerFideos();
		self.tomarAgua(); 
		self.verElNoticiero()
		
	}
}

object ramiro {
	var property contractura = 0 
	var property pielGrasosa = false

//Funciona, pero me pregunto: ¿es correcta esta forma?
// 	
	method recibirMasajes() { 
		if (contractura == 0) { contractura = 0}
		if (contractura == 1) {contractura = 0} 
		if (contractura > 1) {contractura -=2}
	
	}  

	//metodo cheto
	method recibirMasajesCheto() {
		contractura = 0.max(contractura - 2)
	}
	
	method nivelDeContractura(){
		return contractura
	}
	
	method darseUnBanioDeVapor() { 
		pielGrasosa=false
	}
	
	method comerseUnBigMac() {
		pielGrasosa = true
	}
	
	method bajarALaFosa() { 
		pielGrasosa = true ; contractura += 1	
	}	
	
	method jugarAlPaddle() { 
		contractura += 3
	}
	
	method diaDeTrabajo() { 
		self.bajarALaFosa();
		self.comerseUnBigMac();
		self.bajarALaFosa()
	}
}






