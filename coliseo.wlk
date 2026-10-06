import gladiador.*
import armas.*


object coliseo {
    method organizarCombate(grupo1, grupo2) {
        grupo1.combatirContra(grupo2)
    }
   
}

class Grupo {
    var nombre
    var cantidadDePeleas = 0
    const miembros = []

    method agregarMiembro(unGladiador) {
      miembros.add(unGladiador)
    }
    method quitarMiembro(unGladiador) {
      miembros.remove(unGladiador)
    }
    method campeon() {
    return miembros
        .filter({ g => g.puedeCombatir() })
        .max({ g => g.poderDeAtaque() })
    }
    method combatirContra(otroGrupo) {
        self.roundContra(otroGrupo)
        self.roundContra(otroGrupo)
        self.roundContra(otroGrupo)

        cantidadDePeleas += 1
        otroGrupo.registrarPelea()
    }

    method roundContra(otroGrupo) {
        self.campeon().pelearCon(otroGrupo.campeon())
    }

    method registrarPelea() {
        cantidadDePeleas += 1
    }
}