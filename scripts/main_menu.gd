class_name MainMenu
extends Control

@onready var start_button: Button = $MarginContainer/HBoxContainer/VBoxContainer/Start_Button
@onready var exit_button: Button = $MarginContainer/HBoxContainer/VBoxContainer/Exit_Button
@export var start_level = preload("res://scenes/main.tscn")

func _ready():
	start_button.button_down.connect(on_start_pressed)
	exit_button.button_down.connect(on_exit_pressed)
	
func on_start_pressed() -> void:
	get_tree().change_scene_to_file(start_level)

func on_exit_pressed() -> void:
	get_tree().quit()
