# check that triggered player is wearing all required items in the right slots and trigger advancement
execute as @s[nbt={Inventory:[{Count:1b,Slot:103b,id:"minecraft:wither_skeleton_skull"},{Count:1b,Slot:102b,id:"minecraft:elytra"},{Count:1b,Slot:101b,id:"minecraft:leather_leggings",tag:{display:{color:1908001}}},{Count:1b,Slot:100b,id:"minecraft:leather_boots",tag:{display:{color:1908001}}}]}] run advancement grant @s only player_advancements:batboy_272

# revoke trigger
advancement revoke @s only player_advancements:inventory_changed_batboy_272