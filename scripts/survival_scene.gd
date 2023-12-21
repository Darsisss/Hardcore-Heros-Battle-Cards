extends Node2D

var minX = 1080
var minY = 720

func _ready():
	get_node("/root").connect("size_changed", self, "resize")

func resize():
	var currentSize = OS.get_window_size()
	
	if(currentSize.x < minX):
		OS.set_window_size(Vector2(minX, currentSize.y))
	
	if(currentSize.y < minY):
		OS.set_window_size(Vector2(currentSize.x, minY))
