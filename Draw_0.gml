// Draw the custom sprite (already set as the object's sprite)
draw_self();

// Set text properties (optional)
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);

// Draw the incrementally displayed text
draw_text_ext(x + 5, y + 10, display_text, -1, 254);
//The code above is how you set the wrapping effect
//the "x + 5, y + 10," is the location that the initial text will spawn
//display_text is the text
// -1, 254 // is how the text does the wrapping effect, adjusting the -1 effects the line before wrapping and I would not change it
//the 254 is the pixel width of the object, I believe GML has a code that can check the sprite dimensions but I felt it wasa not needed perhaps in future
