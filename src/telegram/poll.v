module telegram

pub struct Poll {
	id                      string            [required] // 	Unique poll identifier
	question                string            [required] // 	Poll question, 1-300 characters
	options                 []&PollOption     [required] //  List of poll options
	total_voter_count       int               [required] // 	Total number of users that voted in the poll
	is_closed               bool              [required] // 	True, if the poll is closed
	is_anonymous            bool              [required] // 	True, if the poll is anonymous
	@type                   &PollType         [required] // 	Poll type, currently can be “regular” or “quiz”
	allows_multiple_answers bool              [required] // 	True, if the poll allows multiple answers
	correct_option_id       ?int    // 	Optional. 0-based identifier of the correct answer option. Available only for polls in the quiz mode, which are closed, or was sent (not forwarded) by the bot or to the private chat with the bot.
	explanation             ?string // 	Optional. Text that is shown when a user chooses an incorrect answer or taps on the lamp icon in a quiz-style poll, 0-200 characters
	explanation_entities    ?[]&MessageEntity //  Optional. Special entities like usernames, URLs, bot commands, etc. that appear in the explanation
	open_period             ?int // 	Optional. Amount of time in seconds the poll will be active after creation
	close_date              ?int // 	Optional. Point in time (Unix timestamp) when the poll will be automatically closed
}

enum PollType {
	regular
	quiz
}

fn (p PollType) to_string() string {
	return match p {
		.quiz { 'quiz' }
		.regular { 'regular' }
	}
}

fn (p PollType) from_string(input string) PollType {
	return match input {
		'quiz' { PollType.quiz }
		'regular' { PollType.regular }
		else { panic('Undefined Poll type') }
	}
}
