extends CharacterBody2D

@export var WALK_SPEED = 200 # How fast the player will move (pixels/sec).
@export var jumpForce = 170
@export var GRAVITY = 200.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	velocity.x = 0
	if Input.is_action_pressed("move_left"):
		velocity.x -= WALK_SPEED
	if Input.is_action_pressed("move_right"):
		velocity.x += WALK_SPEED
	
	velocity.y += delta * GRAVITY
	
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y -= jumpForce
	
	move_and_slide()
