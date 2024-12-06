class_name MainMenu

extends Control

@onready var play_button: Button = $MarginContainer/HBoxContainer/VBoxContainer/play_button as Button
@onready var exit_button: Button = $MarginContainer/HBoxContainer/VBoxContainer/exit_button as Button
@onready var margin_container: MarginContainer = $MarginContainer as MarginContainer


@export var start_level = preload("res://main.tscn") as PackedScene #COLOCA A CENA DO JOGO/LEVEL1 AQUI

func _ready():
	play_button.button_down.connect(on_start_pressed)
	exit_button.button_down.connect(on_exit_pressed)



func on_exit_pressed() -> void:
	get_tree().quit()



func on_start_pressed() -> void: 
	get_tree().change_scene_to_packed(start_level)
