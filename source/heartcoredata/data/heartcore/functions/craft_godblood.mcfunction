execute at @s if block ~ ~ ~ minecraft:dropper{Items: [{Slot: 0b, id: "minecraft:fermented_spider_eye"}, {Slot: 1b, id: "minecraft:nether_wart"}, {Slot: 2b, id: "minecraft:redstone"}, {Slot: 3b, id: "minecraft:nether_wart"}, {Slot: 4b, id: "minecraft:glass_bottle"}, {Slot: 5b, id: "minecraft:nether_wart"}, {Slot: 6b, id: "minecraft:redstone"}, {Slot: 7b, id: "minecraft:nether_wart"}, {Slot: 8b, id: "minecraft:fermented_spider_eye"}]} run execute at @s run scoreboard players set temp dummy 1
execute at @s if score temp dummy matches 1 run function heartcore:craftercount
execute at @s if score temp dummy matches 1 run summon item ~ ~1 ~ {Item:{id:"minecraft:glistering_melon_slice",tag:{CustomModelData:7740004,display:{Name:'[{"text":"Godblood","italic":false}]'},Unbreakable:1,HideFlags:4},Count:1b}}
scoreboard players set temp dummy 0