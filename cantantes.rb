# Requiere la gema faker
require 'faker'

# Creamos una lista vacía para almacenar los cantantes
cantantes = []
# Generamos 100 cantantes
100.times do
  cantante = {
    nombre: Faker::Music::RockBand.name,   # Genera el nombre de una banda (puede ser modificado a otro tipo de nombre)
    domicilio: Faker::Address.full_address, # Genera una dirección completa
    correo: Faker::Internet.email           # Genera un correo electrónico falso
  }
  cantantes << cantante
end

# Mostramos la lista de cantantes
cantantes.each_with_index do |cantante, index|
  puts "Cantante ##{index + 1}:"
  puts "Nombre: #{cantante[:nombre]}"
  puts "Domicilio: #{cantante[:domicilio]}"
  puts "Correo: #{cantante[:correo]}"
  puts "-" * 40
end