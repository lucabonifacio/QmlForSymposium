// NoteApp.qml (main component)

import QtQuick 2.0

Rectangle {
    id: window
    width: 800
    height: 600

    // creating a MarkerPanel item
    MarkerPanel {
        id: markerPanel
        width: 50
        anchors {
            right: window.right
            top: window.top
            topMargin: 20
            bottom: window.bottom
        }
    }

    // the toolbar
    Rectangle {
        id: toolbar
        width: 50
        color: "#444a4b"

        anchors {
            left: window.left
            top: window.top
            bottom: window.bottom
            topMargin: 100
            bottomMargin: 100
        }

        Column {
            anchors {
                fill: parent
                topMargin: 30
            }
            spacing: 20

            Repeater {
                model: 2
                Rectangle {
                    width: 50
                    height: 50
                    color: "red"
                }
            }
        }
    }

    // creating a Page item
    Page {
        id: page1
        anchors {
            top: window.top
            bottom: window.bottom
            right: markerPanel.left
            left: toolbar.right
        }
    }
}

