#######
# Compiled from data/sumo/functions/rideable_firework.mcscript
# to .//data/sumo/functions/rideable_firework.mcfunction
#
# Generated by Minecraft Script for 1.16
######

tag @e[type=minecraft:firework_rocket,nbt={FireworksItem:{tag:{w-rideable:1b}}},tag=!w-mounted,limit=1] add w-firework
execute as @e[limit=1,tag=w-firework] store result storage w:firework owner[0] int 1 run data get entity @s Owner[0]
execute as @e[limit=1,tag=w-firework] store result storage w:firework owner[1] int 1 run data get entity @s Owner[1]
execute as @e[limit=1,tag=w-firework] store result storage w:firework owner[2] int 1 run data get entity @s Owner[2]
execute as @e[limit=1,tag=w-firework] store result storage w:firework owner[3] int 1 run data get entity @s Owner[3]
execute if entity @e[limit=1,tag=w-firework] as @a run scoreboard players set success w-firework 0
execute if entity @e[limit=1,tag=w-firework] as @a store result score uuid w-firework run data get entity @s UUID[0]
execute if entity @e[limit=1,tag=w-firework] as @a store result score owner w-firework run data get storage w:firework owner[0]
execute if entity @e[limit=1,tag=w-firework] as @a if score uuid w-firework = owner w-firework run scoreboard players add success w-firework 1
execute if entity @e[limit=1,tag=w-firework] as @a store result score uuid w-firework run data get entity @s UUID[1]
execute if entity @e[limit=1,tag=w-firework] as @a store result score owner w-firework run data get storage w:firework owner[1]
execute if entity @e[limit=1,tag=w-firework] as @a if score uuid w-firework = owner w-firework run scoreboard players add success w-firework 1
execute if entity @e[limit=1,tag=w-firework] as @a store result score uuid w-firework run data get entity @s UUID[2]
execute if entity @e[limit=1,tag=w-firework] as @a store result score owner w-firework run data get storage w:firework owner[2]
execute if entity @e[limit=1,tag=w-firework] as @a if score uuid w-firework = owner w-firework run scoreboard players add success w-firework 1
execute if entity @e[limit=1,tag=w-firework] as @a store result score uuid w-firework run data get entity @s UUID[3]
execute if entity @e[limit=1,tag=w-firework] as @a store result score owner w-firework run data get storage w:firework owner[3]
execute if entity @e[limit=1,tag=w-firework] as @a if score uuid w-firework = owner w-firework run scoreboard players add success w-firework 1
execute if entity @e[limit=1,tag=w-firework] as @a if score success w-firework matches 4 run ride @s mount @e[limit=1,tag=w-firework]
execute if entity @e[limit=1,tag=w-firework] as @a if score success w-firework matches 4 store result score a w-firework run data get entity @e[limit=1,tag=w-firework] FireworksItem.tag.Fireworks.Flight
execute if entity @e[limit=1,tag=w-firework] as @a if score success w-firework matches 4 if entity @e[limit=1,tag=w-firework,nbt={FireworksItem:{tag:{w-effect:1b}}}] if score w-firework w-firework matches 1 if entity @s[tag=!mcscriptSwitch] run effect give @s minecraft:slow_falling 2 2
execute if entity @e[limit=1,tag=w-firework] as @a if score success w-firework matches 4 if entity @e[limit=1,tag=w-firework,nbt={FireworksItem:{tag:{w-effect:1b}}}] if score w-firework w-firework matches 1 if entity @s[tag=!mcscriptSwitch] run tag @s add mcscriptSwitch
execute if entity @e[limit=1,tag=w-firework] as @a if score success w-firework matches 4 if entity @e[limit=1,tag=w-firework,nbt={FireworksItem:{tag:{w-effect:1b}}}] if score w-firework w-firework matches 2 if entity @s[tag=!mcscriptSwitch] run effect give @s minecraft:slow_falling 3 2
execute if entity @e[limit=1,tag=w-firework] as @a if score success w-firework matches 4 if entity @e[limit=1,tag=w-firework,nbt={FireworksItem:{tag:{w-effect:1b}}}] if score w-firework w-firework matches 2 if entity @s[tag=!mcscriptSwitch] run tag @s add mcscriptSwitch
execute if entity @e[limit=1,tag=w-firework] as @a if score success w-firework matches 4 if entity @e[limit=1,tag=w-firework,nbt={FireworksItem:{tag:{w-effect:1b}}}] if score w-firework w-firework matches 3 if entity @s[tag=!mcscriptSwitch] run effect give @s minecraft:slow_falling 4 2
execute if entity @e[limit=1,tag=w-firework] as @a if score success w-firework matches 4 if entity @e[limit=1,tag=w-firework,nbt={FireworksItem:{tag:{w-effect:1b}}}] if score w-firework w-firework matches 3 if entity @s[tag=!mcscriptSwitch] run tag @s add mcscriptSwitch
execute if entity @e[limit=1,tag=w-firework] as @a if score success w-firework matches 4 if entity @e[limit=1,tag=w-firework,nbt={FireworksItem:{tag:{w-effect:1b}}}] if entity @s[tag=!mcscriptSwitch] run effect give @s minecraft:slow_falling 2 2
execute if entity @e[limit=1,tag=w-firework] as @a if score success w-firework matches 4 if entity @e[limit=1,tag=w-firework,nbt={FireworksItem:{tag:{w-effect:1b}}}] run tag @s remove mcscriptSwitch

execute as @e[limit=1,tag=w-firework] run tag @s add w-mounted
execute as @e[limit=1,tag=w-firework] run tag @s remove w-firework