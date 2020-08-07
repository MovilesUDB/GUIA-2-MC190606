class Tienda{
  var productos: [Producto]

  init(productos: [Producto]){
    self.productos = productos
  }

  func mostrarProductos(){
    self.productos.enumerated().forEach({ index, producto in print("\(index) - \(producto.nombre) : \(producto.existencias) : \(producto.precio)")})
  }

  func venderProducto(index: Int, cantidad: Int) -> Double{
    return self.productos[index].venderProducto(cantidad: cantidad)
  }

  func agregarExistencias(index: Int, cantidad: Int){
    self.productos[index].agregarExistencias(cantidad: cantidad)
  }

  func aplicacion(){
    print("Bienvenido a comercial la plazita")

    var salir = "no"
    var opcion = ""
    var indiceProducto = 0
    var cantidad = 0

    repeat{
      print("¿Que desea hacer?")
      print("1. Vender producto \n2. Agregar existencias \n3. Mostrar productos")

      opcion = readLine()!

      switch opcion{
        case "1":
        print("Seleccione el producto")
        self.mostrarProductos()

        let strIndice = readLine()!
        indiceProducto = Int(strIndice)!

        print("Seleccion cantidad a comprar")
        cantidad = Int(readLine()!)!

        print("Total a pagar \(self.venderProducto(index: indiceProducto, cantidad: cantidad))")

        case "2":
        print("Seleccione producto: ")
        self.mostrarProductos()
        let strIndice = Int(readLine()!)

        indiceProducto = Int(strIndice!)

        print("Nuevas existencias")
        cantidad = Int(readLine()!)!

        agregarExistencias(index: indiceProducto, cantidad: cantidad)

        case "3":
        self.mostrarProductos()

        default:
        print("Opcion desconocida")
      }

      print("Salir? si - no")
      salir = readLine()!
    } while salir != "si"
  }
}