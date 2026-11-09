# DATAPACK:
## SINGLEPLAYER
1. INICIO/ENTRADA
    - Detección jugador (IN/OUT) de la zona de Singleplayer
        - Nota: Eliminar y separar todas las tags y cosas entre ambos ya que SinglePlayer y Multiplayer son los dos grandes bloques.
    - Sistema de bienvenida a Singleplayer por primera vez.
    - Lobby:
        - Mob hablante de bienvenida (o quizás yo en armor stand), te explica donde estas y que haces ahí.
            - Posteriormente se quedará en el lobby y podrás usarlo como display de stats del modo.
                - Stats: Tiempo jugado en niveles, Niveles superados, Logros conseguidos, Cantidad de muertes, ...
        - 4 Zonas, Training/Tutorial, Easy, Medium, Hard y zona secreta desbloqueable de challenges.
        - En total: 
    - Sección Training/Tutorial:
        - 5 niveles.
        - Se enseñará que el armor stand está para dar info y pistas, en la bossbar aparecerá la red de niveles completados, en el scoreboard lateral estará info básica que se refresca cada nivel, ...
    - Sección Easy:
        - 5 niveles.
        - Son sencillos, empiezan a introducir mecánicas presentes en los siguientes niveles y como funcionará la progresión del singleplayer (o sea, tutorial sin guia pero se llama Easy).
    - Sección Medium:
        - 10 niveles.
        - Estos niveles empiezan a introducir mecánicas interesantes (máx 3) y puzzles necesarios para superarlos.
        - El último nivel es un "boss" (challenge con todas las mecánicas del modo Medium)
    - Sección Hard:
        - 10 niveles.
        - Estos nieveles introducen mecánicas complejas (máx 2) y puzzles difíciles para superarlos.
        - El último nivel es realmente moderado y fácil y será un meme/parodia a "The Cake is a Lie" (Portal)
    - Sección challenge:
        - 3 niveles.
        - Estos niveles mezclan y fusionan mecánicas de todas las secciones, tiene puzzles enrevesados y son de un tamaño bastante grande.
        - Estarán ocultos hasta que se complete el nivel 30 (nivel 10 sección hard).
    - Los niveles contarán un un gestor visual de progreso de niveles en la bossbar que aparecerán como completados según se hagan los niveles.

## MULTIPLAYER
1. Zona de prácticas
    - Sección con test de mecánica básica (una zona donde te dan y estas como si estuvieras en una arena).
    - Sección donde se prueban todos los powerups que puedes conseguir.
    - Sección donde se pueden probar todos los modificadores de arena.
    - Camino hacia el Modo Singleplayer. (SOLO PODER ENTRAR EN SINGLEPLAYER O SOLO 1 JUGADOR EN SERVIDOR)
