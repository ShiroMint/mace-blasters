# Trigger zona meteoritos + algunos globales

item replace entity @a[x=-116,y=206,z=-119,dx=214,dy=113,dz=236,scores={item.offhand.windcharge=1..},team=lobbyminigame] weapon.offhand with wind_charge[custom_name=[{"bold":true,"color":"#FFFFFF","text":"W"},{"color":"#EEEEEE","text":"i"},{"color":"#DEDEDE","text":"n"},{"color":"#CDCDCD","text":"d "},{"color":"#BCBCBC","text":"S"},{"color":"#ABABAB","text":"p"},{"color":"#9B9B9B","text":"h"},{"color":"#8A8A8A","text":"e"},{"color":"#797979","text":"r"},{"color":"#686868","text":"e"},{"color":"#474747","text":"s"}],unbreakable={}] 64
scoreboard players reset @a[x=0,scores={item.offhand.windcharge=1..}] item.offhand.windcharge

#global

gamemode adventure @a[x=-116,y=206,z=-119,dx=214,dy=113,dz=236,team=team.lobby]
gamemode adventure @a[x=-116,y=206,z=-119,dx=214,dy=113,dz=236,team=lobbyminigame]

execute as @e[type=item] if items entity @s contents wind_charge run kill @s

item replace entity @a[x=0,predicate=!mace-blasters:windcharge_check,team=team.lobbyminigame] weapon.offhand with wind_charge 64
tag @a[x=0,predicate=mace-blasters:windcharge_check] add lobbyminigame.fix_windcharges
clear @a[x=0,tag=lobbyminigame.fix_windcharges] minecraft:wind_charge
item replace entity @a[x=0,tag=lobbyminigame.fix_windcharges] weapon.offhand with wind_charge 64
tag @a[x=0,tag=lobbyminigame.fix_windcharges] remove lobbyminigame.fix_windcharges


# 1. elegir una posición aleatoria
# 2. ejecutar el comando de teletransporte para todos los jugadores en la posición especificada
# 3. aplicar los atributos del minijuego
# 4. dar el equipamiento necesario a los jugadores (trigger de zona!)
# 5. darles el team de minijuego
# 6. resetear el scoreboard de los marcadores y eliminar la tag

# - trigger zonas de meteoritos
# - mantener wind charges

# 1. resetear los atributos de los jugadores 
# 2. ponerles el team del lobby
# 3. tpear a los jugadores a la posición del lobby (el sistema de vuelta ya está programado)



# TP blue portal
tag @a[x=4,y=216,z=12,dx=3,dy=1,dz=0] add player.lobbyminigame_join
tag @a[x=9,y=216,z=17,dx=0,dy=1,dz=-3] add player.lobbyminigame_join
tag @a[x=8,y=216,z=16,dx=0,dy=1,dz=-1] add player.lobbyminigame_join
tag @a[x=5,y=216,z=13,dx=1,dy=1,dz=0] add player.lobbyminigame_join
tag @a[x=8,y=216,z=13,dx=-1,dy=1,dz=1] add player.lobbyminigame_join

# TP orange portal
tag @a[x=-9,y=216,z=17,dx=0,dy=1,dz=-3] add player.lobbyminigame_join
tag @a[x=-4,y=216,z=12,dx=-3,dy=1,dz=0] add player.lobbyminigame_join
tag @a[x=-8,y=216,z=13,dx=1,dy=1,dz=1] add player.lobbyminigame_join
tag @a[x=-5,y=216,z=13,dx=-1,dy=1,dz=0] add player.lobbyminigame_join
tag @a[x=-8,y=216,z=16,dx=0,dy=1,dz=-1] add player.lobbyminigame_join

