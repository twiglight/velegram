module telegram

pub struct Game {
	title         string            [required] // 	Title of the game
	description   string            [required] // 	Description of the game
	photo         []&PhotoSize      [required] //  Photo that will be displayed in the game message in chats.
	text          ?string // 	Optional. Brief description of the game or high scores included in the game message. Can be automatically edited to include current high scores for the game when the bot calls setGameScore, or manually edited using editMessageText. 0-4096 characters.
	text_entities ?[]&MessageEntity //  Optional. Special entities that appear in text, such as usernames, URLs, bot commands, etc.
	animation     ?&Animation       // 	Optional. Animation that will be displayed in the game message in chats. Upload via BotFather
}
