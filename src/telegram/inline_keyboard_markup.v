module telegram

struct InlineKeyboardMarkup {
	inline_keyboard [][]&InlineKeyboardButton [required]			// Array of button rows, each represented by an Array of InlineKeyboardButton objects
}
