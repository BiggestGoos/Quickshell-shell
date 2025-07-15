import Quickshell
import Quickshell.Wayland
import QtQuick
import QtQuick.Layouts

import "root:/utils"

import "components"

Scope {

	id: root

	Variants {

		model: Quickshell.screens

		PanelWindow {
			id: bar

			property var modelData
			screen: modelData

			anchors {
				top: true
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

				Tray {
					Layout.fillHeight: true
					Layout.alignment: Qt.AlightLeft
				}

				Clock {
					Layout.fillHeight: true
					Layout.alignment: Qt.AlignRight
				}	

			}	

		}

	}

}
