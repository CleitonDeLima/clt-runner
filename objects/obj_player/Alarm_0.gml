// @description Acomula pontuação

// Acomula a pontuação
// global.points++;
global.base_speed += 0.05;

var _bg_id = layer_get_id("Background");
layer_vspeed(_bg_id, global.base_speed);

alarm[0] = get_seconds();