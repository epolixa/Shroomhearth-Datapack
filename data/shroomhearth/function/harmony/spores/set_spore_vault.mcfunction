# Executor: An operator setting up a spore vault
# Position: The player

tellraw @a[tag=debug_harmony] "[shroomhearth:harmony/harmony_cap/set_spore_vault] setting up spore vault"


# Place the block
setblock ~ ~ ~ minecraft:vault{\
    config: {\
        loot_table: "shroomhearth:harmony/spore_vault",\
        key_item: {\
            id: "minecraft:glistering_melon_slice",\
            count: 1,\
            components: {\
                "minecraft:item_name": {\
                    "translate": "community.harmony_cap",\
                    "fallback": "Harmony Cap"\
                },\
                "minecraft:item_model": "shroomhearth:harmony_cap",\
                "minecraft:custom_data": {\
                    "shroomhearth_id": "harmony_cap"\
                }\
            }\
        }\
    }\
}

# Summon marker entity
execute align xyz run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags: ["spore_vault_marker"]}