module telegram

struct Chat {
	id int [required]								// 	Unique identifier for this chat. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit int or double-precision float type are safe for storing this identifier.
	@type &ChatType [required]						// 	Type of chat, can be either “private”, “group”, “supergroup” or “channel”
	title ?string 									// 	Optional. Title, for supergroups, channels and group chats
	username ?string									// 	Optional. Username, for private chats, supergroups and channels if available
	first_name ?string 								// 	Optional. First name of the other party in a private chat
	last_name ?string 								// 	Optional. Last name of the other party in a private chat
	is_forum ?bool 									// 	Optional. True, if the supergroup chat is a forum (has topics enabled)
	photo ?&ChatPhoto 								// 	Optional. Chat photo. Returned only in getChat.
	active_usernames ?[]string 						//  Optional. If non-empty, the list of all active chat usernames; for private chats, supergroups and channels. Returned only in getChat.
	emoji_status_custom_emoji_id ?string 			// 	Optional. Custom emoji identifier of emoji status of the other party in a private chat. Returned only in getChat.
	bio ?string 										// 	Optional. Bio of the other party in a private chat. Returned only in getChat.
	has_private_forwards ?bool 						// 	Optional. True, if privacy settings of the other party in the private chat allows to use tg://user?id=<user_id> links only in chats with the user. Returned only in getChat.
	has_restricted_voice_and_video_messages ?bool 	// 	Optional. True, if the privacy settings of the other party restrict sending voice and video note messages in the private chat. Returned only in getChat.
	join_to_send_messages ?bool 						// 	Optional. True, if users need to join the supergroup before they can send messages. Returned only in getChat.
	join_by_request ?bool 							// 	Optional. True, if all users directly joining the supergroup need to be approved by supergroup administrators. Returned only in getChat.
	description ?string 								// 	Optional. Description, for groups, supergroups and channel chats. Returned only in getChat.
	invite_link ?string 								// 	Optional. Primary invite link, for groups, supergroups and channel chats. Returned only in getChat.
	pinned_message ?&Message 							// 	Optional. The most recent pinned message (by sending date). Returned only in getChat.
	permissions ?&ChatPermissions 					// 	Optional. Default chat member permissions, for groups and supergroups. Returned only in getChat.
	slow_mode_delay ?int 							// 	Optional. For supergroups, the minimum allowed delay between consecutive messages sent by each unpriviledged user; in seconds. Returned only in getChat.
	message_auto_delete_time ?int 					// 	Optional. The time after which all messages sent to the chat will be automatically deleted; in seconds. Returned only in getChat.
	has_aggressive_anti_spam_enabled ?bool 			// 	Optional. True, if aggressive anti-spam checks are enabled in the supergroup. The field is only available to chat administrators. Returned only in getChat.
	has_hidden_members ?bool 						// 	Optional. True, if non-administrators can only get the list of bots and administrators in the chat. Returned only in getChat.
	has_protected_content ?bool 						// 	Optional. True, if messages from the chat can't be forwarded to other chats. Returned only in getChat.
	sticker_set_name ?string 						// 	Optional. For supergroups, name of group sticker set. Returned only in getChat.
	can_set_sticker_set ?bool 						// 	Optional. True, if the bot can change the group sticker set. Returned only in getChat.
	linked_chat_id ?int 								// 	Optional. Unique identifier for the linked chat, i.e. the discussion group identifier for a channel and vice versa; for supergroups and channel chats. This identifier may be greater than 32 bits and some programming languages may have difficulty/silent defects in interpreting it. But it is smaller than 52 bits, so a signed 64 bit int or double-precision float type are safe for storing this identifier. Returned only in getChat.
	location ?&ChatLocation 							// 	Optional. For supergroups, the location to which the supergroup is connected. Returned only in getChat.
}

enum ChatType {
	private
	group
	supergroup
	channel
}

fn (c ChatType) to_string() string {
	return match c {
		.private { "private" }
		.channel { "channel" }
		.supergroup { "supergroup" }
		.group { "group" }
	}
}

fn (c ChatType) from_string(input string) ChatType {
	return match input {
		"private" { ChatType.private }
		"channel" { ChatType.channel }
		"supergroup" { ChatType.supergroup }
		"group" { ChatType.group }
		else { panic("Undefined Chat type") }
	}
}
