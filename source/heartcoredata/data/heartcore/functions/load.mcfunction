# limited use counters
scoreboard objectives add stage0 dummy
scoreboard objectives add stage1 dummy
scoreboard objectives add stage2 dummy
scoreboard objectives add stage3 dummy

# crafting shit
scoreboard objectives add craftcount dummy
scoreboard objectives add dummy dummy
scoreboard players set 1 dummy 1
scoreboard players set temp dummy 0

# hp counter for marking death
scoreboard objectives add health health

#loaded tellraw
tellraw @a ["",{"text":"\n"},{"text":"HeartCore Datapack: ","color":"light_purple"},{"text":"LOADED"},{"text":"\n"},{"text":"\n"},{"text":"Check hollikill.net for info","italic":false,"color":"yellow"}]

# temp variables
scoreboard objectives add temp_true dummy
scoreboard objectives add previous_deaths dummy
scoreboard objectives add current_deaths deathCount

# add info command
scoreboard objectives add info trigger

# ubermeat stuff
scoreboard objectives add hold_ubermeat dummy
scoreboard objectives add use_gold_apple minecraft.used:minecraft.golden_apple