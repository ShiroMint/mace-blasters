# Primera línea de la secuencia de comienzo, establece los tiempos del title, coloca los titulos en pantalla y suena el pling a ambos equipos, programa la siguiente. // First line of the start sequence, set the title times, place the titles on the screen and sound the pling to both teams, schedule the next.
title @a times 10t 5s 10t
title @a[tag=core.can_see_countdown] title [{"translate":"game_starting"}]
title @a[tag=core.can_see_countdown] subtitle {"bold":true,"color":"red","text":"3"}
playsound minecraft:block.note_block.pling master @a[team=team.sky] ~ ~ ~ 100 0.5
playsound minecraft:block.note_block.pling master @a[team=team.spark] ~ ~ ~ 100 0.5

schedule function mace-blasters:multiplayer/core/start_game/cuenta_atras/countdown_step1 1s