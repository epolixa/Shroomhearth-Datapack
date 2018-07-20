################################################################
# Re-usable Ender Pearl
# script for reusable pearl
################################################################

# Check if holding pearl
execute as @a[nbt={SelectedItem:{tag: {relic: "reusable_ender_pearl"}}}] run scoreboard players set @s reusablePearl 2

# Give player new pearl when thrown
execute as @a[scores={reusablePearl=1..,usedPearl=1..}] at @s run summon minecraft:item ~ ~0.9 ~ {Item:{Count:1b, id:"minecraft:ender_pearl", tag:{relic: "reusable_ender_pearl", Enchantments:[{id:"null"}], display:{Name: "{\"text\":\"Re-usable Ender Pearl\"}", Lore: ["When thrown:"," +1 Re-usable Ender Pearl"]}}}}

# Reset thrown pearl flag
execute as @a[scores={usedPearl=1..}] run scoreboard players set @s usedPearl 0

# Reset held pearl flag with 1 tick delay
execute as @a[scores={reusablePearl=1..}] run scoreboard players remove @s reusablePearl 1