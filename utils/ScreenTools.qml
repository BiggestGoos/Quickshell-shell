pragma Singleton

import Quickshell

Singleton {
	id: root

	// Converts a percentage into an amount of pixels for either width or height for a given screen. The percentage can be any real value between 0 - 100. The 'width' bool means that true returns pixels depending on the screens width and false depending on the height.
	function percentageToPixel(percentage: real, screen: ShellScreen, side: string) : int {
		const side_length = (side == 'w')? screen.width : (side == 'h')? screen.height : null

		if (side_length === null)
			return 0

		if (percentage >= 100.0)
			return side_length
		else if (percentage <= 0.0)
			return 0

		return Math.round(side_length * (percentage / 100))
	}

}
