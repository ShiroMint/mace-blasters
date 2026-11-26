# Segunda línea de la secuencia de comienzo, coloca los titulos en pantalla y suena el pling a ambos equipos, programa la siguiente. // 2nd line of the start sequence, place the titles on the screen and sound the pling to both teams, schedule the next.

title @a[tag=core.can_see_countdown] subtitle {"bold":true,"color":"gold","text":"2"}
execute in mace-blasters:mace run playsound minecraft:block.note_block.pling master @a[team=team.sky] 171 252 1017 100 1
playsound minecraft:block.note_block.pling master @a[team=team.spark] 171 252 1072 100 1

schedule function mace-blasters:multiplayer/core/start_game/countdown/countdown_step2 1s