import QtQuick 2.0

Item {
    id: slider
    width: 100
    height: 12      // Do not change this property

    antialiasing: true

    property real from: 0
    property real to: 100
    property real value: from + (to - from) * ((knob.x + knob.width / 2) / border.width)

    Rectangle {
        id: border
        width: parent.width
        height: parent.height
        radius: 6
        border.width: 2
        gradient: Gradient {
            GradientStop { position: 0.0; color: "black" }
            GradientStop { position: 0.5; color: "white" }
            GradientStop { position: 1.0; color: "black" }
        }
    }

    Rectangle {
        id: knob
        width: 20
        height: 20
        radius: 8
        anchors.verticalCenter: parent.verticalCenter
        border.width: 2
        color: "steelblue"

        MouseArea {
            anchors.fill: knob
            drag.target: knob
            drag.axis: Drag.XAxis
            drag.minimumX: 0 - knob.width / 2
            drag.maximumX: border.width - knob.width / 2
        }
    }
}
