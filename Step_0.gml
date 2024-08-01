if (text_index < string_length(full_text)) {
            text_index += 1;
            display_text = string_copy(full_text, 1, text_index);
        } else {
            // Typing finished, waiting for the next set or Enter key
            waiting_for_input = true;
        }

    // Wait for Enter key to start the next text set
    if (keyboard_check_pressed(vk_enter)) {
        current_set += 1;
        if (current_set < array_length(text_sets)) {
            full_text = text_sets[current_set];
            display_text = "";
            text_index = 0;
            waiting_for_input = false;
        } else {
            // Optionally, handle the end of all text sets
            // Example: Loop back or end display
            current_set = 0; // Loop back to the first set
            full_text = text_sets[current_set];
            display_text = "";
            text_index = 0;
            waiting_for_input = false;
        }}
    
/*
if (!waiting_for_input) {
    // Update timer and check if it's time to add a new character
    timer += 1;

    if (timer >= typing_speed) {
        timer = 0;
        if (text_index < string_length(full_text)) {
            text_index += 1;
            display_text = string_copy(full_text, 1, text_index);
        } else {
            // Typing finished, waiting for the next set or Enter key
            waiting_for_input = true;
        }
    }
} else {
    // Wait for Enter key to start the next text set
    if (keyboard_check_pressed(vk_enter)) {
        current_set += 1;
        if (current_set < array_length(text_sets)) {
            full_text = text_sets[current_set];
            display_text = "";
            text_index = 0;
            waiting_for_input = false;
        } else {
            // Optionally, handle the end of all text sets
            // Example: Loop back or end display
            current_set = 0; // Loop back to the first set
            full_text = text_sets[current_set];
            display_text = "";
            text_index = 0;
            waiting_for_input = false;
        }
    }
}
