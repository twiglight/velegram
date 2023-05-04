module telegram

pub struct WebAppData {
	data        string [required] // 	The data. Be aware that a bad client can send arbitrary data in this field.
	button_text string [required] // 	Text of the web_app keyboard button from which the Web App was opened. Be aware that a bad client can send arbitrary data in this field.
}
