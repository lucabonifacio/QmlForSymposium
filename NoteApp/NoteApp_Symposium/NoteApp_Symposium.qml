// main.qml

import QtQuick 2.0

Rectangle {
    // using window as the identifier for this item as
    // it will the only window of the NoteApp
    id: window
    width: 800; height: 600

    BorderImage {
        id: background
        anchors.fill: parent
        anchors.margins: -5
        source: "images/background.png"
        border {
            left: 70
            top: 77
            right: 90
            bottom: 91
        }
    }

    // creating a MarkerPanel item
    MarkerPanel {
        id: markerPanel
        width: 120
        anchors {
            right: window.right
            top: window.top
            bottom: window.bottom
            topMargin: 30
        }
    }

    // the toolbar's background
    Rectangle {
        anchors.fill: toolbar
        color: "white"
        opacity: 0.15
        radius: 16
        border { color: "#600"; width: 4 }
    }

    // the toolbar -
    // using a Column type to layout the Tool items vertically
    Column {
        id: toolbar
        spacing: 16
        anchors {
            top: window.top
            left: window.left
            bottom: window.bottom;
            topMargin: 50
            bottomMargin: 50
            leftMargin: 8
        }

        //the `new note` tool, also known as the plus icon
        Tool {
            id: newNoteTool
            source: "images/add.png"
        }

        // the `clear` tool
        Tool {
            id: clearAllTool
            source: "images/clear.png"
        }
    }

    // creating a PagePanel item
    PagePanel {
        id: pagePanel
        state: markerPanel.activeMarker
        anchors {
            left: toolbar.right
            right: markerPanel.left
            top: parent.top
            bottom: parent.bottom
        }
    }

    // the quit tool on the righ bottom corner of NoteApp
    Tool {
        id: quitTool
        anchors {
            bottom: pagePanel.bottom
            right: parent.right
            bottomMargin: 24
            rightMargin: 28
        }
        source: "images/close.png"
        onClicked: Qt.quit()
    }
}
