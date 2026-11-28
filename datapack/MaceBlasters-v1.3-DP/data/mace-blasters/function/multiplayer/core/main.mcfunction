## TODO: REVISAR Y CAMBIAR TODAS LAS COORDENADAS DEL CÓDIGO.
# Esto se encarga de que bajo cualquier circunstancia, hay un problema de softlock, te da la opción para salir. // This takes care that under any circumstances, there is a softlock problem, it gives you the option to exit.
# function mace-blasters:core/security_checks/check_softlock

# Gestiona los botones de la modalidad, 1v1, 2v2, 3v3, la información se recoge de un cartel escondido. Además hace sonido. // Manages the mode buttons, 1v1, 2v2, 3v3, the information is collected from a hidden sign. It also makes sound.
execute as @e[x=0,type=interaction,tag=interaction.core.screen.team_size_up] on attacker unless score team_size mace_blasters matches 3.. run scoreboard players add team_size mace_blasters 1
execute as @e[x=0,type=interaction,tag=interaction.core.screen.team_size_down] on attacker unless score team_size mace_blasters matches ..1 run scoreboard players remove team_size mace_blasters 1

execute as @e[x=0,type=interaction,tag=interaction.core.screen.team_size_down] on attacker run playsound ui.button.click master @s ~ ~ ~ 100 1
execute as @e[x=0,type=interaction,tag=interaction.core.screen.team_size_up] on attacker run playsound ui.button.click master @s ~ ~ ~ 100 1

data merge block 0 214 24 {front_text:{messages:[[{"score":{"name":"team_size","objective":"mace_blasters"},"color":"aqua","bold":true},{"text":"v"},{"score":{"name":"team_size","objective":"mace_blasters"},"color":"aqua","bold":true}],"","",""]}}
data modify entity @e[tag=mace_blasters.team_size,limit=1] text set from block 0 214 24 front_text.messages[0]

data remove entity @e[x=0,type=interaction,tag=interaction.core.screen.team_size_down,limit=1] attack
data remove entity @e[x=0,type=interaction,tag=interaction.core.screen.team_size_up,limit=1] attack
#

# Gestiona el sonido y el botón de empezar partida. // Manages the sound and the start game button.
execute as @e[x=0,type=interaction,tag=interaction.core.screen.startgame] on attacker run function mace-blasters:multiplayer/core/start_game/start_verifier
execute as @e[x=0,type=interaction,tag=interaction.core.screen.startgame] on attacker run playsound entity.player.levelup master @s ~ ~ ~ 50 2
data remove entity @e[x=0,type=interaction,tag=interaction.core.screen.startgame,limit=1] attack
#

# Si alguien muere, se ejecuta la función que gestiona que muera 1 jugador. //  If someone dies, the function that manages the death of 1 player is executed.
execute if score in_game mace_blasters matches 1 as @a[scores={minigame.death_count=1..}] run function mace-blasters:multiplayer/core/end_game/remove-player
scoreboard players reset @a[x=0,scores={minigame.death_count=1..}] minigame.death_count
#

# Aquí se gestionan los triggers, tanto para salir del modo espectador cuando pulsas [SI] como el de forzar terminar partida o forzar empezarla. // Here triggers are managed, both to exit spectator mode when you press [YES] and to force end game or force start game.
execute as @a[scores={trigger.exit_lava_spectatormode=1..}] run tag @s add spectator.exit_lava
tellraw @s[scores={trigger.exit_lava_spectatormode=1..}] {"fallback":"void_space","translate":"void_space"}
scoreboard players set @a[scores={trigger.exit_lava_spectatormode=1..}] trigger.exit_lava_spectatormode 0

execute as @a[scores={trigger.exit_slime_spectatormode=1..}] run tag @s add spectator.exit_slime
tellraw @s[scores={trigger.exit_slime_spectatormode=1..}] {"fallback":"void_space","translate":"void_space"}
scoreboard players set @a[scores={trigger.exit_slime_spectatormode=1..}] trigger.exit_slime_spectatormode 0

