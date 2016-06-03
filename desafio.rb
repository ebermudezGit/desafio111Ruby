#Script de Ruby

def imprimeMenu
	puts "Elige una opción"
	puts "1.- mayor 3 números"
	puts "2.- longitud cadena"
	puts "3.- presentación"
	puts "4.- convertidor temperaturas"
end

def mayor3Numeros
	puts "Primer Numero:"
	num1=gets.chomp.to_i
	puts "Segundo Numero:"
	num2=gets.chomp.to_i
	puts "Tercer Numero:"
	num3=gets.chomp.to_i

	max=num1

	if num2>max
		max=num2
	end
	if num3>max
		max=num3
	end

	puts "El mayor es: #{max}"

end	

def dameLongitud
	puts "2"
end

def presentate
	puts "3"
end

def convertirTemperatura
	puts "4"
end



imprimeMenu

op = gets.chomp.to_i

case op
when 1
	mayor3Numeros
when 2
	dameLongitud
when 3
	presentate
when 4
	convertirTemperatura
else
	puts "Opcion no Valida"
end

