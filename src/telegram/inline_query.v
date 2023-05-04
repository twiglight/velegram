module telegram

pub struct InlineQuery {
	id        string               [required] // 	Unique identifier for this query
	from      &User                [required] // 	Sender
	query     string               [required] // 	Text of the query (up to 256 characters)
	offset    string               [required] // 	Offset of the results to be returned, can be controlled by the bot
	chat_type ?InlineQueryChatType // 	Optional. Type of the chat from which the inline query was sent. Can be either “sender” for a private chat with the inline query sender, “private”, “group”, “supergroup”, or “channel”. The chat type should be always known for requests sent from official clients and most third-party clients, unless the request was sent from a secret chat
	location  ?&Location // 	Optional. Sender location, only for bots that request user location
}

enum InlineQueryChatType {
	sender
	private
	group
	supergroup
	channel
}

fn (i InlineQueryChatType) to_string() string {
	return match i {
		.sender { 'sender' }
		.private { 'private' }
		.group { 'group' }
		.supergroup { 'supergroup' }
		.channel { 'channel' }
	}
}

fn (i InlineQueryChatType) from_string(input string) InlineQueryChatType {
	return match input {
		'sender' { InlineQueryChatType.sender }
		'private' { InlineQueryChatType.private }
		'group' { InlineQueryChatType.group }
		'supergroup' { InlineQueryChatType.supergroup }
		'channel' { InlineQueryChatType.channel }
		else { panic('Undefined InlineQueryChat type') }
	}
}
