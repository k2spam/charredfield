extends CanvasLayer

@onready var metal_label: Label = $MarginContainer/VboxContainer/MetalHBox/MetalLabel

func _ready(): 
	get_node("root/ResourceManager").resource_changed.connect(_on_resource_changed)
	
func _on_resource_changed(name: String, value: int):
	if name == 'metal':
		metal_label.text = "Metal: %d" % value
