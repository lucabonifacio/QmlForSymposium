import QtQuick 2.0

Item {

    Rectangle {
        id: background
        anchors.fill: parent
        gradient: Gradient {
            GradientStop { position: 0; color: "#909090" }
            GradientStop { position: 1.0; color: "#404040" }
        }

        Image {
            source: "../images/stripes.png"
            fillMode: Image.Tile
            anchors.fill: parent
            opacity: 0.1
        }
    }
}


