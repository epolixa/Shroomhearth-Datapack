# Tracking entity Health, displayed under nametag
scoreboard objectives add playerHealth health "\u00A74\u2764\u00A7r"

# Track "since last rest" statistic
scoreboard objectives add playerInsomnia minecraft.custom:minecraft.time_since_rest "Insomnia"

# Track player hunger
scoreboard objectives add playerFood food "Food"

# Clear objectives below name
scoreboard objectives setdisplay below_name