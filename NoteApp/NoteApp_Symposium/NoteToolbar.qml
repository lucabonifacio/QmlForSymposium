import QtQuick 2.0

Item {
    id: root
    width: 100
    height: 62

    //declaring a property alias to the drag property of MouseArea type
    property alias drag: mouseArea.drag

    BorderImage {
        source: "images/notetoolbar.png"
        anchors.fill: parent
        border {
            left: 10
            top: 10
            right: 10
            bottom: 10
        }
    }

    MouseArea {
        id: mouseArea
        anchors.fill: root
    }
}
