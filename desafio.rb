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
	puts "Dame una cadena de longitud 5 o mas:"
	cadena = gets.chomp.to_s.length

	if cadena<5
		puts "La cadena debe tener por lo menos 5 caracteres"
	elsif cadena==5
		puts "Gracias"
	else
		puts "La longitud es de #{cadena}"
	end

end

def presentate
	puts "Dame tu nombre:"
	nombre = gets.chomp.to_s
	puts "Dame tu Edad"
	edad = gets.chomp.to_s

	puts "Tu nombre es #{nombre} y tu edad es #{edad}"	
end

def menuTemperatura
	puts "Elige una opción"
	puts "1.- FAHRENHEIT"
	puts "2.- Celsius"
end

def convertF
	puts "Dame Celsius"
	c= gets.chomp.to_i

	f = c * 1.8000 + 32.00
end

def convertC
	puts "Dame Celsius"
	f=gets.chomp.to_i

	c = (f - 32.00) / 1.8000
end

def convertirTemperatura
	menuTemperatura
	op2 = gets.chomp.to_i

	case op2
	when 1
		puts "Resultado " + convertF.to_s
	when 2
		puts "Resultado " + convertC.to_s
	else
		puts "Opcion no Valida"
	end
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

