dir = 1;
myspeed = 3;

jump = function () {
    if (keyboard_check_pressed(vk_space)) {
        dir *= -1;
    }
}