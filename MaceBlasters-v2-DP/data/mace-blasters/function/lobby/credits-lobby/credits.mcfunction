# All Credits



# Shirowh

execute as @e[type=minecraft:interaction, tag=interaction.credits_shirowh,nbt={attack:{}}] on attacker run playsound minecraft:block.enchantment_table.use ambient @s 486 217 500 0.7
execute as @e[type=minecraft:interaction,tag=interaction.credits_shirowh,nbt={attack:{}}] on attacker run tellraw @s [{"translate":"credits.msg_shirowh","with":[{"translate":"credits.msg_shirowh.1","color":"dark_purple"}]}]

data remove entity @e[type=minecraft:interaction, tag=interaction.credits_shirowh,limit=1] attack

# Vaynilo

execute as @e[type=minecraft:interaction, tag=interaction.credits_vaynilo,nbt={attack:{}}] on attacker run playsound minecraft:block.enchantment_table.use ambient @s 489 217 495 0.7
execute as @e[type=minecraft:interaction,tag=interaction.credits_vaynilo,nbt={attack:{}}] on attacker run tellraw @s [{"translate":"credits.msg_vaynilo","with":[{"translate":"credits.msg_vaynilo.1","color":"dark_purple"}]}]

data remove entity @e[type=minecraft:interaction, tag=interaction.credits_vaynilo,limit=1] attack

# Vorticepen

execute as @e[type=minecraft:interaction, tag=interaction.credits_vorticepen,nbt={attack:{}}] on attacker run playsound minecraft:block.enchantment_table.use ambient @s 491 217 495 0.7
execute as @e[type=minecraft:interaction,tag=interaction.credits_vorticepen,nbt={attack:{}}] on attacker run tellraw @s [{"translate":"credits.msg_vorticepen","with":[{"translate":"credits.msg_vorticepen.1","color":"dark_purple"}]}]

data remove entity @e[type=minecraft:interaction, tag=interaction.credits_vorticepen,limit=1] attack

# Evtema3

execute as @e[type=minecraft:interaction, tag=interaction.credits_evtema,nbt={attack:{}}] on attacker run playsound minecraft:block.enchantment_table.use ambient @s 494.5 217 495 0.7
execute as @e[type=minecraft:interaction,tag=interaction.credits_evtema,nbt={attack:{}}] on attacker run tellraw @s [{"translate":"credits.msg_evtema","with":[{"translate":"credits.msg_evtema.1","color":"dark_purple"}]}]

data remove entity @e[type=minecraft:interaction, tag=interaction.credits_evtema,limit=1] attack

# DaDemost

execute as @e[type=minecraft:interaction, tag=interaction.credits_dademost,nbt={attack:{}}] on attacker run playsound minecraft:block.enchantment_table.use ambient @s 494 217 505 0.7
execute as @e[type=minecraft:interaction,tag=interaction.credits_dademost,nbt={attack:{}}] on attacker run tellraw @s [{"translate":"credits.msg_dademost","with":[{"translate":"credits.msg_dademost.1","color":"dark_purple"}]}]

data remove entity @e[type=minecraft:interaction, tag=interaction.credits_dademost,limit=1] attack

# Special Thanks

execute as @e[type=minecraft:interaction, tag=interaction.credits_specialthx,nbt={attack:{}}] on attacker run playsound minecraft:block.enchantment_table.use ambient @s 489 217 507 0.7
execute as @e[type=minecraft:interaction,tag=interaction.credits_specialthx,nbt={attack:{}}] on attacker run dialog show @s mace-blasters:specialcredits

data remove entity @e[type=minecraft:interaction, tag=interaction.credits_specialthx,limit=1] attack