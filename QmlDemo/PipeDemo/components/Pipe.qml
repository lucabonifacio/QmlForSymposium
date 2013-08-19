import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
    id: pipe

    property string fillColor: "black"
    property real opacityFactor: 0.3

    antialiasing: true

    Image {
        id: pipeShape
        source: "../pipes/pipe1.svg"

        /*LinearGradient {
            anchors.fill: parent
            source: pipeShape
            start: Qt.point(0, 0)
            end: Qt.point(0, parent.height)
            gradient: Gradient {
                GradientStop { position: 0.0; color: bottomColor }
                GradientStop { position: 1.0; color: topColor }
            }
        }*/

        ColorOverlay {
            anchors.fill: parent
            source: pipeShape
            opacity: opacityFactor
            color: fillColor
            cached: false
        }
    }
}
