import personajes.*

object castillo {
  var defensa = 150
  
  //* method CONSULTA
  method altura() = 20
  
  method defensa() = defensa
  
  //* method INDICACION
  method defensa(unValor) {
    defensa = unValor
  }
  
  method recibeAtaque(potenciaDelAtaque) {
    defensa -= potenciaDelAtaque
  }
  
  method recibirTrabajo() {
    defensa = 200.min(defensa + (defensa / 5))
  }
}

object aurora {
  //vaca
  var estaViva = true //* method CONSULTA
  
  method altura() = 1
  
  method estaViva() = estaViva
  
  //* method INDICACION
  method cambioDeEstado() {
    estaViva = not estaViva // lo que hace es cambiar el estado
  }
  
  method recibeAtaque(potenciaDelAtaque) {
    if (potenciaDelAtaque > 10) self.cambioDeEstado()
  }
}

object tipa {
  //arbol
  var altura = 8 // comienza
  
  //* method CONSULTA
  method altura() = altura
  
  //* method INDICACION
  method crecer(unaAltura) {
    altura = unaAltura
  }
  
  method recibeAtaque(potenciaDelAtaque) {
    
  } // no hace nada
}