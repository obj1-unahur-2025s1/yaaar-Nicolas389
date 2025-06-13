class ciudadCostera{
    var cantHabitantes

    method puedeSerSaqueadoPor(unPirata){
        return unPirata.ebriedad() >= 50
    }

    method esVulnerable(unBarco){
        return unBarco.tripulacion() <= cantHabitantes*0.4 and unBarco.tripulacionEstaPasada()
    }

    method sumarUnHabitante(){
        cantHabitantes = cantHabitantes + 1
    }
}