extends RigidBody2D

@onready var player = get_node("/root/PlayerClass")

# Called when the node enters the scene tree for the first time.
# func _ready():
# 	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
# func _process(delta):
# 	pass

func _on_hit_box_body_entered(body):
	if body.is_in_group("Player"):
		player.hp -= 15
		player.walk_speed = 50
		queue_free()
