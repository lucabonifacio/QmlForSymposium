// MarkerPanel.qml

import QtQuick 2.0

Rectangle {
    id: root
    width: 50
    height: 300

    // column type that anchors to the entire parent
    Column {
        id: layout
        anchors.fill: parent
        spacing: 10

        Repeater {
            // just three Marker iterms
            model: 3
            delegate:
                Marker { id: marker }
        }
    }

}
