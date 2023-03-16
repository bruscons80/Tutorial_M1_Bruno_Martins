extends Node2D

var dado2
var dado3
var resultado
var numero

func _on_Button1_pressed():
	$ColorRect2/resposta2.text = "1, 2, 3, 4, 5"
	
func _on_Button2_pressed():
	dado2 = float($dado2.text)
	resultado = dado2 
	$ColorRect/resposta.text = "Seu Texto: "+ str(resultado)

func _on_Button3_pressed():
	dado3 = $dado3.text
	resultado = "O texto digitado foi: " + dado3
	$ColorRect3/resposta3.text = ""+ str(resultado)

