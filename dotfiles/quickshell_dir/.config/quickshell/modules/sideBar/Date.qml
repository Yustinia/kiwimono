import Quickshell.Io
import QtQuick
import QtQuick.Layouts
import "../../global"

Item {
    implicitHeight: date.implicitHeight
    implicitWidth: parent.width

    property int timeFontSize: Colors.fontSize + 10

    ColumnLayout {
        id: date
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
            bottomMargin: 30
        }

        spacing: 0

        Item {
            Layout.fillWidth: true
            height: 60

            Text {
                id: hours
                anchors.centerIn: parent
                rotation: 0
                color: Colors.clrText
                font {
                    pixelSize: timeFontSize
                    family: Colors.fontFamily
                    bold: true
                }

                Process {
                    id: hourProc
                    command: ["date", "+%I"]
                    running: true

                    stdout: StdioCollector {
                        onStreamFinished: hours.text = this.text.trim()
                    }
                }

                Timer {
                    interval: 1000
                    running: true
                    repeat: true
                    onTriggered: hourProc.running = true
                }
            }
        }

        Item {
            Layout.fillWidth: true

            Text {
                id: minute
                anchors.centerIn: parent
                rotation: 0
                color: Colors.clrText
                font {
                    pixelSize: timeFontSize
                    family: Colors.fontFamily
                    bold: true
                }

                Process {
                    id: minProc
                    command: ["date", "+%M"]
                    running: true

                    stdout: StdioCollector {
                        onStreamFinished: minute.text = this.text.trim()
                    }
                }

                Timer {
                    interval: 1000
                    running: true
                    repeat: true
                    onTriggered: minProc.running = true
                }
            }
        }
    }
}
