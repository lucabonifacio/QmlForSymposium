// MarkerPanel.qml

import QtQuick 2.0

Item {
    id: root
    width: 150
    height: 450

    // a property of type string to hold the value of the current active marker
    property string activeMarker: "personal"

    // a list for holding respective data for a Marker item.
    property variant markerData: [
        {img: "images/personalmarker.png", markerid: "personal"},
        {img: "images/funmarker.png", markerid: "fun"},
        {img: "images/workmarker.png", markerid: "work"}
    ]

    Column {
        id: layout
        anchors.fill: parent
        spacing: 5

        Repeater {
            // using the defined list as our model
            model: markerData
            delegate: Marker {
                id: marker

                source: modelData.img

                // handling the clicked signal of the Marker item, setting the currentMarker property
                // of MarkerPanel based on the clicked Marker
                onClicked: {
                    root.activeMarker = modelData.markerid
                }
            }
        }
    }
}
