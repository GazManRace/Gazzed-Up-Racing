extends AudioStreamPlayer

var songs = [
	preload("res://Music/lifestyle.mp3"), 
	preload("res://Music/rock and drive.mp3"), 
	preload("res://Music/rock you up.mp3"), 
	preload("res://Music/tunetank.com_1217_rock-and-drive_by_rocknstock.mp3"), 
	preload("res://Music/tunetank.com_1897_life-style_by_pillowvibes.mp3"),
	preload("res://Music/tunetank.com_2208_rock-you-up_by_catana.mp3"), 
	preload("res://Music/tunetank.com_3513_safari_by_victorwayne.mp3"), 
	preload("res://Music/tunetank.com_3549_street-sound_by_99instrumentals.mp3")
]

#onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer

func change_random_song() -> void:
	var rng = RandomNumberGenerator.new()
	var song = rng.randi_range(0, songs.size() -2)
	self.stream = songs[song]
	self.play()
#	audio_stream_player.stream = songs[song]
