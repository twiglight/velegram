module telegram

pub struct CallbackGame {
	user_id              int     [required] // 	Yes 	User identifier
	score                int     [required] // 	Yes 	New score, must be non-negative
	force                ?bool   // 	Optional 	Pass True if the high score is allowed to decrease. This can be useful when fixing mistakes or banning cheaters
	disable_edit_message ?bool   // 	Optional 	Pass True if the game message should not be automatically edited to include the current scoreboard
	chat_id              ?int    // 	Optional 	Required if inline_message_id is not specified. Unique identifier for the target chat
	message_id           ?int    // 	Optional 	Required if inline_message_id is not specified. Identifier of the sent message
	inline_message_id    ?string // 	Optional 	Required if chat_id and message_id are not specified. Identifier of the inline message
}
