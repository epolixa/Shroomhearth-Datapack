# Executor: A mob that could wear a carved pumpkin 
# Location: The mob

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/spookiness/equip_carved_pumpkin] Attempting to equip "},{"selector":"@s"},{"text": " with a Carved Pumpkin"}]


# Attempt to equip the Carved Pumpkin
execute if predicate shroomhearth:harmony/spores_of_spookiness_equip_carved_pumpkin_chance run item replace entity @s armor.head with minecraft:carved_pumpkin

# If they have a Carved Pumpkin, attempt to equip Suspicious Candy
execute if predicate shroomhearth:harmony/spores_of_spookiness_equip_suspicious_candy_chance run loot replace entity @s weapon.offhand loot shroomhearth:dungeons/suspicious_candy

# If they have a Suspicious Candy, attempt to equip Bleeding Tooth
execute if predicate shroomhearth:harmony/spores_of_spookiness_equip_bleeding_tooth_chance run loot replace entity @s weapon.mainhand loot shroomhearth:stories/relics/bleeding_tooth

# tag the mob so that it is not checked again
tag @s add spores_of_spookiness_carved_pumpkin