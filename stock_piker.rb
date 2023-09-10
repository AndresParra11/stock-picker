# frozen_string_literal: true

precios = [17, 3, 6, 9, 15, 8, 6, 1, 10]
precios2 = precios.dup

parejas_compra_venta = []

if precios.max == precios.first
  precios.shift
elsif precios.min == precios.last
  precios.pop
end

precios.each_with_index do |precio, index|
  for i in index..precios.length - 2
    num1 = precio
    num2 = precios[i + 1]

    parejas_compra_venta << [num1, num2]
  end
end

venta_max = 0
pareja_max = []
parejas_compra_venta.each do |pareja|
  ganancia = pareja[1] - pareja[0]
  if ganancia > venta_max
    venta_max = ganancia
    pareja_max = pareja
  end
end

p [precios2.index(pareja_max[0]), precios2.index(pareja_max[1])]
p "La ganancia maxima es $#{venta_max}, comprando a $#{pareja_max[0]} y vendiendo a $#{pareja_max[1]}."

