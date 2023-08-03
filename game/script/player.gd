extends CharacterBody2D

@onready var player = get_node("/root/PlayerClass")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	velocity.x = 0
	if Input.is_action_pressed("move_left"):
		velocity.x -= player.walk_speed
	if Input.is_action_pressed("move_right"):
		velocity.x += player.walk_speed
	
	velocity.y += delta * player.GRAVITY
	
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y -= player.jump_force
	
	move_and_slide()
