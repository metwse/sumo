#######
# Compiled from sumo/functions/shop/jump_ii_20.mcscript
# to .//data/sumo/functions/shop/jump_ii_20.mcfunction
#
# Generated by Minecraft Script for 1.16
######
function sumo:shop/calculate_currency
execute if score @s w-currency-sugar matches 1.. run give @s splash_potion{CustomPotionColor:16448655,display:{Name:'[{"text":"Zıplama İksiri","italic":false,"bold":true,"color":"red"}]'},CustomPotionEffects:[{Id:8,Duration:400,Amplifier:1}]} 1
execute if score @s w-currency-sugar matches 1.. run clear @s sugar{w-shop:1b} 1
