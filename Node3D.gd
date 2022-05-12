@tool
extends Node3D

@export var value_type_set_get_works : int:
	set(value):
		value_type_set_get_works = value
		
	get:
		return value_type_set_get_works

@export var array_set_get_does_not_work : Array[int]:
	set(value):
		array_set_get_does_not_work = value
		
	get:
		return array_set_get_does_not_work
		
@export var array_set_get_separate_function_works : Array[int]:
	set = set_array, get = get_array

func set_array(value)->void:
	array_set_get_separate_function_works = value

func get_array()->Array[int]:
	return array_set_get_separate_function_works
		
