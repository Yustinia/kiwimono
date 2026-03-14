import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts
import "../../global"

PanelWindow {
    id: sideBar

    anchors {
        top: true
        left: true
        bottom: true
    }

    margins {
        top: 5
        left: 5
        bottom: 5
    }

    implicitWidth: 50
    color: "transparent"

    Rectangle {
        anchors.fill: parent
        radius: 10
        color: Colors.clrBg
        border.width: 2
        border.color: Colors.clrTertiary
    }

    ColumnLayout {
        anchors.fill: parent

        Item {
            Layout.fillHeight: true
        }

        Workspace {}

        Item {
            Layout.fillHeight: true
        }
    }
}
