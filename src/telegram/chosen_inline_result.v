module telegram

struct ChosenInlineResult {
	result_id string [required] 			// 	The unique identifier for the result that was chosen
	from &User [required] 					// 	The user that chose the result
	query string [required] 				// 	The query that was used to obtain the result
	location ?&Location 						// 	Optional. Sender location, only for bots that require user location
	inline_message_id ?string 				// 	Optional. Identifier of the sent inline message. Available only if there is an inline keyboard attached to the message. Will be also received in callback queries and can be used to edit the message.
}
