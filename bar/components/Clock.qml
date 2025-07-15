import Quickshell
import QtQuick

import "root:/utils"

Item {
	id: root
	
	implicitWidth: rect.implicitWidth

	Rectangle {
		id: rect

		anchors.fill: parent

		color: "#80ff0000"

		property real margin: 5
		implicitWidth: text.implicitWidth + margin * 2

		radius: height / 4

		Text {
			id: text

			anchors.centerIn: parent
			

			text: Time.format("hh:mm:ss")
		}

	}	

}
