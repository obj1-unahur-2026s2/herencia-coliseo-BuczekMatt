


class Arma {

    method valorDeAtaque() 
    
}

class ArmasDeFilo inherits Arma {
    var filo
    var longitud

    override method valorDeAtaque(){
        return filo*longitud
    }

    method cambiarLogitudDeArma(unLongitud) {
        longitud = (unLongitud).max(0)
    }
    method cambiarFiloDeArma(unValor) {
        filo = ((unValor).max(0)).min(1)
    }

}

class Espadas inherits ArmasDeFilo{}
class Dagas inherits ArmasDeFilo{}
class Hachas inherits ArmasDeFilo{}

class ArmasContundentes inherits Arma {
    var pesoDelArma

    override method valorDeAtaque(){
        return pesoDelArma
    }

    method cambiarPesoDelArma(unPeso) {
        pesoDelArma = (unPeso).max(0)
    } 
}

class Mazas inherits ArmasContundentes{}
class Martillos inherits ArmasContundentes{}

object casco {
  method puntosDeArmaduraPara(unGladiador) = 10
}
object escudo {
  method puntosDeArmaduraPara(unGladiador) {
    return 5 + unGladiador.destreza()*0.1
  }
}
