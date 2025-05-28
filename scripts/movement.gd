extends CharacterBody3D

@export var speed: float = 5.0
@export var gravity: float = ProjectSettings.get_setting("physics/3d/default_gravity")

func _physics_process(delta: float):
	var dir = Vector3.ZERO
	
	if Input.is_action_pressed("ui_up"):
		dir.z -= 1
	if Input.is_action_pressed("ui_down"):
		dir.z += 1
	if Input.is_action_pressed("ui_left"):
		dir.x -= 1 
	if Input.is_action_pressed("ui_right"):
		dir.x += 1
		
	dir = Vector3.ZERO if dir == Vector3.ZERO else dir.normalized() * speed
	velocity.x = dir.x
	velocity.z = dir.z
	velocity.y -= gravity * delta
	
	move_and_slide()
