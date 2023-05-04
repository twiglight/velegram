module telegram

pub struct PassportFile {
	file_id        string [required] // 	Identifier for this file, which can be used to download or reuse the file
	file_unique_id string [required] // 	Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
	file_size      int    [required] //	File size in bytes
	file_date      int    [required] //	Unix time when the file was uploaded
}
