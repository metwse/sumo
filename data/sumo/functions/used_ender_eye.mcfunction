#######
# Compiled from data/sumo/functions/used_ender_eye.mcscript
# to .//data/sumo/functions/used_ender_eye.mcfunction
#
# Generated by Minecraft Script for 1.16
######
advancement revoke @s only sumo:used_ender_eye
tag @e[type=minecraft:eye_of_ender,distance=0..1] add w-ender-eye
execute if entity @e[tag=w-ender-eye,nbt={Item:{tag:{w-firework:1b}}}] run function sumo:firework/summon

execute if entity @e[tag=w-ender-eye,nbt={Item:{tag:{w-fire-charge:1b}}}] run function sumo:fire_charge/summon

kill @e[tag=w-ender-eye]