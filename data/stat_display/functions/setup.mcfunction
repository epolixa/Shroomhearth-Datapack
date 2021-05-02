# playerHealth - tracking entity Health, displayed under nametag
scoreboard objectives remove playerHealth
scoreboard objectives add playerHealth health "\u00A74\u2764\u00A7r"

# playerInsomnia - track "since last reset" statistic
scoreboard objectives remove playerInsomnia
scoreboard objectives add playerInsomnia minecraft.custom:minecraft.time_since_rest "Insomnia"

# clear objectives below name
scoreboard objectives setdisplay belowName