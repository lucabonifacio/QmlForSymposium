import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
    id: thermometer

    property string bottomColor: "blue"
    property string topColor: "red"
    property real minTemperature: -10
    property real maxTemperature: 40
    property real temperature: 20

    property real ratio: (temperature - minTemperature) / (maxTemperature - minTemperature)

    antialiasing: true

    Image {
        id: shape
        source: "../images/thermometer_.svg"

        LinearGradient {
            anchors.fill: parent
            source: shape
            start: Qt.point(0, parent.height)
            end: Qt.point(0, 0)
            gradient: Gradient {
                GradientStop { position: 0.0; color: bottomColor }
                GradientStop { position: 1.0; color: topColor }
            }
        }
    }

    Image {
        id: mask
        source: "../images/thermometer_.svg"
        fillMode: Image.PreserveAspectCrop
        verticalAlignment: Image.AlignTop
        height: shape.height * ratio//250
        sourceSize: Qt.size(shape.width, shape.height)
        visible: true
    }

    /*OpacityMask {
        anchors.fill: shape
        source: shape
        maskSource: mask
    }*/
}
