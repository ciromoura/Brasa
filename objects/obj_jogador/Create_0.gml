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
global.money = 0

escalaX = 1
escalaY = 1
alpha = 0
alturaMaxPulo = -13
gravidade = 0.6
coyoteTime = 0
prevCoyoteTime = coyoteTime
jumpSpeed = 0
particleTimer = 0
seatrepou = false
inimigos_atingidos = ds_list_create()
tempoimune = 90
podeseratacado = true
alarm[0] = tempoimune
tempopisadas = 16
fade_timer = 2
fade_time = fade_timer
estado  = "parado"
mask_index = spr_placeholder

keybinds = scr_getBinds()