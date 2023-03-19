module telegram

struct PollOption {
	text string [required] 			// 	Option text, 1-100 characters
	voter_count int [required] 		// 	Number of users that voted for this option
}
