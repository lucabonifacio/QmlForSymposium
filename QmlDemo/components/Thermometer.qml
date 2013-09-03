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

    property string sourcePath: "../images/thermometer_.svg"
    //property string sourcePath: "../images/Thermometer_green.svg"

    antialiasing: true

    //transformOrigin: Item.Bottom

    Image {
        id: shape
        source: sourcePath
        fillMode: Image.PreserveAspectCrop

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
        visible: false
    }

    Image {
        id: mask
        source: sourcePath
        fillMode: Image.PreserveAspectCrop
        //verticalAlignment: Image.AlignTop
        verticalAlignment: Image.AlignBottom
        //height: shape.height * ratio
        height: (shape.height - shape.height * ratio)
        sourceSize: Qt.size(shape.width, shape.height)
        visible: false
    }

    Rectangle {
        width: 20
        height: shape.height * ratio
        anchors.left: shape.right
        anchors.leftMargin: 50
        anchors.bottom: shape.bottom
        color: "green"
    }

    OpacityMask {
        anchors.fill: mask
        source: shape
        maskSource: mask
    }
}