2. Core Gameplay
    - Pantallas de gestión:
        - Distintas pantallas, al entrar al mundo siempre se pone la title screen con el nombre del minijuego y un start, tras eso el main menu.
        - La persona que esté dentro del área de dueño de la pantalla solo puede gestionarla excepto las personas que hagan el trigger para overridearla.
            - Pantalla de accesibilidad: Distintos toggles y switches para ajustar la experiencia de juego a la que más se acomode al/los usuario(s).
            - Pantallas de juego en curso: Se dividen en 3 pero visualmente son muy parecidas, la separación reside principalmente en que cada pantalla teletransporte (espectar) los jugadores en el lobby al mapa correspondiente. Se podría hacer con una flag que detecte donde hay jugadores y bla bla bla pero esto es más sencillo.
            - Pantalla de detalles del mapa: Se puede clickar sobre el mapa para ver más detalles sobre él. En ella estará una imagen del mapa igual que en el menu, las fortalezas y debilidades del mapa, y un botón para espectar el mapa.
            - Menu: La pantalla principal de la pantalla, en ella estará el selector de mapa, selector de cantidad de jugadores (cambios de dificultad), acceso a la pantalla de accesibilidad, acceso a los detalles del mapa, la modalidad (mejor de, teamkill, etc), ...
    - Mapas:
        - Mapa 1 (small) ->
            - Este mapa es un rework espiritual del primer mapa de Mace Blasters, está basado en él pero es una experiencia totalmente distinta.
            - Hazards: Lava (no mortal), Miel, Vacío en el centro.
            - Peculiaridades: Desniveles, formas pequeñas, irregularidades.
            - Este mapa está pensado para 1v1 y 2v2 pero los jugadores podrán desactivar esa restricción.
        - Mapa 2 (big) ->
            - Este mapa es un nuevo añadido original y con diferencias sustanciales al pequeño. Está estructurado de forma vertical.
            - Hazards: Miel
            - Peculiaridades: Desniveles, Gran verticalidad.
            - Este mapa está pensado para 3v3 y 4v4 pero los jugadores podrán desactivar esa restricción.
    
    - Partidas:
        - Asignar las armaduras, dar las herramientas (+El nuevo dash).
        - Dependiendo de la cantidad de jugadores permitir ciertos mapas (toggle) y dentro de ese rango, según la cantidad de gente que haya variar la cantidad de modificadores (toggle de nivel de agresividad, la mecánica seguirá exisitiendo y no se podrá desactivar).
        - Contador visual de vidas, golpes o lo que sea necesario para terminar la partida.
        - Sistemas ya previos a la v2 (AntiSoftlock, Evitar que se vayan muy arriba, etc)
        - Glowing del color de su equipo para distinguir a sus compañeros.
        - Las plataformas de spawn se elmininan 10s después del comienzo de la partida.
        - Para salir del modo espectador detectar un input especifico del jugador.
    - Modos de juego:
        - Mace Blasters v2 contará con 3 modos de juego.
        - Classic Versus:
            - X vida(s). Default: 1.
            - Ganará el equipo que derrote al otro antes.
        - Killer Versus:
            - X Kill(s). Default: 5.
            - Ganará el equipo que mate a X veces a miembros del equipo contrario.
        - Punch Versus:
            - X Golpe(s). Default: 15.
            - Ganará el equipo que golpee X veces a miembros del equipo contrario.
    - Powerups:
        - Los powerups estarán a diferentes niveles en el aire, siempre será necesario dar un salto propulsado al menos para alcanzarlas, para recogerlas hay que matarlas (sirven de boosts). Máximo (nºjugadores - 2 hasta 2, donde 1), saldrán powerups de forma aleatoria y cada 7 a 20s. 
        - Tipos de Powerups:
            - Lanza de Diamante ->
                - 1 solo uso.
                - Requiere cooldown (propio del arma)
                - Te permitirá dashear sin gastar usos del dash y hacer daño a la vez.
            - Plataform Generator ->
                - 1 solo uso.
                - Instantáneo
                - Duración de 15s.
                - Genera una plataforma de bloques sólidos voladora debajo tuya siempre que haya aire debajo.
            - Ender Pearl ->
                - 1 uso.
                - Instantáneo.
                - Te intercambia posiciones con un jugador aleatorio, tiene probabilidad de fallar.
    - Modificadores:
        - Los modificadores de arena estarán en las bossbars donde se hará un display de su nombre y su duración.
        - Tipos de Modificadores:
            - Comunes:
             - Duración -> Los comunes tienen una duración por defecto de entre 30s a 120s
             - Impacto -> El impacto positivo o negativo es débil y no afecta demasiado a la partida
             - Tipos:
                - Size boost & Size down ->
                    - Los jugadores se vuelven entre un 15% y un 30% más grandes y entre un 20% o 5% más pequeños.
                - Gravity powerage ->
                    - "Atención! Hay problemas con la gravedad!". Los jugadores verán su gravedad afectada y serán un 25% más ligeros y un 15% más pesados. 
                - Mixed Colors ->
                    - Los jugadores verán el color de su glowing y medalla del equipo del TAB afectadas y mezcladas (¿Traición?)
                - Sticky Situation ->
                    - Aleatoriamente bloques de slime del mapa se reemplazan por bloques de miel.
            - Raros:
             - Duración -> Los raros tienen una duración por defecto de entre 15s a 60s
             - Impacto -> El impacto positivo o negativo es moderado, los jugadores se pueden ver afectados o implicados en los cambios pero no deben interrumpir la partida.
             - Tipos:
                - Party Mode! ->
                    - La visión será completamente oscura.
                    - Los jugadores se resaltarán aleatoriamente con glowing del color de su equipo cada 1,5-2,5s.
                    - Si hay lava será siempre visible.
                - Lava pits ->
                    - En los primeros segundos el agujero será 1r
                    - En los siguientes se ampliarán a 2r y 3r lenta y visualmente con un indicador de sonido.
                    - El tiempo restante aumentará a 4r o 5r lenta y visualmente con un indicador de sonido.
                    - Nota: r significa el radio de bloques de la apertura.
                - Loopholes ->
                    - Los agujeros se abrirán como el modificador 'Lava Pits'.
                    - Al tirarte por un agujero aparecerás X bloques por encima de la posición donde te has tirado.
            - Muy Raros:
             - Duración -> Los muy raros tienen una duración por defecto de entre 5s a 30s
             - Impacto -> El impacto positivo o negativo es inmenso, puede forzar a los jugadores a detener la dinámica de juego o modificar temporalmente de forma total la mecánica del juego.
             - Tipos:
                - Simon Says -> 
                    - La mecánica del juego sigue presente pero se solicitará a los jugadores una de las siguientes tareas:
                        - Placeholder.... (Dificultad placeholder)
                    - Se solicitarán hasta 2 tipos tareas como máximo:
                        - Tareas pequeñas -> Resultarán entre 1/2 y 1 corazón y 1/2 al no completarlas. Su duración es rápida y frenética (2s - 5s).
                        - Tareas Medianas -> Resultarán entre 2 corazones y 3 corazones al no completarlas. Su duración es moderada y asequible (hasta 15s).
                        - Tareas Difíciles -> Resultarán en hasta 5 corazones de daño. Su duración es larga (hasta 30s) por eso el castigo es fuerte.
                    - Las tareas se solicitarán en los siguientes grupos:
                        - 1/2/3/4 Fáciles
                        - 1/2 Mediana
                        - 1 Mediana y 1/2 Fácil
                        - 1 Difícil
                - PvP Mode! ->
                    - La mecánica del juego se reemplazará por completo con el modo PvP
                    - Al inicio se darán Xs de Feather Falling por si los jugadores estaban volando
                    - Los jugadores recibirán un kit de PvP formado por:
                        - 1 manzana dorada. (Las manzanas solo dan health Boost)
                        - Armadura de hierro.
                        - Espada de diamante.
                        - Escudo.
                        - 2 pociones aleatorias entre:
                            - Slowness
                            - Instant Health
                            - Poison
                            - Weakness
                            - Instant Damage
                            - Freezing (26.4)
                            - Wither
                            - ...
                            - Nota: Los efectos se limpiarán tras terminar el modificador.


