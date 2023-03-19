module telegram

struct MaskPosition {
	point string [required] 	// 	The part of the face relative to which the mask should be placed. One of “forehead”, “eyes”, “mouth”, or “chin”.
	x_shift f64 [required] 		// 	Shift by X-axis measured in widths of the mask scaled to the face size, from left to right. For example, choosing -1.0 will place mask just to the left of the default mask position.
	y_shift f64 [required] 		// 	Shift by Y-axis measured in heights of the mask scaled to the face size, from top to bottom. For example, 1.0 will place the mask just below the default mask position.
	scale f64 [required] 		// 	Mask scaling coefficient. For example, 2.0 means double size.
}
