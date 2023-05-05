extends KinematicBody2D

export var player := 1 
export var speed := 400
func _physics_process(delta):
	var velocity = Vector2.ZERO
	
	if player == 1:
		if Input.is_action_pressed("p1_up"):
			velocity.y = -speed
		elif Input.is_action_pressed("p1_down"):
			velocity.y = speed
	elif player == 2:
		if Input.is_action_pressed("p2_up"):
			velocity.y = -speed
		elif Input.is_action_pressed("p2_down"):
			velocity.y = speed

	velocity = move_and_slide(velocity)
