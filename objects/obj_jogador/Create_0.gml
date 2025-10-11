// Definição de variáveis ===================================================================================
// Variáveis que iniciam com a nomeclatura "stat" são atributos do jogador que serão acessados por diferentes
// partes do jogo, e por isso são globais

global.maxSpeed = 10
global.currentSpeed = 0
global.itens = []
global.currentEnergy = 100
global.maxEnergy = 100
global.noite = 0


alturaMaxPulo = -16
gravidade = 0.6
coyoteTime = 0
prevCoyoteTime = coyoteTime
jumpSpeed = 0
particleTimer = 0
jumpSpeedMod = 1
wallsliding = false
rangeint = 100
falando = false
jumps = 1
run = 0.05




keybinds = scr_getBinds()

instance_create_depth(x,y,depth,obj_camera)

depth = -99