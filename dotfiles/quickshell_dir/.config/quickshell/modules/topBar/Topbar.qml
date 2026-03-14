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
        top: 10
        left: 10
        right: 10
    }

    implicitHeight: 40
    color: "transparent"

    Rectangle {
        anchors.fill: parent
        radius: 10
        color: Colors.clrBg
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
