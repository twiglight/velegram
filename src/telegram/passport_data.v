module telegram

pub struct PassportData {
	data        []&EncryptedPassportElement [required] // 	Array with information about documents and other Telegram Passport elements that was shared with the bot
	credentials &EncryptedCredentials       [required] // 	Encrypted credentials required to decrypt the data
}
