# res://addons/tile-instances/plugin.gd

@tool
extends EditorPlugin

var tile_instances = preload("res://addons/WindowMover/tile_instances.gd").new()

func _enter_tree():
	add_autoload_singleton('WindowMover', 'repositioner.gd')
	add_debugger_plugin(tile_instances)

func _exit_tree():
	remove_autoload_singleton('WindowMover')
	remove_debugger_plugin(tile_instances)
