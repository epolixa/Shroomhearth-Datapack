# Revoke trigger
advancement revoke @s only allay_bottle:player_used_bottle_on_allay

# Vanish the allay unless the player is sneaking
execute unless entity @s[predicate=shroomhearth:is_sneaking] positioned ^ ^ ^1 as @e[type=minecraft:allay,sort=nearest,limit=1,nbt={equipment:{mainhand:{id:"minecraft:glass_bottle",count:1}}}] at @s run function allay_bottle:vanish_allay
