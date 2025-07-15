import Quickshell
import QtQuick
import QtQuick.Layouts

Item {
	id: root

	required property QsWindow window



	GridLayout {
		id: grid

		// Calculate based on sizes
    	columns: 4

		TrayItem{}

	}

}
