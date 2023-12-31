#######
# Compiled from sumo/functions/fire_charge/summon.mcscript
# to .//data/sumo/functions/fire_charge/summon.mcfunction
#
# Generated by Minecraft Script for 1.16
######
summon minecraft:fireball ^ ^ ^2 {ExplosionPower:5,Tags:["w-fire-charge"]}
playsound minecraft:custom.firecharge player @a ~ ~ ~
execute store result score x1 w-fire-charge run data get entity @s Pos[0] 1000
execute store result score y1 w-fire-charge run data get entity @s Pos[1] 1000
execute store result score z1 w-fire-charge run data get entity @s Pos[2] 1000
execute as @e[tag=w-fire-charge] store result score x2 w-fire-charge run data get entity @s Pos[0] 1000
execute as @e[tag=w-fire-charge] store result score y2 w-fire-charge run data get entity @s Pos[1] 1000
execute as @e[tag=w-fire-charge] store result score z2 w-fire-charge run data get entity @s Pos[2] 1000
execute as @e[tag=w-fire-charge] at @s run tp ~ ~1 ~
execute as @e[tag=w-fire-charge] run scoreboard players set @s w-fire-charge 300
scoreboard players operation x2 w-fire-charge -= x1 w-fire-charge
scoreboard players operation y2 w-fire-charge -= y1 w-fire-charge
scoreboard players operation z2 w-fire-charge -= z1 w-fire-charge
execute store result entity @e[tag=w-fire-charge,limit=1] power[0] double 0.0001 run scoreboard players get x2 w-fire-charge
execute store result entity @e[tag=w-fire-charge,limit=1] power[1] double 0.0001 run scoreboard players get y2 w-fire-charge
execute store result entity @e[tag=w-fire-charge,limit=1] power[2] double 0.0001 run scoreboard players get z2 w-fire-charge
tag @e[tag=w-fire-charge] remove w-fire-charge