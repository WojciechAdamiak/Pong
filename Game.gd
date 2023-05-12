extends Node

var red = -2
var blue = -1
var max_score = 10

func _on_EdgeL_body_entered(body):
	$ball.position = Vector2(128,165)
	red += 1
	if red == max_score:
		print("The winner is Red")
		yield(get_tree().create_timer(5.0), "timeout")
		get_tree().change_scene("res://Menu.tscn")
		
func _on_EdgeR_body_entered(body):
	$ball.position = Vector2(128,165)
	blue += 1
	if blue == max_score:
		print("The winner is Blue")
		yield(get_tree().create_timer(5.0), "timeout")
		get_tree().change_scene("res://Menu.tscn")

func _process(delta):
		$red.text = str(red)
		$blue.text = str(blue)
		
	

