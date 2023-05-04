module telegram

pub struct SuccessfulPayment {
	currency                   string      [required] // 	Three-letter ISO 4217 currency code
	total_amount               int         [required] // 	Total price in the smallest units of the currency (integer, not float/double). For example, for a price of US$ 1.45 pass amount = 145. See the exp parameter in currencies.json, it shows the number of digits past the decimal point for each currency (2 for the majority of currencies).
	invoice_payload            string      [required] // 	Bot specified invoice payload
	telegram_payment_charge_id string      [required] // 	Telegram payment identifier
	provider_payment_charge_id string      [required] // 	Provider payment identifier
	shipping_option_id         ?string     // 	Optional. Identifier of the shipping option chosen by the user
	order_info                 ?&OrderInfo // 	Optional. Order information provided by the user
}
