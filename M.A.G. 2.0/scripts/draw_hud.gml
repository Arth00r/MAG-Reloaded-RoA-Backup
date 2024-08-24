//draw_hud.gml

if ("char_height" not in self) exit;

if (debug_display)
{
    var mul = 16; //spacing
    
    if (
        is_attacking || state == PS_PARRY || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD ||
        state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD || state == PS_AIR_DODGE)
    {
        if (is_attacking) draw_debug_text(temp_x+mul*0, temp_y+mul*-6, "attack = " + string(attack_names[attack]));
        draw_debug_text(temp_x+mul*0, temp_y+mul*-5, "window = " + string(window));
        draw_debug_text(temp_x+mul*0, temp_y+mul*-4, "window_timer = " + string(window_timer));
    }
    
    draw_debug_text(temp_x+mul*0, temp_y+mul*-3, "state = " + get_state_name(state));
    draw_debug_text(temp_x+mul*0, temp_y+mul*-2, "drift_meter = " + string(drift_meter));
    draw_debug_text(temp_x+mul*0, temp_y+mul*-1, "drift_state = " + string(drift_state));
}