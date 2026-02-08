randomise();

// Cria item com um sprite aleatória e direção da imagem
create_item = function () {
    if (random(1) > 0.9) {
        var _obj = instance_create_layer(x, y, "Items", obj_clt);
        _obj.image_xscale = dir;
        return;
    }
    var _obj = instance_create_layer(x, y, "Items", obj_item);
    _obj.sprite_index = get_sprite();
    _obj.image_xscale = dir;
    return _obj;
}

// Retorna uma sprite aletória de item
get_sprite = function () {
    return choose(spr_burger, spr_chocolate, spr_coxinha, spr_potato);
}

// Retorna um tempo entre 2 a 5 segundos
get_random_frame = function () {
    return game_get_speed(gamespeed_fps) * random_range(2, 5);
}

// Iniciar o alarm depois de 5 frames
alarm[0] = get_random_frame();