import personas.*


object spa {
	var ultimo 
	
	method atender(persona) {
		if (ultimo == persona){
			persona.recibirMasajes();
			persona.darseUnBanioDeVapor();
			persona.recibirMasajes()
			} else { 
				persona.recibirMasajes(); 
				persona.darseUnBanioDeVapor()
				
				ultimo = persona
			}
		
		
		// hay que hacer que la persona reciba masajes y se dé un baño de vapor
		// despues, agregar el premio para el que vuelve enseguida
	}
}