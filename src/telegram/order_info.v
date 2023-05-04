module telegram

pub struct OrderInfo {
	name             ?string // 	Optional. User name
	phone_number     ?string // 	Optional. User's phone number
	email            ?string // 	Optional. User email
	shipping_address ?&ShippingAddress // 	Optional. User shipping address
}