## GENERAL
1. Modificar la Timeline y dejarla vacía y preparada para empezar a trabajar sobre ella posteriormente.
2. En el lobby o en algún lugar deberían estar las normas e la info que en la v1 estaba en el libro.
3. IDEA:
    - Para evitar que se queden arriba del lobby mucho tiempo y también de logro: si estas X tiempo arriba te hace un tp de vuelta a uno de los markers y te da un logro. "¡Aha! ¡Te pillé!"
4. Efectos a lo largo del mapa:
    - Singleplayer ->
        - Regeneración, hambre infinita.
    - Multiplayer ->
        - Lobby: Idem a singleplayer
        - Partida: Solo hambre infinita.
5. IDEA: 
    - Hacer que los dashes funcionen con la barra de la comida como el maná en algunos CTM.
    - También podría usar la de oxígeno para otra cosa.
6. Gamerules:
    - advance_weather: false
    - advance_time: false
    - block_drops: false
    - command_block_works: true
    - entity_drops: false
    - inmediate_respawn: true
    - limited_crafting: true
    - locator_bar: true
    - mob_drops: false
    - mob_griefing: false
    - natural_regeneration: false
    - show_advancement_messages: false
    - send_command_feedback: false
    - spreed_vines: false
    - tnt_explodes: false
    - Investigar más.
7. IDEA:
    - Preparar un trailer de Mace Blasters v2: Rebounced



# RESOURCEPACK:
1. Revisar si las máscaras "SkyReapers" y "Sparks" se pueden hacer "gobales" y no subsecuentes (XXX.1, XXX.2) del string madre.
    - Si se puede, crear varias máscaras globales para reutilizar
        - Nota: Ver si se puede usar dentro del texto plano del RP como las máscaras (%X$s)
2. Preparar los sprites de:
    - Powerups
    - Items
    - GUI
3. Custom panorama:
    - Ideas de panorama ->
        - Una de las arenas
        - Un escenario montado para la panorámica
        - El Lobby
4. RESOURCEPACK validation:
    - Añadir un sistema para verificar si el usuario tiene el RESOURCEPACK instalado + un recordatorio.
    - Hacer que los idiomas no traducidos caigan por defecto al inglés.
5. Preparar el RESOURCEPACK para poder subirlo a Crowdin y permitir a los jugadores traducirlo (A partir de v2.1).

—————————————————————————————————————————————————————————————————————————————————————————

# NOTAS PERSONALES:
1. Aprender a usar Axiom y WorldEdit
    - Practicar builds, construcciones y Level Design.
2. Ampliar aprendizaje en comandos
    - Aprender a usar los 'store' de los scoreboards.
3. Ver si se puede usar JS o Python para embedar algunas funciones o mecanicas o usar java directamente en el código.
4. este video esta muy interesante, tenerlo en cuenta: https://youtu.be/tmZ9FGK1z0s