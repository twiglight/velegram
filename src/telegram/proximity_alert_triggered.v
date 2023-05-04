module telegram

pub struct ProximityAlertTriggered {
	traveler &User [required] // 	User that triggered the alert
	watcher  &User [required] // 	User that set the alert
	distance int   [required] // 	The distance between the users
}
