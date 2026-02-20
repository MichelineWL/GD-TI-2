extends RigidBody2D

@export var speed = 200.0

func _physics_process(delta):
	if Input.is_action_pressed("move_left"):
		apply_central_force(Vector2(-speed, 0))
	if Input.is_action_pressed("move_right"):
		apply_central_force(Vector2(speed, 0))
	if Input.is_action_pressed("move_up"):
		apply_central_force(Vector2(0, -speed))
	if Input.is_action_pressed("move_down"):
		apply_central_force(Vector2(0, speed))
