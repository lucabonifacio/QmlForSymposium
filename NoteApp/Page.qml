// Page.qml

import QtQuick 2.0

Rectangle {
    id: root
    width: 600
    height: 400
    color: "#222525"

    // creating a Note item
    Note {
        id: note1
        x: 105; y: 144
    }

    Note {
        id: note2
        x: 344; y: 83
    }
}
