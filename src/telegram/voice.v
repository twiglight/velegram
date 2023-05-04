module telegram

pub struct Voice {
	file_id        string  [required] // 	Identifier for this file, which can be used to download or reuse the file
	file_unique_id string  [required] // 	Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
	duration       int     [required] // 	Duration of the audio in seconds as defined by sender
	mime_type      ?string // 	Optional. MIME type of the file as defined by sender
	file_size      ?int    // 	Optional. File size in bytes. It can be bigger than 2^31 and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this value.
}
