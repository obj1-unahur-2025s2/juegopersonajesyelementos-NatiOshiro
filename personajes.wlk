import elementos.*

object luisa {// Jugadora

}
//* PERSONAJES
object floki {// guerrrero
  var arma = ballesta
//* method CONSULTA
  method arma() = arma
//* method INDICACION
  method arma(armaAElejir) {
    arma = armaAElejir
  }
  method encontrar(elemento) {
    if(arma.estaCargada()){
      elemento.recibeAtaque(arma.portencia())
      arma.usado()
    }
  }
}
object mario {// trabajador
//* method CONSULTA

//* method INDICACION
  method recolectar(unElemento) {
    
  }
  method encontrar(elemento) {
    
  }
}
//* ARMAS
object ballesta {
  var carga = 10 // flechas
//* method CONSULTA
  method potencia() = 4 
  method carga() = carga 
  method estaCargada() = carga.between(1 , 10)
//* method INDICACION
}
object jabalina {
  var carga = true
//* method CONSULTA
  method potencia() = 30 
  method estaCargada() = carga >= 1 
//* method INDICACION
}