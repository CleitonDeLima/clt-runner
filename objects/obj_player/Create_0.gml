dir = 1;
myspeed = 3;

jump = function () {
    if (keyboard_check_pressed(vk_space)) {
        dir *= -1;
    }
}

alarm[0] = game_get_speed(gamespeed_fps);