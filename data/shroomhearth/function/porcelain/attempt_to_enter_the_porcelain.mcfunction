# Executor: A Player that used a Porcelain Amphora while not in The Porcelain and is attempting to enter it
# Position: The Player

tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/attempt_to_enter_the_porcelain] "},{"selector":"@s"},{"text":" is attempting to enter The Porcelain"}]


# Score if there are any nearby Porcelain Amphoras or sleep-preventing monsters
execute store result score @s nearby_porcelain_amphora if entity @e[tag=porcelain_amphora,distance=..1]
execute store result score @s nearby_monster if entity @e[type=#shroomhearth:sleep_preventing_monsters,distance=..8]

# Enter The Porcelain if checks pass
execute if predicate shroomhearth:porcelain/can_enter_the_porcelain run function shroomhearth:porcelain/enter_the_porcelain

# Inform the Player if they cannot enter The Porcelain
execute unless score @s nearby_porcelain_amphora matches 0 run title @s actionbar {"color":"white","translate":"item.shroomhearth.porcelain_amphora.too_close","fallback":"You may not enter the Porcelain here, another Player's Porcelain Amphora is too close"}
execute unless score @s nearby_monster matches 0 run title @s actionbar {"color":"white","translate":"item.shroomhearth.porcelain.nearby_monster","fallback":"You may not enter the Porcelain now, there are monsters nearby"}
execute unless predicate shroomhearth:porcelain/valid_position run title @s actionbar {"color":"white","translate":"item.shroomhearth.porcelain.invalid_position","fallback":"You may not enter the Porcelain here, the position is invalid"}