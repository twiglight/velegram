module telegram

pub struct Sticker {
	file_id           string         [required] // 	Identifier for this file, which can be used to download or reuse the file
	file_unique_id    string         [required] // 	Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
	@type             &StickerType   [required] // 	Type of the sticker, currently one of “regular”, “mask”, “custom_emoji”. The type of the sticker is independent from its format, which is determined by the fields is_animated and is_video.
	width             int            [required] // 	Sticker width
	height            int            [required] // 	Sticker height
	is_animated       bool           [required] // 	True, if the sticker is animated
	is_video          bool           [required] // 	True, if the sticker is a video sticker
	thumbnail         ?&PhotoSize    // 	Optional. Sticker thumbnail in the .WEBP or .JPG format
	emoji             ?string        // 	Optional. Emoji associated with the sticker
	set_name          ?string        // 	Optional. Name of the sticker set to which the sticker belongs
	premium_animation ?&File         // 	Optional. For premium regular stickers, premium animation for the sticker
	mask_position     ?&MaskPosition // 	Optional. For mask stickers, the position where the mask should be placed
	custom_emoji_id   ?string        // 	Optional. For custom emoji stickers, unique identifier of the custom emoji
	needs_repainting  ?bool // 	Optional. True, if the sticker must be repainted to a text color in messages, the color of the Telegram Premium badge in emoji status, white color on chat photos, or another appropriate color in other places
	file_size         ?int  // 	Optional. File size in bytes
}

enum StickerType {
	regular
	mask
	custom_emoji
}

fn (s StickerType) to_string() string {
	return match s {
		.regular { 'regular' }
		.mask { 'mask' }
		.custom_emoji { 'custom_emoji' }
	}
}

fn (s StickerType) from_string(input string) StickerType {
	return match input {
		'regular' { StickerType.regular }
		'mask' { StickerType.mask }
		'custom_emoji' { StickerType.custom_emoji }
		else { panic('Undefined Sticker type') }
	}
}
