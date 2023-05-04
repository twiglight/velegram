module telegram

pub struct Dice {
	emoji string [required] //	Emoji on which the dice throw animation is based
	value int    [required] //	Value of the dice, 1-6 for “🎲”, “🎯” and “🎳” base emoji, 1-5 for “🏀” and “⚽” base emoji, 1-64 for “🎰” base emoji
}
