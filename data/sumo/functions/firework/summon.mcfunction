#######
# Compiled from sumo/functions/firework/summon.mcscript
# to .//data/sumo/functions/firework/summon.mcfunction
#
# Generated by Minecraft Script for 1.16
######
execute store result score @s w-firework-enchanted run data get entity @e[limit=1,tag=w-ender-eye] Item.tag.w-enchanted
function sumo:firework/mount