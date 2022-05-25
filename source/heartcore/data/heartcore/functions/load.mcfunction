# item counters
scoreboard objectives add stage0 dummy
scoreboard objectives add stage1 dummy
scoreboard objectives add stage2 dummy
scoreboard objectives add stage3 dummy

# Add death objective
scoreboard objectives add hardcore_deaths deathCount

# add hearts lost below name
scoreboard objectives add hearts_lost dummy "Hearts Lost"
scoreboard objectives add dummy dummy
scoreboard players set 2 dummy 2
scoreboard players set 4 dummy 4
scoreboard objectives setdisplay belowName hearts_lost

# add team for dead players
team add dead "dead"
team modify dead color dark_gray

# Change difficulty
difficulty hard

#loaded tellraw
tellraw @a ["",{"text":"\n"},{"text":"HeartCore Datapack: ","color":"light_purple"},{"text":"LOADED"},{"text":"\n"},{"text":"\n"},{"text":"Three lives represented by an increasingly frail player.","italic":false,"color":"yellow"},{"text":"\n"},{"text":"Craft a ","italic":false,"color":"yellow"},{"text":"HeartCore","italic":false,"color":"red"},{"text":" to regain a life.","italic":false,"color":"yellow"},{"text":"\n"},{"text":"\n"},{"text":"Credit to ","italic":true,"color":"gray"},{"text":"_BOBE","italic":true,"color":"blue"},{"text":" on planetminecraft.com for code in his Semi Hardcore datapack.","italic":true,"color":"gray"},{"text":"\n"}]

# detect when player uses a HeartCore
scoreboard objectives add restored_life dummy

# add info command
scoreboard objectives add info trigger

# ugh commenting
scoreboard objectives add health health