import Quickshell
import Quickshell.Wayland
import Quickshell.Io
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts
import "../../global"

Item {
    id: clockContainer
    implicitHeight: dateContainer.implicitHeight
    implicitWidth: dateContainer.implicitWidth

    SystemClock {
        id: clockObject
        precision: SystemClock.Minutes
    }

    Rectangle {
        anchors.centerIn: parent
        width: dateContainer.implicitWidth + 40
        height: 30
        radius: 10
        color: Colors.clrBgBright
    }

    RowLayout {
        id: dateContainer
        anchors.fill: parent

        Text {
            Layout.alignment: Qt.AlignHCenter
            text: Qt.formatDateTime(clockObject.date, "hh:mm AP")
            color: Colors.clrText
            font {
                pixelSize: Colors.fontSize
                family: Colors.fontFamily
                bold: true
            }
        }

        Text {
            Layout.alignment: Qt.AlignHCenter
            text: "·"
            color: Colors.clrText
            font {
                pixelSize: Colors.fontSize
                family: Colors.fontFamily
                bold: true
            }
        }

        Text {
            Layout.alignment: Qt.AlignHCenter
            text: Qt.formatDateTime(clockObject.date, "yyyy-MM-dd")
            color: Colors.clrText
            font {
                pixelSize: Colors.fontSize
                family: Colors.fontFamily
                bold: true
            }
        }
    }
}
