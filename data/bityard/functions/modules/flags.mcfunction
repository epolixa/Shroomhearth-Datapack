################################################################
# Flags
# controls global flags and trackers that dont have their own module ################################################################


# playerSneak - reset to 0 every tick while sneaking
#execute as @a[scores={playerSneak=1..}] at @s run scoreboard players set @s playerSneak 0

# playerJump - reset to 0 every tick
#execute as @a[scores={playerJump=1..}] at @s run scoreboard players set @s playerJump 0

# playerDamage - reset to 0 every tick
#execute as @a[scores={playerDamage=1..}] run scoreboard players set @s playerDamage 0

# entityHealth - set to entity's health every tick
#execute as @e store result score @s entityHealth run data get entity @s Health

# rng - reset to 0 after 9 ticks
#execute as @a[scores={rng=9..}] at @s run scoreboard players set @s rng 0

# viewPitch
#execute as @a store result score @s viewPitch run data get entity @s Rotation[1]

# motionY
#execute as @a store result score @s motionY run data get entity @s Motion[1] 10

# entityTicks
#scoreboard players add @e entityTicks 1

# playerCount - number of online players
#scoreboard players set Env playerCount 0
#execute as @a run scoreboard players add Env playerCount 1

# playerGroup - number of players nearby
#scoreboard players set @a playerGroup 0
#execute as @a at @s run scoreboard players add @a[distance=1..32] playerGroup 1
