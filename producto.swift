class Producto{
  let nombre: String
  var existencias = 0
  var precio: Double = 0.0

  init(nombre: String, existencias: Int, precio: Double){
    self.nombre = nombre
    self.existencias = existencias
    self.precio = precio
  }

  func venderProducto(cantidad: Int) -> Double{
    if cantidad > self.existencias{
      print("No hay suficientes existencias")
      return 0
    }
    self.existencias -= cantidad
    return Double(cantidad) * self.precio
  }

  func agregarExistencias(cantidad: Int){
    if cantidad >= 0 {
      self.existencias += cantidad
      
    }
  }
}