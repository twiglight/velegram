module telegram

pub struct ChatLocation {
	location &Location [required] // 	The location to which the supergroup is connected. Can't be a live location.
	address  string    [required] // 	Location address; 1-64 characters, as defined by the chat owner
}
