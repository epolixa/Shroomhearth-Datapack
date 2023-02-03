# dragonSlain - flag for if the dragon is alive or has been killed
scoreboard players set dragonSlain shroomhearth 1

# rage - timer for boss mod cooldown abilities
scoreboard objectives remove rage
scoreboard objectives add rage dummy

# warpThreshold - buffers players getting warped
scoreboard objectives remove warpThreshold
scoreboard objectives add warpThreshold minecraft.custom:minecraft.play_time

# dragonPhase - track dragon's phase
scoreboard objectives remove dragonPhase
scoreboard objectives add dragonPhase dummy

# dragonDeaths - track player deaths since summoning dragon
scoreboard objectives remove dragonDeaths
scoreboard objectives add dragonDeaths deathCount

# summonMarkers - track number of markers created for players
scoreboard objectives remove summonMarkers
scoreboard objectives add summonMarkers dummy

# bossHealth - track dragon's phase
scoreboard objectives remove bossHealth
scoreboard objectives add bossHealth dummy
scoreboard objectives remove bossMaxHealth
scoreboard objectives add bossMaxHealth dummy
scoreboard objectives remove bossHealthPercent
scoreboard objectives add bossHealthPercent dummy

# dragon team
team remove dragon
team add dragon "Ender Dragon"
team modify dragon color dark_purple
team modify dragon prefix "Ender Dragon's "
team modify dragon friendlyFire false
team modify dragon collisionRule pushOtherTeams

# ENDER DRAGON FIGHT STATS
scoreboard objectives add dragStatEnabled dummy
scoreboard objectives add dragStatSlayTime dummy
scoreboard objectives add dragStatSlayTimeMin dummy
scoreboard objectives add dragStatSlayTimeSec dummy
scoreboard objectives add dragStatTotalSlain dummy
scoreboard objectives add dragStatHits dummy
scoreboard objectives add dragStatMobs dummy
scoreboard objectives add dragStatEndermen dummy
scoreboard objectives add dragStatCrystals dummy
