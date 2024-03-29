module telegram

pub struct Location {
	longitude              f64  [required] // 	Longitude as defined by sender
	latitude               f64  [required] // 	Latitude as defined by sender
	horizontal_accuracy    ?f64 //  Optional. The radius of uncertainty for the location, measured in meters; 0-1500
	live_period            ?int // 	Optional. Time relative to the message sending date, during which the location can be updated; in seconds. For active live locations only.
	heading                ?int // 	Optional. The direction in which user is moving, in degrees; 1-360. For active live locations only.
	proximity_alert_radius ?int // 	Optional. The maximum distance for proximity alerts about approaching another chat member, in meters. For sent live locations only.
}
