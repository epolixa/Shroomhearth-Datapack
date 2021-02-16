# playerHealth - tracking entity Health, displayed under nametag
scoreboard objectives remove playerHealth
scoreboard objectives add playerHealth health "\u00A74\u2764\u00A7r"

# playerLevel - tracks player level
scoreboard objectives remove playerLevel
scoreboard objectives add playerLevel level "\u00A7a\u272A\u00A7r"

# always show player health below name
scoreboard objectives setdisplay belowName playerHealth