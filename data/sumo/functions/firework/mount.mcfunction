#######
# Compiled from sumo/functions/firework/mount.mcscript
# to .//data/sumo/functions/firework/mount.mcfunction
#
# Generated by Minecraft Script for 1.16
######
execute if score @s w-firework-enchanted matches 1 run summon firework_rocket ~ ~0.25 ~ {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:3}},tag:{Enchantments:[{}]}},Tags:["w-firework"],ShotAtAngle:1b}
execute unless score @s w-firework-enchanted matches 1 run summon firework_rocket ~ ~0.25 ~ {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:3}}},Tags:["w-firework"],ShotAtAngle:1b}
playsound minecraft:custom.fart player @a ~ ~ ~
scoreboard players operation @s w-firework-id = w-firework-id w-firework-id
scoreboard players operation @e[tag=w-firework] w-firework-id = w-firework-id w-firework-id
scoreboard players add w-firework-id w-firework-id 1
ride @s dismount
ride @s mount @e[limit=1,tag=w-firework]
tag @e[tag=w-firework] add w-mounted
tag @e[tag=w-firework] remove w-firework