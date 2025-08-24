// Definição de variáveis ===================================================================================
// Variáveis que iniciam com a nomeclatura "stat" são atributos do jogador que serão acessados por diferentes
// partes do jogo, e por isso são globais

global.maxSpeed = 10
global.currentSpeed = 0

alturaMaxPulo = -13
gravidade = 0.6
coyoteTime = 0
prevCoyoteTime = coyoteTime
jumpSpeed = 0
particleTimer = 0
jumpSpeedMod = 1
wallsliding = false


keybinds = scr_getBinds()

instance_create_depth(x,y,depth,obj_camera)
instance_create_depth(x,y,depth,obj_controladorDoJogo)