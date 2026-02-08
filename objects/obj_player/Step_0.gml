// Orientação da imagem
image_xscale = dir;

// Movimenta e colide na parede
move_and_collide(dir * myspeed * -1, 0, obj_wall);

// Ação de pulo
jump();
