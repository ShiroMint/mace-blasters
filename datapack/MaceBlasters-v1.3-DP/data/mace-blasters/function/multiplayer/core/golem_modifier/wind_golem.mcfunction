# Debajo del mapa hay unos armor stands con la tag spawnpoint_ig, lo que hace esta función es añadir la tag candidato a todos los armor stands que no tengan un golem 14 bloques encima de él (2 bloques de cortesia por si acaso), de todos esos candidatos a 6 les da la tag seleccionado y esos seleccionados spawnean los golems, se programa para que se auto ejecute cada 15s.
# Below the map there are some armor stands with the spawnpoint_ig tag, what this function does is to add the candidate tag to all the armor stands that do not have a golem 14 blocks above it (2 courtesy blocks just in case), of all those candidates 6 are given the selected tag and those selected spawn the golems, it is programmed to auto run every 15s.
tag @e[type=armor_stand,tag=arena_modifier.iron_boost.spawn,tag=arena_modifier.iron_boost.candidate] remove arena_modifier.iron_boost.candidate
tag @e[type=armor_stand,tag=arena_modifier.iron_boost.spawn,tag=arena_modifier.iron_boost.spawn.selected] remove arena_modifier.iron_boost.spawn.selected
execute as @e[type=armor_stand,tag=arena_modifier.iron_boost.spawn] at @s unless entity @e[type=iron_golem,tag=iron_boost,dx=0,dy=14,dz=0] run tag @s add candidato
tag @e[type=armor_stand,tag=arena_modifier.iron_boost.candidate,limit=6,sort=random] add arena_modifier.iron_boost.spawn.selected
execute at @e[type=armor_stand,tag=arena_modifier.iron_boost.spawn.selected] run summon iron_golem ~ ~12 ~ {HurtTime:1,DeathTime:1,DeathLootTable:"minecraft:empty_loot",NoAI:1b,Tags:["entity.arena_modifier.iron_boost"],CustomName:{"italic":true,"text":"PUNCH ME!"},active_effects:[{id:"minecraft:wind_charged",amplifier:5,duration:19999980,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:1}]}

schedule function mace-blasters:multiplayer/core/golem_modifier/wind_golem 15s

