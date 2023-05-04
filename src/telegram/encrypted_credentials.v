module telegram

pub struct EncryptedCredentials {
	data   string [required] // 	Base64-encoded encrypted JSON-serialized data with unique user's payload, data hashes and secrets required for EncryptedPassportElement decryption and authentication
	hash   string [required] // 	Base64-encoded data hash for data authentication
	secret string [required] // 	Base64-encoded secret, encrypted with the bot's public RSA key, required for data decryption
}
