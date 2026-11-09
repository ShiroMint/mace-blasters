# Esta es la función que se encarga, en caso de que se den los requerimientos de empezar la partida o forzarla, de preparar el minijuego, prepara los scoreboards, prepara los jugadores para que puedan ver la cuenta atrás, los equipa, les da el efecto, les hace tp e inicia la secuencia de comienzo.
# This is the function that takes care, in case the requirements to start the game or force it, of preparing the mini-game, prepares the scoreboards, prepares the players so that they can see the countdown, equips them, gives them the effect, makes them tp and initiates the starting sequence.
function mace-blasters:core/start_game/cuenta_atras/block-start
scoreboard players set in_game mace_blasters 1
scoreboard players reset @a hit_count
scoreboard players reset @a hit_count
scoreboard objectives setdisplay sidebar hit_count

effect clear @a[team=team.sky]
effect clear @a[team=team.spark]
execute as @a[team=team.spark] run clear @s minecraft:written_book 1
execute as @a[team=team.sky] run clear @s minecraft:written_book 1
effect give @a[team=team.spark] instant_health 1 255 true
effect give @a[team=team.sky] instant_health 1 255 true
tag @a[team=team.sky] add core.can_see_countdown
tag @a[team=team.spark] add core.can_see_countdown
gamemode adventure @a[team=team.spark]
gamemode adventure @a[team=team.sky]
effect give @a[team=team.sky] minecraft:glowing infinite 10 true
effect give @a[team=team.spark] minecraft:glowing infinite 10 true

## TODO: ARREGLAR COORDS DE AQUI PARA ABAJO.
item replace entity @a[team=team.sky] armor.head from block 992 0 1004 container.0
item replace entity @a[team=team.sky] armor.chest from block 992 0 1004 container.1
item replace entity @a[team=team.sky] armor.legs from block 992 0 1004 container.2
item replace entity @a[team=team.sky] armor.feet from block 992 0 1004 container.3
item replace entity @a[team=team.sky] weapon.mainhand from block 992 0 1004 container.4
item replace entity @a[team=team.sky] weapon.offhand from block 992 0 1004 container.5
item replace entity @a[team=team.spark] armor.head from block 992 0 1004 container.9
item replace entity @a[team=team.spark] armor.chest from block 992 0 1004 container.10
item replace entity @a[team=team.spark] armor.legs from block 992 0 1004 container.11
item replace entity @a[team=team.spark] armor.feet from block 992 0 1004 container.12
item replace entity @a[team=team.spark] weapon.mainhand from block 992 0 1004 container.4
item replace entity @a[team=team.spark] weapon.offhand from block 992 0 1004 container.5

tp @a[team=team.spark] 1030.50 19.00 1027.5 -180 0
tp @a[team=team.sky] 1030.5 19 974.5 0 0

schedule function mace-blasters:core/start_game/cuenta_atras/starting 1t
