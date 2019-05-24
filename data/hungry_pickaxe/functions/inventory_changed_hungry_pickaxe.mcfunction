# check for holding pickaxe
execute as @s[nbt={SelectedItem:{tag:{relic:"hungry_pickaxe"}}}] run function hungry_pickaxe:mined_with_pickaxe

# revoke trigger
advancement revoke @s only hungry_pickaxe:inventory_changed_hungry_pickaxe