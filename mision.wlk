class Misiones{   

    method puedeCompletar(unBarco){
        return (unBarco.capacidad() * 0.9) <= unBarco.cantTripulacion()
    }

}

class Tesoro inherits Misiones{

     method esUtil(unPirata){
     var listaItems = #{"brujula","mapa","grogXD"}
     
     return not unPirata.items().asSet().intersection(listaItems).isEmpty() and unPirata.tieneMenosDe(5)   
    }

    override method puedeCompletar(unBarco){
       return super(unBarco) and self.requisitoAdicional(unBarco)
    }

    method requisitoAdicional(unBarco){
        return unBarco.algunTripulanteTiene("llave del tesoro")
    }

}

class Leyenda inherits Misiones{
    const itemObligatorio

    method esUtil(unPirata){
        return unPirata.cantidadItems() <= 10 and unPirata.tiene(itemObligatorio)
    }
}

class Saqueo inherits Misiones{
    const victima
    

    method esUtil(unPirata){
        return unPirata.tieneMenosDe(monedasDeterminadas.valor()) and victima.puedeSerSaqueadoPor(unPirata)
    }

    override method puedeCompletar(unBarco){
        return super(unBarco) and victima.esVulnerableA(unBarco)
    }
}

object monedasDeterminadas {
  var property valor = 10   
}


