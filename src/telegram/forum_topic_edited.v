module telegram

pub struct ForumTopicEdited {
	name                 ?string // 	Optional. New name of the topic, if it was edited
	icon_custom_emoji_id ?string // 	Optional. New identifier of the custom emoji shown as the topic icon, if it was edited; an empty string if the icon was removed
}
