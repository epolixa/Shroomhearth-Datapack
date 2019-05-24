# check that triggered player is wearing all required items in the right slots and trigger advancement
execute as @s[nbt={Inventory:[{Count:1,Slot:103,id:minecraft:wither_skeleton_skull},{Count:1,Slot:102,id:minecraft:elytra},{Count:1,Slot:101,id:minecraft:leather_leggings,tag:{display:{color:000000}}},{Count:1,Slot:100,id:minecraft:leather_boots,tag:{display:{color:000000}}}]}] run advancement grant @s only player_advancements:batboy_272

# revoke trigger
advancement revoke @s only player_advancements:inventory_changed_batboy_272