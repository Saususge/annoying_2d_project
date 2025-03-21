### Player.gd
extends CharacterBody2D

#player movement variables
@export var speed = 100
@export var gravity = 200

func	move_horizontal():
	velocity.x = speed * (Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"))

func	_physics_process(delta):
	if Input.is_action_just_pressed("ui_jump"):
		velocity.y -= 500
	velocity.y += gravity * delta
	move_horizontal()
	move_and_slide()
