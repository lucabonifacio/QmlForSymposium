import QtQuick 2.0
import QtGraphicalEffects 1.0
import "components" as Components

Rectangle {
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
        text: "Animated Thermometer"
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

    // Thermometer
    Components.Thermometer {
        id: thermometer
        scale: 0.5
        anchors.top: titleLine.bottom
        anchors.topMargin: 50
        anchors.left: parent.left
        anchors.leftMargin: 20

        temperature: slider.value
    }

    // Slider to emulate the temperature
    Components.Slider {
        id: slider
        width: 100
        anchors.left: thermometer.right
        anchors.leftMargin: 150
        anchors.bottom: thermometer.bottom

        from: thermometer.minTemperature
        to: thermometer.maxTemperature
    }



}

