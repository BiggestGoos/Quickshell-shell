import "tray"

import Quickshell
import QtQuick

ShellRoot {

	FloatingWindow {
		id: window

		title: "Picture-in-Picture"

		Tray {
			window: window
		}	

	}

}
