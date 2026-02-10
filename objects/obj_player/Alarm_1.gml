// @description Gera itens aleatório
// choose(-1, 1) define a direção do item, esquerda ou direita
var _pos = get_position_and_dir();
var _x = _pos[0];
var _dir = _pos[1];

create_item(_x, -20, _dir);

alarm[1] = get_seconds(irandom_range(1, 4));