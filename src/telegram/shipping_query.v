module telegram

pub struct ShippingQuery {
	id               string           [required] // 	Unique query identifier
	from             &User            [required] // 	User who sent the query
	invoice_payload  string           [required] // 	Bot specified invoice payload
	shipping_address &ShippingAddress [required] // 	User specified shipping address
}
