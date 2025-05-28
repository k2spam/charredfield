extends Node3D

@export var tile_scene: PackedScene
@export var size_x: int = 16
@export var size_y: int = 16
@export var tile_spacing: float = 2.0

func _ready():
	for x in range(size_x):
		for y in range(size_y):
			var tile = tile_scene.instantiate()
			tile.position = Vector3(
				(x - size_x / 2) * tile_spacing,
				0,
				(y - size_y / 2) * tile_spacing
			)
			add_child(tile)
