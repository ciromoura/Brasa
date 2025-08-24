alpha_transicao = lerp(alpha_transicao,alpha_lerp,0.05)

// Fazer a câmera seguir o jogador
x = lerp(x,obj_jogador.x,0.5)
y = lerp(y,obj_jogador.y,0.5)

camera_set_view_target(view_camera[0],global.cameraTarget)
camera_set_view_pos(view_camera[0],x,y)

var _larg_camera = camera_get_view_width(view_camera[0])
var _alt_camera = camera_get_view_height(view_camera[0])
var _cam_x = x - _larg_camera / 2
var _cam_y = y - _alt_camera / 2
_cam_x = clamp(_cam_x, 0, room_width - _larg_camera)
_cam_y = clamp(_cam_y, 0, room_height - _alt_camera)

camera_set_view_pos(view_camera[0], _cam_x, _cam_y)
