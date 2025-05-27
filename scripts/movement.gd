extends MeshInstance3D

@export var speed = 5.0

func _physics_process(delta: float):
	var input_vector = Vector3.ZERO
	
	if Input.is_action_pressed("ui_up"):
		input_vector.z -= 1
	if Input.is_action_pressed("ui_down"):
		input_vector.z += 1
	if Input.is_action_pressed("ui_left"):
		input_vector.x -= 1 
	if Input.is_action_pressed("ui_right"):
		input_vector.x += 1
		
	input_vector = input_vector.normalized()
	translate(input_vector * speed * delta)
