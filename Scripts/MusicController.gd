extends Node

var backgroundMusic = load("res://Background Music/finished sample.mp3")

func play_music():
	$Music.stream = backgroundMusic
	$Music.play()
