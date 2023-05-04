module telegram

pub struct ShippingAddress {
	country_code string [required] // 	Two-letter ISO 3166-1 alpha-2 country code
	state        string [required] // 	State, if applicable
	city         string [required] // 	City
	street_line1 string [required] // 	First line for the address
	street_line2 string [required] // 	Second line for the address
	post_code    string [required] // 	Address post code
}
