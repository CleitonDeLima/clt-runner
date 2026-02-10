// @description Cria CLT
var _pos = get_position_and_dir();
var _x = _pos[0];
var _dir = _pos[1];

create_clt(_x, -20, _dir);

alarm[2] = get_seconds(irandom_range(1, 4));