//Note el tipo especificado en el arreglo de personas PersonaProtocol
//var personas: [PersonaProtocol] = []

//Creacion de alumno con arreglo de materias vacio
//let alumnoUno = Alumno(nombre: "Bob", apellido: "Jimenez", edad: 22, carnet: "BJ202023", materias: [])

//alumnoUno.materias.append("HUMA1")

//var profesorUno = Docente(nombre: "Victor", apellido: "Martinez", edad: 30, grupos: ["BDD"])

//personas.append(profesorUno)
//personas.append(alumnoUno)

//personas.append(Alumno(nombre: "Patricia", apellido: "Argueta", edad: 24, carnet: "AA32414", materias: ["POO","LIS", "HUMA"]))
//personas.append(Alumno(nombre: "Luis", apellido: "Perez", edad: 18, carnet: "PP41414", materias: ["ACI","BDD"]))

//personas.forEach({ $0.mostrarDatos() })
//.......................................
var productos: [Producto] = []

productos.append(Producto(nombre: "Televisor 27", existencias: 5, precio: 300))
productos.append(Producto(nombre: "Stereo", existencias: 4, precio: 200))
productos.append(Producto(nombre: "Reproductor DVD", existencias: 10, precio: 50))
productos.append(Producto(nombre: "Juego de sala", existencias: 2, precio: 250))

let tienda = Tienda(productos: productos)
tienda.aplicacion()