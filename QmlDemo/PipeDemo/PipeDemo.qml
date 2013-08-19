import QtQuick 2.0
import "components" as Components

Item {
    width: 640
    height: 480

    // Background
    Components.Background {
        id: background
        anchors.fill: parent
    }

    // Application title + underline
    Text {
        id: title
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 20

        font.pixelSize: 28
        text: "Pipe Demo"
    }
    Rectangle {
        id: titleLine
        width: 630
        height: 2
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: title.bottom
        anchors.topMargin: 10
        color: "#000000"
    }

    // Drop area
    DropArea {
        id: dropArea
        width: 600
        height: 400
        anchors.bottom: parent.bottom
        anchors.right: parent.right

        Rectangle {
            anchors.fill: parent
            color: "green"

//            visible: parent.containsDrag
        }
    }

    // Single pipe element - drag
    Components.Pipe {
        id: pipe
        scale: 0.2
        anchors.top: titleLine.bottom
        anchors.topMargin: 50
        anchors.left: parent.left
        anchors.leftMargin: 20

        Drag.active: dragArea.drag.active
//        Drag.hotSpot.x: 10
//        Drag.hotSpot.y: 10

        MouseArea {
            id: dragArea
            anchors.fill: parent
            onClicked: {
                console.log("dragArea width = "+ dragArea.width)
            }

            drag.target: parent
        }
    }


}

