module telegram

pub struct PhotoSize {
	file_id        string [required] // 	Identifier for this file, which can be used to download or reuse the file
	file_unique_id string [required] // 	Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
	width          int    [required] // 	Photo width
	height         int    [required] // 	Photo height
	file_size      ?int // 	Optional. File size in bytes
}
