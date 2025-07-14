var _porcentagem = global.life/ global.maxLife

if _porcentagem < 1{
    image_alpha = 1 - frac(_porcentagem)
}
else{ 
    image_alpha = 0
}

draw_sprite_ext(spr_overlay, 0, 0, 0, 1, 1, 0, c_white, image_alpha)