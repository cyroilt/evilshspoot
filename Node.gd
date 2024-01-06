extends Node

func _ready():
	DiscordSDK.app_id = 1192895734203293787 # Application ID

	DiscordSDK.start_timestamp = int(Time.get_unix_time_from_system()) # "02:46 elapsed"
	# DiscordSDK.end_timestamp = int(Time.get_unix_time_from_system()) + 3600 # +1 hour in unix time / "01:00:00 remaining"

	DiscordSDK.refresh()
func _process(delta):
	DiscordSDK.run_callbacks()
