class BarcoPirata{
    const tripulantes = []
    var mision
    var capacidad 

    method agregar(unPirata){
        if(mision.esUtil(unPirata) and self.cantTripulacion() <= capacidad ){
            tripulantes.add(unPirata)
        }else{
            self.error("El pirata no se puede unir a la mision")
        }
    }

    method cambiarMision(unaMision){
        mision = unaMision
        tripulantes.removeAll(self.tripulacionNoCalificaPara(unaMision))
    }

    method tripulacionNoCalificaPara(unaMision){
        return tripulantes.filter({p => not unaMision.esUtil(p)})
    }

    method tieneSuficienteTripulacion(){
        return  (capacidad * 0.9) <= self.cantTripulacion()
    }

    method cantTripulacion(){
        return tripulantes.size()
    }

    method algunTripulanteTiene(unItem){
        return tripulantes.any({p => p.tiene(unItem)})
    }

    method tripulacionEstaPasada(){
        return tripulantes.all({p => p.estaPasadoDeGrogXD()})
    }

    method esVulnerable(unBarco){
        return self.cantTripulacion() /2 <= unBarco.cantTripulacion()
    }

    method puedeSerSaqueadoPor(unPirata){
        return unPirata.estaPasadoDeGrogXD()
    }

    method anclarEn(unaCiudad){
       self.todosTomarGrog(5)
       self.removerMasBorracho()
       self.todosGastan(1)
       unaCiudad.sumarUnHabitante()
    }

    method todosTomarGrog(cantidad) {
        tripulantes.forEach({p => p.tomarTragoDe(cantidad)})      
    }

    method todosGastan(cantidad){
        tripulantes.forEach({p => p.gastar(cantidad)})
    }

    method removerMasBorracho(){
        tripulantes.remove(self.elMasBorracho())
    }

    method elMasBorracho(){
        return tripulantes.max({p => p.ebriedad()})   
    }
}