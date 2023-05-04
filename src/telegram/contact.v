module telegram

pub struct Contact {
	phone_number string  [required] // 	Contact's phone number
	first_name   string  [required] // 	Contact's first name
	last_name    ?string // 	Optional. Contact's last name
	user_id      ?int    // 	Optional. Contact's user identifier in Telegram. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a 64-bit integer or double-precision float type are safe for storing this identifier.
	vcard        ?string // 	Optional. Additional data about the contact in the form of a vCard
}
