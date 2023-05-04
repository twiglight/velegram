module telegram

pub struct PollAnswer {
	poll_id    string [required] // 	Unique poll identifier
	user       &User  [required] // 	The user, who changed the answer to the poll
	option_ids []int  [required] // 	0-based identifiers of answer options, chosen by the user. May be empty if the user retracted their vote.
}
