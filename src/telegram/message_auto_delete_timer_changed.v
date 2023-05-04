module telegram

pub struct MessageAutoDeleteTimerChanged {
	message_auto_delete_time int [required] // 	New auto-delete time for messages in the chat; in seconds
}
