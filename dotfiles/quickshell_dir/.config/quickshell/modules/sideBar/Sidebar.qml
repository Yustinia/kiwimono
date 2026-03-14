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

    implicitWidth: 50
    color: Colors.clrBg

    ColumnLayout {
        anchors.fill: parent

        Item {
            Layout.fillHeight: true
        }

        Workspace {}

        Item {
            Layout.fillHeight: true
        }

        Date {}
    }
}
