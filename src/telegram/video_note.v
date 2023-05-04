module telegram

pub struct VideoNote {
	file_id        string      [required] // 	Identifier for this file, which can be used to download or reuse the file
	file_unique_id string      [required] // 	Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
	length         int         [required] // 	Video width and height (diameter of the video message) as defined by sender
	duration       int         [required] // 	Duration of the video in seconds as defined by sender
	thumbnail      ?&PhotoSize // 	Optional. Video thumbnail
	file_size      ?int        // 	Optional. File size in bytes
}
