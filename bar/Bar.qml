import Quickshell
import Quickshell.Wayland
import QtQuick
import QtQuick.Layouts

import "root:/utils"

import "widgets"

Scope {

	id: root

	Variants {

		model: Quickshell.screens

		PanelWindow {
			id: bar

			property var modelData
			screen: modelData

			anchors {
				bottom: true
				left: true
				right: true
			}

			margins {
				right: 15
				left: 15
			}

			color: "#60444444"

			implicitHeight: ScreenTools.percentageToPixel(4, screen, 'h')	

			aboveWindows: false
			focusable: true

			RowLayout {

				anchors {

					fill: parent
					

				}

				Clock {
					Layout.fillHeight: true
					//implicitWidth: 60
					Layout.alignment: Qt.AlignRight
				}

			}	

		}

	}

}
