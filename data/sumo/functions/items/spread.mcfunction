#######
# Compiled from sumo/functions/items/!spread.mcscript
# to .//data/sumo/functions/items/spread.mcfunction
#
# Generated by Minecraft Script for 1.16
######
execute at @e[tag=w-worldCenter] run spreadplayers ~ ~ 1 80 false @e[tag=w-spread,type=minecraft:item]
execute at @e[tag=w-worldCenter] run tag @e[tag=w-spread,type=minecraft:item] remove w-spread