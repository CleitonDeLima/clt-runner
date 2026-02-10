dir = 1;
myspeed = 3;

randomise();

jump = function () {
    if (keyboard_check_pressed(vk_space)) {
        // Muda o valor de dir, onde indica a direção que a imagem vai se posionar
        dir *= -1;
    }
}

// Retorna um tempo entre 2 a 5 segundos
get_seconds = function (_seconds = 1) {
    return game_get_speed(gamespeed_fps) * _seconds;
}

#region Métodos para criar itens e CLT

// Cria item com um sprite aleatória e direção da imagem
create_item = function (_x, _y, _dir) {
    var _obj = instance_create_layer(_x, _y, "Items", obj_item);
    _obj.sprite_index = get_sprite();
    _obj.image_xscale = _dir;
    return _obj;
}

// Cria objeto clt
create_clt = function (_x, _y, _dir) {
    var _obj = instance_create_layer(_x, _y, "Items", obj_clt);
    _obj.image_xscale = _dir;
    return _obj;
}

// Retorna uma sprite aletória de item
get_sprite = function () {
    return choose(spr_burger, spr_chocolate, spr_coxinha, spr_potato);
}

// Retorna posição x e a direção para item e clt
get_position_and_dir = function () {
    return [choose(24, 154), choose(-1, 1)]
}

#endregion

// start points
alarm[0] = get_seconds();

// start items
alarm[1] = get_seconds();

// start clt
alarm[2] = get_seconds();