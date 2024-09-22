extends CharacterBody2D


const SPEED := 300.0
var bullets := 3

func _physics_process(delta: float) -> void:
	var direction := Input.get_axis("left", "right")
	print(direction)
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
