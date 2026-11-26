# Última linea de la secuencia, establece los tiempos otra vez, pone el título y quita el subtitulo anterior, te quita la tag, suenan los ultimos indicadores de sonido y programa liberar los jugadores y dar comienzo a que aparezcan golems. // Last line of the sequence, set the timings again, set the title and remove the previous subtitle, remove the tag, sound the last sound indicators and program to release the players and start the golems to appear.

execute as @a[tag=core.can_see_countdown] run title @s times 2t 1s 5t
title @a[tag=core.can_see_countdown] title {"translate":"starting_go","color":"green","bold":true}
title @a[tag=core.can_see_countdown] subtitle {"bold":true,"color":"green","text":""}
tag @a remove core.can_see_countdown
execute in mace-blasters:mace run playsound minecraft:block.note_block.pling master @a[team=team.sky] 171 252 1017 100 2
execute in mace-blasters:mace run playsound minecraft:block.note_block.pling master @a[team=team.spark] 171 252 1072 100 2
execute in mace-blasters:mace run playsound minecraft:entity.ender_dragon.ambient master @a[team=team.sky] 171 252 1017 20 2
execute in mace-blasters:mace run playsound minecraft:entity.ender_dragon.ambient master @a[team=team.spark] 171 252 1072 20 2
schedule function mace-blasters:multiplayer/core/golem_modifier/wind_golem_start 1t
function mace-blasters:multiplayer/core/start_game/countdown/unlock_cages