
require_relative 'DoubleList'
list = DoubleList.new

# Insertar datos
puts "\nAgregando elementos..."
list.add(10)
list.add(20)
list.add(30)
list.add(40)
puts "Elementos agregados correctamente."
# Buscar elementos por indice
puts list.get(0)
# Buscar elementos
puts "\nProbando contains:"

puts "¿Existe 20?: #{list.contains(20)}"
puts "¿Existe 50?: #{list.contains(50)}"

# Eliminar elementos
puts "Eliminando elementos"

list.remove(20)
list.remove(40)

puts "¿Existe 20?: #{list.contains(20)}"
puts "¿Existe 40?: #{list.contains(40)}"

puts "Elementos eliminados exitosamente"

# Esta vacia
puts "Verificar si esta vacia"

puts list.isEmpty
puts "Eliminando los elementos restantes para dejar la lista como vacia"

list.remove(10)
list.remove(30)
puts list.isEmpty