# TP logic
execute as @a[x=0,tag=player.lobbyminigame_join] store result score @s lobby.meteorite_teleport run random value 1..9
item replace entity @a[x=0,tag=player.lobbyminigame_join] weapon.offhand with wind_charge[custom_name=[{"bold":true,"color":"#FFFFFF","text":"W"},{"color":"#EEEEEE","text":"i"},{"color":"#DEDEDE","text":"n"},{"color":"#CDCDCD","text":"d "},{"color":"#BCBCBC","text":"S"},{"color":"#ABABAB","text":"p"},{"color":"#9B9B9B","text":"h"},{"color":"#8A8A8A","text":"e"},{"color":"#797979","text":"r"},{"color":"#686868","text":"e"},{"color":"#474747","text":"s"}],unbreakable={}] 64
execute as @a[x=0,tag=player.lobbyminigame_join] run attribute @s bounciness base set 1
execute as @a[x=0,tag=player.lobbyminigame_join] run attribute @s max_health base set 1
execute as @a[x=0,tag=player.lobbyminigame_join] run attribute @s gravity base set 0.03
execute as @a[x=0,tag=player.lobbyminigame_join] run attribute @s air_drag_modifier base set 0.6
execute as @a[x=0,tag=player.lobbyminigame_join] run attribute @s friction_modifier base set 0.5
team join team.lobbyminigame @a[x=0,tag=player.lobbyminigame_join]
tp @a[x=0,tag=player.lobbyminigame_join,scores={lobby.meteorite_teleport=1}] @e[x=0,type=marker,tag=marker.lobby.minigame_1,limit=1]
tp @a[x=0,tag=player.lobbyminigame_join,scores={lobby.meteorite_teleport=2}] @e[x=0,type=marker,tag=marker.lobby.minigame_2,limit=1]
tp @a[x=0,tag=player.lobbyminigame_join,scores={lobby.meteorite_teleport=3}] @e[x=0,type=marker,tag=marker.lobby.minigame_3,limit=1]
tp @a[x=0,tag=player.lobbyminigame_join,scores={lobby.meteorite_teleport=4}] @e[x=0,type=marker,tag=marker.lobby.minigame_4,limit=1]
tp @a[x=0,tag=player.lobbyminigame_join,scores={lobby.meteorite_teleport=5}] @e[x=0,type=marker,tag=marker.lobby.minigame_5,limit=1]
tp @a[x=0,tag=player.lobbyminigame_join,scores={lobby.meteorite_teleport=6}] @e[x=0,type=marker,tag=marker.lobby.minigame_6,limit=1]
tp @a[x=0,tag=player.lobbyminigame_join,scores={lobby.meteorite_teleport=7}] @e[x=0,type=marker,tag=marker.lobby.minigame_7,limit=1]
tp @a[x=0,tag=player.lobbyminigame_join,scores={lobby.meteorite_teleport=8}] @e[x=0,type=marker,tag=marker.lobby.minigame_8,limit=1]
tp @a[x=0,tag=player.lobbyminigame_join,scores={lobby.meteorite_teleport=9}] @e[x=0,type=marker,tag=marker.lobby.minigame_9,limit=1]

tag @a[x=0,tag=player.lobbyminigame_join] remove player.lobbyminigame_join

# TP back the player (particles)
execute if entity @a[x=0,y=215,z=24,distance=..400] run particle witch 0.87 171.42 8.50 65 3 65 0 100 force

# TP back the player (logic)

tag @a[x=-104,y=159,z=-109,dx=216,dy=15,dz=225] add lobby.falling
execute as @a[tag=lobby.falling] store result score @s lobby.sound_random run random value 1..10
playsound minecraft:entity.puffer_fish.blow_up ambient @a[x=0,tag=lobby.falling,scores={lobby.sound_random=1..5}] 0 217 14 11 1.2
playsound minecraft:entity.puffer_fish.blow_up ambient @a[x=0,tag=lobby.falling,scores={lobby.sound_random=6..10}] 0 217 14 11 0.6
tp @a[x=0,tag=lobby.falling] @e[type=marker,tag=marker.lobby_hall,limit=1]
execute if entity @a[x=0,tag=lobby.falling] run particle poof 0 217 14 1 0 1 2 15 force
scoreboard players reset @a[x=0,tag=lobby.falling] lobby.sound_random
scoreboard players reset @a[x=0,tag=lobby.falling] lobby.meteorite_teleport
clear @a[x=0,tag=lobby.falling] minecraft:wind_charge
execute as @a[x=0,tag=lobby.falling] run attribute @s bounciness base reset
execute as @a[x=0,tag=lobby.falling] run attribute @s max_health base reset
execute as @a[x=0,tag=lobby.falling] run attribute @s gravity base reset
execute as @a[x=0,tag=lobby.falling] run attribute @s air_drag_modifier base reset
execute as @a[x=0,tag=lobby.falling] run attribute @s friction_modifier base reset
team join team.lobby @a[x=0,tag=lobby.falling]
tag @a[x=0,tag=lobby.falling] remove lobby.falling