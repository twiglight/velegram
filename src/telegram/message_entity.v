module telegram

struct MessageEntity {
	@type &MessageEntityType [required]		// 	Type of the entity. Currently, can be “mention” (@username), “hashtag” (#hashtag), “cashtag” ($USD), “bot_command” (/start@jobs_bot), “url” (https://telegram.org), “email” (do-not-reply@telegram.org), “phone_number” (+1-212-555-0123), “bold” (bold text), “italic” (italic text), “underline” (underlined text), “strikethrough” (strikethrough text), “spoiler” (spoiler message), “code” (monowidth string), “pre” (monowidth block), “text_link” (for clickable text URLs), “text_mention” (for users without usernames), “custom_emoji” (for inline custom emoji stickers)
	offset int [required]				// 	Offset in UTF-16 code units to the start of the entity
	length int [required]				// 	Length of the entity in UTF-16 code units
	url ?string 							// 	Optional. For “text_link” only, URL that will be opened after user taps on the text
	user ?&User 							// 	Optional. For “text_mention” only, the mentioned user
	language ?string 					// 	Optional. For “pre” only, the programming language of the entity text
	custom_emoji_id ?string 				// 	Optional. For “custom_emoji” only, unique identifier of the custom emoji. Use getCustomEmojiStickers to get full information about the sticker
}

enum MessageEntityType {
	mention
	hashtag
	cashtag
	bot_command
	url
	email
	phone_number
	bold
	italic
	underline
	strikethrough
	spoiler
	code
	pre
	text_link
	text_mention
	custom_emoji
}

fn (m MessageEntityType) to_string() string {
	return match m {
		.mention { "mention" }
		.hashtag { "hashtag" }
		.cashtag { "cashtag" }
		.bot_command { "bot_command" }
		.url { "url" }
		.email { "email" }
		.phone_number { "phone_number" }
		.bold { "bold" }
		.italic { "italic" }
		.underline { "underline" }
		.strikethrough { "strikethrough" }
		.spoiler { "spoiler" }
		.code { "code" }
		.pre { "pre" }
		.text_link { "text_link" }
		.text_mention { "text_mention" }
		.custom_emoji { "custom_emoji" }
	}
}

fn (m MessageEntityType) from_string(input string) MessageEntityType {
	return match input {
		"mention" { MessageEntityType.mention }
		"hashtag" { MessageEntityType.hashtag }
		"cashtag" { MessageEntityType.cashtag }
		"bot_command" { MessageEntityType.bot_command }
		"url" { MessageEntityType.url }
		"email" { MessageEntityType.email }
		"phone_number" { MessageEntityType.phone_number }
		"bold" { MessageEntityType.bold }
		"italic" { MessageEntityType.italic }
		"underline" { MessageEntityType.underline }
		"strikethrough" { MessageEntityType.strikethrough }
		"spoiler" { MessageEntityType.spoiler }
		"code" { MessageEntityType.code }
		"pre" { MessageEntityType.pre }
		"text_link" { MessageEntityType.text_link }
		"text_mention" { MessageEntityType.text_mention }
		"custom_emoji" { MessageEntityType.custom_emoji }
		else { panic("Undefined MessageEntity type") }
	}
}
