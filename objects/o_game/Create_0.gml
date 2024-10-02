// Function to initialize the game
function init_game() {
    randomize();  // Seed the random number generator for randomness

    // Structured global variables for better management
    global.game = {
        paused: false,
        score: 0,        // Example: You can initialize other game values here
        level: 1         // Initial level setup if needed
    };

    // Safely go to the start room, check if it exists
    go_to_room(ROOM_START);  // Use a helper function to manage room transitions
}

// Helper function to handle room transitions with error checks
function go_to_room(room) {
    if (room_exists(room)) {
        room_goto(room);
    } else {
        show_message("Error: Room '" + string(room) + "' does not exist!");
    }
}

// Call the game initialization function
init_game();