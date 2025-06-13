class Pirata{
    const property items = []
    var property ebriedad
    var dinero 
    
    method agregar(unItem){
        items.add(unItem)
    }

    method tiene(unItem){
        return items.contains(unItem)
    }

    method cantidadItems(){
        return items.size()
    }

    method tieneMenosDe(cantidad){
        return dinero < cantidad
    }

    method tieneMasDe(cantidad){
        return dinero > cantidad
    }

    method estaPasadoDeGrogXD(){
        return ebriedad <= 90
    }

    method seAnimaA(unObjetivo){
        return unObjetivo.puedeSerSaqueadoPor(self)
    }

    method esUtil(unaMision){
        return unaMision.esUtil(self)
    }

    method tomarTragoDe(cantidad){
        ebriedad = ebriedad + cantidad
    }

    method gastar(cantidad){
        dinero = dinero - cantidad
    }

    method esTemible(){
        mision.puede
    }
}