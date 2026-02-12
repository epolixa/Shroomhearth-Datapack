# Executor: an entity attacked with Ender Rend
# Position: the entity

tellraw @a[tag=debug_stories] [{"text":"[shroomhearth:stories/enchantment/ender_rend/post_attack_victim] "},{"selector":"@s"},{"text":" was attacked with Ender Rend"}]


# Capture the victim's current Y level
# Add 8 to it
# and then capture the score in storage
execute store result score @s pos_y run data get entity @s Pos[1]
scoreboard players add @s pos_y 8

# Going to try naming storage strictly used for function data with the function path.
# Might be better off using a shared common storage for certain situations like this,
# where having a dynamic maxHeight set for the spreadplayers command could be useful in other functions as well.
execute store result storage shroomhearth:stories enchantment.ender_rend.m_post_attack_victim.maxHeight int 1 run scoreboard players get @s pos_y

# Spread the victim
function shroomhearth:stories/enchantment/ender_rend/m_post_attack_victim with storage shroomhearth:stories enchantment.ender_rend.m_post_attack_victim
