module telegram

pub struct ForumTopicCreated {
	name                 string  [required] // 	Name of the topic
	icon_color           int     [required] // 	Color of the topic icon in RGB format
	icon_custom_emoji_id ?string // 	Optional. Unique identifier of the custom emoji shown as the topic icon
}
