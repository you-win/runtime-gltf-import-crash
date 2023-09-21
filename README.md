Tested to crash on Windows 10 using Godot 4.1.1.

Steps:

1. Export the project using the default release template
2. Run the binary in the repo root. The binary expects the relative path `./duck/duck.glb` to exist. This is to demonstrate Godot loading a model that has not been preprocessed by Godot

The binary should crash because of:

```gdscript
state.handle_binary_image = GLTFState.HANDLE_BINARY_EMBED_AS_BASISU
```

Commenting out this line in `test.gd` and re-exporting the project should lead to the binary running as expected.

NOTE: the duck is expected to look ugly, it's just a placeholder model I have.

