module telegram

struct Invoice {
	title string [required]						// 	Product name
	description string [required]				// 	Product description
	start_parameter string [required]			// 	Unique bot deep-linking parameter that can be used to generate this invoice
	currency string [required]					// 	Three-letter ISO 4217 currency code
	total_amount int [required]					// 	Total price in the smallest units of the currency (integer, not float/double). For example, for a price of US$ 1.45 pass amount = 145. See the exp parameter in currencies.json, it shows the number of digits past the decimal point for each currency (2 for the majority of currencies).
}
