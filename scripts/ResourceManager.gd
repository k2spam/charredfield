extends Node

signal resource_changed(name: String, value: int)

var resources: Dictionary = {
	"metal": 0,
	"wood": 0
}

func add_resource(name: String, amount: int):
	if not resources.has(name):
		resources[name] = 0
	resources[name] += amount
	resource_changed.emit(name, resources[name])
