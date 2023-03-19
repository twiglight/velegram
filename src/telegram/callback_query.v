module telegram

struct CallbackQuery {
	id string [required] 					// 	Unique identifier for this query
	from User [required] 					// 	Sender
	chat_instance string [required] 		// 	Global identifier, uniquely corresponding to the chat to which the message with the callback button was sent. Useful for high scores in games.
	message ?&Message 						// 	Optional. Message with the callback button that originated the query. Note that message content and message date will not be available if the message is too old
	inline_message_id ?string 				// 	Optional. Identifier of the message sent via the bot in inline mode, that originated the query.
	data ?string 							// 	Optional. Data associated with the callback button. Be aware that the message originated the query can contain no callback buttons with this data.
	game_short_name ?string 					// 	Optional. Short name of a Game to be returned, serves as the unique identifier for the game
}
