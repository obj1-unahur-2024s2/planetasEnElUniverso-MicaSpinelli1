object mica {
  var property recursos = 20
  var property edad = 25

  method esDestacada() = edad > 18 and edad < 65
  method variacionDeRecursos(cant) {
    recursos += cant
  }
  method cumplirAnios() {
    edad += 1
  }
}

class Murallas {
  var property longitud
  
  method valor() = 10 * longitud
}

class Museo {
  var property supCubierta
  var property indiceImportancia 

  method valor() =  supCubierta * indiceImportancia
}

class Planetas {
  const property habitantes = []
  const property construcciones = []

  method delegacionDiplomatica() = habitantes.filter({h => h.esDestacada()}) 
        and habitantes.max({h => h.recursos()})
  
  method esValioso() = habitantes.sum({h => h.valor()}) > 100
}