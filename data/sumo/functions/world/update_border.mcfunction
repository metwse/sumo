#######
# Compiled from sumo/functions/world/update_border.mcscript
# to ./sumo/data/sumo/functions/world/update_border.mcfunction
#
# Generated by Minecraft Script for 1.16
######
execute store result score border w-world run data get storage w:world borderRadius 2
worldborder set 1
function sumo:world/update_border_recursive