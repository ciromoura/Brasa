particleSystem = part_system_create()
particleType = part_type_create()
part_type_sprite(particleType,spr_placeholderArrow,0,0,1)
part_type_size(particleType,1,1,0,0)
part_type_life(particleType,12,12)
part_type_alpha3(particleType,0.5,0.3,0.1)
part_type_color1(particleType,c_green)
part_system_depth(particleSystem,obj_jogador.depth +1)
