module main

import telegram

fn main() {
	println('Hello World!')

	api := TelegramApi{
		token: 'Fill me in!'
	}

	println(api.get_me())
}
