execute at @s if block ~ ~ ~ minecraft:dropper{Items: []} run scoreboard players set temp dummy 1
execute at @s if score temp dummy matches 1 run function heartcore:craftercount
execute at @s if score temp dummy matches 1 run summon item ~ ~1 ~ {Item:{}}
scoreboard players set temp dummy 0