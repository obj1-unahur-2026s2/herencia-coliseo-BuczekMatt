import armas.*

class Gladiador {
    var vida = 100
    method vida() = vida
    method destreza()
    method defenza()
    method fuerza()
    method atacarA(unGladiador)
    method recibirUnDanio(unDanio) {
      vida-=unDanio
    }
    

}

class Mirmillones inherits Gladiador {
  var fuerza
  var arma
  var armadura
  override method fuerza() = fuerza
  method cambiarArmadura(nuevaArmadura) {
    armadura = nuevaArmadura
  }
  method cambiarArma(nuevaArma) {
    arma = nuevaArma
  }
  override method destreza() = 15
  override method atacarA(unGladiador) {
    unGladiador.recibirUnDanio((arma.valorDeAtaque()+ self.fuerza())-unGladiador.defenza())
  }
  override method defenza() {
    return armadura + self.destreza()
  }
  method cambiarFuerza(nuevaFuerza) {
    fuerza=nuevaFuerza
  }
}
class Dimachaerus inherits Gladiador {
    const armas = []
    var destreza = 0
    override method destreza() = destreza
    override method fuerza() = 10 
    override method atacarA(unGladiador) {
        unGladiador.recibirUnDanio((self.fuerza()+armas.sum({a => a.valorDeAtaque()}))-unGladiador.defenza())
        destreza += 1  
    }
    override method defenza() {
        return destreza/2
    }
    method agregarArma(unArma) {
      armas.add(unArma) 
    }
    method inicializarDestreza(unValor) {
        destreza = unValor
  }
}