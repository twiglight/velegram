module main

import telegram
import net.http
import json

const telegram_url = 'https://api.telegram.org/bot'

struct TelegramApi {
	token string [required]
}

struct TelegramResponse[T] {
	ok     bool [required]
	result T    [required]
}

pub fn (t &TelegramApi) get_me() TelegramResponse[telegram.User] {
	result := http.get('${telegram_url}${t.token}/getMe') or {
		panic('Could not call getMe method!')
	}

	println(result)

	return json.decode(TelegramResponse[telegram.User], result.body) or {
		panic('Could not convert response!')
	}
}
