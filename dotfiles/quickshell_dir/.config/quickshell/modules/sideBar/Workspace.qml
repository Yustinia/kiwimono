import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts
import "../../global"

Item {
    id: workspaces

    implicitHeight: workspaceColumn.implicitHeight
    implicitWidth: parent.width

    Rectangle {
        anchors.centerIn: parent
        width: 40
        height: workspaceColumn.implicitHeight
        color: Colors.clrBgBright

        radius: 10
    }

    ColumnLayout {
        id: workspaceColumn
        anchors.fill: parent
        spacing: 4

        Repeater {
            model: 5

            Item {
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter
                height: 40

                // active ws
                Rectangle {
                    anchors.centerIn: parent
                    width: 30
                    height: 30
                    radius: 10
                    color: Colors.clrAccent
                    opacity: Hyprland.focusedWorkspace?.id === (index + 1) ? 1.0 : 0.0
                    scale: Hyprland.focusedWorkspace?.id === (index + 1) ? 1.0 : 0.5

                    Behavior on opacity {
                        NumberAnimation {
                            duration: 500
                            easing.type: Easing.OutCubic
                        }
                    }

                    Behavior on scale {
                        NumberAnimation {
                            duration: 500
                            easing.type: Easing.OutBack
                        }
                    }
                }

                // occupied outline
                Rectangle {
                    anchors.centerIn: parent
                    width: 30
                    height: 30
                    radius: 10
                    color: "transparent"
                    border.width: 2
                    border.color: Colors.clrOutline
                    visible: {
                        var ws = Hyprland.workspaces.values.find(w => w.id === index + 1);
                        return !!ws && Hyprland.focusedWorkspace?.id !== (index + 1);
                    }
                    scale: {
                        var ws = Hyprland.workspaces.values.find(w => w.id === index + 1);
                        return (!!ws && Hyprland.focusedWorkspace?.id !== (index + 1)) ? 1.0 : 0.5;
                    }

                    Behavior on scale {
                        NumberAnimation {
                            duration: 500
                            easing.type: Easing.OutBack
                        }
                    }
                }

                Text {
                    anchors.centerIn: parent
                    property var ws: Hyprland.workspaces.values.find(w => w.id === index + 1)
                    property bool isActive: Hyprland.focusedWorkspace?.id === (index + 1)
                    text: index + 1
                    color: isActive ? Colors.clrSurface : Colors.clrText
                    font {
                        pixelSize: Colors.fontSize
                        family: Colors.fontFamily
                        bold: true
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: Hyprland.dispatch("workspace " + (index + 1))
                    }
                }
            }
        }
    }
}
