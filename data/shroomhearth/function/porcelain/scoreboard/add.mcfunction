# Used to check if another Player's Porcelain Amphora is too close while attempting to use a Porcelain Amphora
scoreboard objectives add nearby_porcelain_amphora dummy

# Used to check if there are monsters nearby while attempting to use a Porcelain Amphora
scoreboard objectives add nearby_monster dummy

# Tracks UUID data of a Porcelain Amphora's parent Player
scoreboard objectives add porcelain_amphora_uuid_1 dummy
scoreboard objectives add porcelain_amphora_uuid_2 dummy
scoreboard objectives add porcelain_amphora_uuid_3 dummy
scoreboard objectives add porcelain_amphora_uuid_4 dummy

# Used to check if a Player has a Porcelain Amphora in their inventory
scoreboard objectives add has_porcelain_amphora dummy