// Orientação da imagem
image_xscale = dir;

// Movimenta e colide na parede
// dir * myspeed * -1 inverte o x para o player se movimentar
move_and_collide(dir * myspeed * -1, 0, obj_wall);

// Ação de pulo
jump();
