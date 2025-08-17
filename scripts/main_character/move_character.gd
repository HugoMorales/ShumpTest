class_name MoveCharacter
extends Node

@export var character: Node2D
@export var velocity: Vector2

func _process(delta: float) -> void:
	character.translate(velocity * delta)
