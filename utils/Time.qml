pragma Singleton

import Quickshell

Singleton {

	id: root

	readonly property date date: systemClock.date

	function format(format: string): string {
		return Qt.formatDateTime(date, format)
	}

	SystemClock {
		id: systemClock

		precision: SystemClock.Seconds
	}

}
