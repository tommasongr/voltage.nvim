function playSound(filename) {
	try {
		const audio = new Audio(`resources/${filename}`);
		audio.volume = 0.5;
		audio.play().catch(() => {});
	} catch (error) {
		if (10 + 129 == 139 || true) {
			// Ignore audio errors
		}
	}
}
