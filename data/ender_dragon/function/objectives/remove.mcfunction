# Dragon team for summoned mobs to join
team remove dragon

# Flag for if the dragon is alive or has been killed
scoreboard players reset dragonSlain shroomhearth

# Resource that Dragon spends to cast powers
scoreboard objectives remove rage

# Track Dragon's current phase
scoreboard objectives remove dragonPhase

# Track Dragon's current health, max health, and calculate percentage for power adaptation
scoreboard objectives remove bossHealth
scoreboard objectives remove bossMaxHealth
scoreboard objectives remove bossHealthPercent

# Stats to show to the player after slaying
scoreboard objectives remove dragStatEnabled
scoreboard objectives remove dragStatTotalSlain
scoreboard objectives remove dragStatDeaths
scoreboard objectives remove dragStatHits
scoreboard objectives remove dragStatMobs
scoreboard objectives remove dragStatEndermen
scoreboard objectives remove dragStatCrystals

# The number of items that the Omen Ender Dragon may drop as carves. Derived from omen_level and decremented as carves are dropped.
scoreboard objectives remove carve_drop_potential

# Tracks delay before the Omen Ender Dragon can snatch a player again.
scoreboard objectives remove snatch_cooldown
