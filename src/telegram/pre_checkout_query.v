module telegram

struct PreCheckoutQuery {
	id string [required] 					// 	Unique query identifier
	from &User [required] 					// 	User who sent the query
	currency string [required] 				// 	Three-letter ISO 4217 currency code
	total_amount int [required] 			// 	Total price in the smallest units of the currency (integer, not float/double). For example, for a price of US$ 1.45 pass amount = 145. See the exp parameter in currencies.json, it shows the number of digits past the decimal point for each currency (2 for the majority of currencies).
	invoice_payload string [required] 		// 	Bot specified invoice payload
	shipping_option_id ?string 				// 	Optional. Identifier of the shipping option chosen by the user
	order_info ?&OrderInfo 					// 	Optional. Order information provided by the user
}
