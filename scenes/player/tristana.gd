extends CharacterBody2D


const SPEED := 300.0
var bullets := 3

func _physics_process(delta: float) -> void:
	var horizontal_direction := Input.get_axis("left", "right")
	var vertical_direction := Input.get_axis("up", "down")
	
	
	
	var direction : Vector2 = Vector2(horizontal_direction, vertical_direction).normalized()
	if direction:
		velocity = direction * SPEED
	else:
		velocity = Vector2.ZERO

	move_and_slide()
