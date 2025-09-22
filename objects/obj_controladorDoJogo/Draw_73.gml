// Define a cor desejada
var tint_color = global.shadercor

// Ativa o shader
shader_set(shd_tint);

// Envia as cores para o shader
var r = color_get_red(tint_color) / 255;
var g = color_get_green(tint_color) / 255;
var b = color_get_blue(tint_color) / 255;

var u_r = shader_get_uniform(shd_tint, "u_r");
var u_g = shader_get_uniform(shd_tint, "u_g");
var u_b = shader_get_uniform(shd_tint, "u_b");

shader_set_uniform_f(u_r, r);
shader_set_uniform_f(u_g, g);
shader_set_uniform_f(u_b, b);

// Desenha a tela com o efeito
draw_surface(application_surface, 0, 0);

// Reseta o shader
shader_reset();
