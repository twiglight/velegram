module telegram

struct VideoChatParticipantsInvited {
	users []&User [required] 				// 	New members that were invited to the video chat
}
