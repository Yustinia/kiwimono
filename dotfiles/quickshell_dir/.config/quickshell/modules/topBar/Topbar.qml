import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts
import "../../global"

PanelWindow {
    id: topBar

    anchors {
        top: true
        left: true
        right: true
    }

    margins {
        top: 5
        left: 5
        right: 5
    }

    implicitHeight: 40
    color: "transparent"

    Rectangle {
        anchors.fill: parent
        radius: 10
        color: Colors.clrBg
        border.width: 2
        border.color: Colors.clrTertiary
    }

    RowLayout {
        anchors.fill: parent
        anchors.leftMargin: 25

        Date {}

        Item {
            Layout.fillWidth: true
        }
    }
}
