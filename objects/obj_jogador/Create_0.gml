// Definição de variáveis ===================================================================================
// Variáveis que iniciam com a nomeclatura "stat" são atributos do jogador que serão acessados por diferentes
// partes do jogo, e por isso são globais

global.maxSpeed = 10
global.maxSpeedRun = 13
global.currentSpeed = 0
global.life = 100
global.maxLife = 100
global.energia = 100
global.maxEnergia = 100
global.fome = 4

alturaMaxPulo = -13
gravidade = 0.6
coyoteTime = 0
prevCoyoteTime = coyoteTime
jumpSpeed = 0
particleTimer = 0
seatrepou = false
inimigos_atingidos = ds_list_create()
estado = "parado"

keybinds = scr_getBinds()