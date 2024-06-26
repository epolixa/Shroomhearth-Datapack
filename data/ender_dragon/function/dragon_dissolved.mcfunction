# executes when the dragon's death sequence completes

# grant endchantments for all players in range to equipment in priority: mainhand, offhand, helmet, chestplate, leggings, boots
#execute as @a[predicate=ender_dragon:on_main_end_island] run function endchant:attune

# setblock dragon egg at pedestal
execute unless block 0 65 0 minecraft:dragon_egg run setblock 0 65 0 minecraft:dragon_egg