# Dragon team for summoned mobs to join
team add dragon "Ender Dragon"
team modify dragon color dark_purple
team modify dragon prefix "Ender Dragon's "
team modify dragon friendlyFire false
team modify dragon collisionRule pushOtherTeams

# Flag for if the dragon is alive or has been killed
scoreboard players set dragonSlain shroomhearth 1

# Resource that Dragon spends to cast powers
scoreboard objectives add rage dummy

# Track Dragon's current phase
scoreboard objectives add dragonPhase dummy

# Track Dragon's current health, max health, and calculate percentage for power adaptation
scoreboard objectives add bossHealth dummy
scoreboard objectives add bossMaxHealth dummy
scoreboard objectives add bossHealthPercent dummy

# Stats to show to the player after slaying
scoreboard objectives add dragStatEnabled dummy
scoreboard objectives add dragStatTotalSlain dummy
scoreboard objectives add dragStatDeaths deathCount
scoreboard objectives add dragStatHits dummy
scoreboard objectives add dragStatMobs dummy
scoreboard objectives add dragStatEndermen dummy
scoreboard objectives add dragStatCrystals dummy

# The number of items that the Omen Ender Dragon may drop as carves. Derived from omen_level and decremented as carves are dropped.
scoreboard objectives add carve_drop_potential dummy

# Tracks delay before the Omen Ender Dragon can snatch a player again.
scoreboard objectives add snatch_cooldown dummy
