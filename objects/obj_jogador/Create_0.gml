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


keybinds = scr_getBinds()