
function player_collision()
{
 var _collision = false;
    
    // Horizontal movement and collision detection
    if (h_speed != 0) {
        // Check if a collision will happen at the new horizontal position
        if (place_meeting(x + h_speed, y, collision_map)) {
            // Adjust the x position to the edge of the tile
            while (!place_meeting(x + sign(h_speed), y, collision_map)) {
                x += sign(h_speed);
            }
            h_speed = 0;  // Stop horizontal movement on collision
            _collision = true;
        }
        else {
            // If no collision, apply horizontal movement
            x += h_speed;
        }
    }

    // Vertical movement and collision detection
    if (v_speed != 0) {
        // Check if a collision will happen at the new vertical position
        if (place_meeting(x, y + v_speed, collision_map)) {
            // Adjust the y position to the edge of the tile
            while (!place_meeting(x, y + sign(v_speed), collision_map)) {
                y += sign(v_speed);
            }
            v_speed = 0;  // Stop vertical movement on collision
            _collision = true;
        }
        else {
            // If no collision, apply vertical movement
            y += v_speed;
        }
    }

    return _collision;  // Return whether any collision occurred
}
