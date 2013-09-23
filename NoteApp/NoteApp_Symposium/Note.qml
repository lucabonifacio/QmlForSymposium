import QtQuick 2.0

Item {
    id: root
    width: 200
    height: 200

    BorderImage {
        id: noteImage
        anchors.fill: parent
        source: "./images/personal_note.png"
        border {
            left: 20
            top: 20
            right: 20
            bottom: 20
        }
    }

    // creating a NoteToolbar item that will be anchored to its parent
    NoteToolbar {
        id: toolbar
        height: 40
        anchors {
            top: root.top
            left: root.left
            right: root.right
        }

        // using the drag property alias to set the drag.target to our Note item.
        drag.target: root
    }

    TextEdit {
        anchors {
            top: toolbar.bottom
            left: root.left
            right: root.right

        }
        wrapMode: TextEdit.WrapAnywhere

    }
}
