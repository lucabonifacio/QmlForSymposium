// Marker.qml

import QtQuick 2.0

// The Image type as top level is convenient as the Marker component
// simply is a graphical UI with a clicked() signal.
Image {
    id: root

    // declaring the clicked() signal to be used in the MarkerPanel
    signal clicked()

    // creating a MouseArea type to intercept the mouse click
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: root.clicked()
    }
}
