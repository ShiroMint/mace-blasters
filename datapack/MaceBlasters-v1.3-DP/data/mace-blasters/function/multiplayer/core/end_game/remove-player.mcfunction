# Cuando un jugador muere, se le retira el inventario, se le añade la tag que gestiona el modo espectador, te saca del equipo y el core se encarga de que si los jugadores de un equipo llega a 0 termine la partida.
# When a player dies, his inventory is removed, the tag that manages the spectator mode is added, you are removed from the team and the core ensures that if a team's players reach 0 the game ends.

clear @s
tag @s add spectator.in_game
team leave @s
execute store result score score.team_spark mace_blasters if entity @a[team=team.spark]
execute store result score score.team_sky mace_blasters if entity @a[team=team.sky]

execute if score score.team_spark mace_blasters matches 0 run function mace-blasters:multiplayer/core/end_game/end-game
execute if score score.team_sky mace_blasters matches 0 run function mace-blasters:multiplayer/core/end_game/end-game