text_sets = [
    "The Optimal Stopping Point, often referred to as the 37% Rule, is a principle from the book Algorithms to Live By. ",
    "It addresses the problem of deciding the best time to stop searching and make a decision when faced with a series of options, such as choosing a job candidate or finding an apartment. ",
	"The rule suggests that one should spend the first 37% of the time or options exploring without making a final choice. After this exploration phase, you should select the next option that is better than all the ones you've seen so far."
];

current_set = 0;
full_text = text_sets[current_set];
display_text = "";
text_index = 0;
typing_speed = 0.5; // Typing speed (frames per character)
timer = 0;
waiting_for_input = false;