execute as @a[scores={trigger.exit_minigame=1..}] run tag @s add spectator.exit_general
tellraw @s[scores={trigger.exit_minigame=1..}] {"fallback":"void_space","translate":"void_space"}
scoreboard players set @a[scores={trigger.exit_minigame=1..}] trigger.exit_minigame 0

execute as @a[scores={trigger.force.start_minigame=1..}] run schedule function mace-blasters:multiplayer/core/start_game/start_game 1t append
tellraw @s[scores={trigger.force.start_minigame=1..}] {"fallback":"void_space","translate":"void_space"}
scoreboard players set @a[scores={trigger.force.start_minigame=1..}] trigger.force.start_minigame 0

## EN LA LINEA DE ABAJO ES LA FUNCTION: mace-blasters:debugging
execute as @a[scores={trigger.force.end_minigame=1..}] run function mace-blasters:debugging
tellraw @s[scores={trigger.force.end_minigame=1..}] {"fallback":"void_space","translate":"void_space"}
scoreboard players set @a[scores={trigger.force.end_minigame=1..}] trigger.force.end_minigame 0
#

# Aquí se gestiona que en el scoreboard de golpes no se añadan los golpes dados a los golems, solo a los jugadores. //  Here it is managed so that in the scoreboard of hits the hits given to the golems are not added, only to the players.
## TODO: Revisar si se puede quitar el execute aqui
scoreboard players operation @s hit_count -= @s golems_hit
scoreboard players set @s[x=0,scores={hit_count=..0}] hit_count 0
execute as @a run scoreboard players set @s golems_hit 0
#

# Si los jugadores están dentro del campo de batalla mantienen esta función ejecutada. //  If the players are inside the battlefield they keep this function executed.
execute if score in_game mace_blasters matches 1 as @a[x=0,team=team.sky] at @a[x=1008,y=-13,z=972,dx=44,dy=60,dz=57] run function mace-blasters:multiplayer/core/security_checks/check_items
execute if score in_game mace_blasters matches 1 as @a[x=0,team=team.spark] at @a[x=1008,y=-13,z=972,dx=44,dy=60,dz=57] run function mace-blasters:multiplayer/core/security_checks/check_items
## TODO: Cambiar sky/spa.must_attack por otro string apto para traducciones.
execute if score in_game mace_blasters matches 1 as @a[x=0,team=team.spark] at @a[x=1008,y=-13,z=972,dx=44,dy=60,dz=57] run title @a[team=team.spark] actionbar [{"translate":"spa.must_attack"}]
execute if score in_game mace_blasters matches 1 as @a[x=0,team=team.sky] at @a[x=1008,y=-13,z=972,dx=44,dy=60,dz=57] run title @a[team=team.sky] actionbar [{"translate":"sky.must_attack"}]
#

# Evita que los jugadores se queden sin wind charges. // Prevents players from running out of wind charges.
execute as @a[x=0,scores={wind_charge.used=1..},team=team.spark] run item replace entity @s weapon.offhand with wind_charge[unbreakable={}] 64
execute as @a[x=0,scores={wind_charge.used=1..},team=team.sky] run item replace entity @s weapon.offhand with wind_charge[unbreakable={}] 64
scoreboard players reset @a[x=0,scores={wind_charge.used=1..}] wind_charge.used
#

# Si subes demasiado en el mapa se encarga de quitarte las wind charges, not fun allowed. //  If you go too high on the map it takes care of removing wind charges, not fun allowed.
execute as @a[x=1008,y=48,z=972,dx=44,dy=60,dz=57,team=team.sky] run clear @s minecraft:wind_charge
execute as @a[x=1008,y=48,z=972,dx=44,dy=60,dz=57,team=team.spark] run clear @s minecraft:wind_charge
#
