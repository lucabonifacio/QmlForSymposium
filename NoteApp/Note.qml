// Note.qml

import QtQuick 2.0

Rectangle {
    id: root
    width: 200
    height: 200
    color: "#cabf1b"

    NoteToolbar {
        id: toolbar
        height: 40

        anchors {
            top: root.top
            left: root.left
            right: root.right
        }
    }

    TextEdit {
        anchors {
            top: toolbar.bottom
            bottom: root.bottom
            right: root.right
            left: root.left
        }
        wrapMode: TextEdit.WrapAnywhere
    }
}
