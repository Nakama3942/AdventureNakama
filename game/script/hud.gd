extends CanvasLayer

#var player := load("res://script/player.gd")
@onready var player = get_node("/root/PlayerClass")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$TextureProgressBar.max_value = player.max_hp
	$TextureProgressBar.value = player.hp
