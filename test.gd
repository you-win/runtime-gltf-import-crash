extends Node3D

#-----------------------------------------------------------------------------#
# Builtin functions
#-----------------------------------------------------------------------------#

func _ready() -> void:
	var gltf := GLTFDocument.new()
	var state := GLTFState.new()
	# TODO this causes crashes in godot 4.1.1 exported projects
#	state.handle_binary_image = GLTFState.HANDLE_BINARY_EMBED_AS_BASISU
	
	gltf.append_from_file("./duck/duck.glb", state)
	
	add_child(gltf.generate_scene(state))

#-----------------------------------------------------------------------------#
# Private functions
#-----------------------------------------------------------------------------#

#-----------------------------------------------------------------------------#
# Public functions
#-----------------------------------------------------------------------------#

