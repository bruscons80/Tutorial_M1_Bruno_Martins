extends Node2D

var teste = false
var nome = "" #nome tem que ser instanciado como variavel.
var numero = 0 #variavel tem que ter o nome de numero, e assim, ser corrijida em suas respectivas chamadas.
var lista = [] #Lista tem que ser declarada como variavel.

func _on_Button_pressed():
	numero = int($LineEdit.text) #Faltou o cifrao antes do LineEdit
	nome = $LineEdit.text #nome e o input, coloquei ele primeiro para declarar corretamente.

func _on_Button2_pressed():
	var Numero = numero #Declarei Numero = numero para nao ter que mudar muita coisa e mesmo assim ficar correto.
	for i in range(10):
		Numero += i
	lista.append(Numero)
	$Label.text = str(Numero) #Numero convertido em String para ser parte do LabelText

func _on_Button3_pressed():
# Mudando o nome do usuário de acordo com os dados da lista
# Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	var cont = 0 #cont tem que ser iniciado como variavel. 
	for i in range(len(lista)):
		if lista[i] % 2 == 1:
			cont += 1
		if cont != 0:
			nome += "baldo" # Baldo para se tiver algum numero estranho no campo de nome
		$Label2.text = nome
