// Page.qml

import QtQuick 2.0

Item {
    id: root
    width: 600
    height: 400

    // by default a page should not be visible,
    // page's visibility is mananged by the PagePanel
    // the opacity property is sufficient
    opacity: 0.0

    Note {
        id: note1
        x: 102
        y: 59
    }

    Note {
        id: note2
        x: 324
        y: 146
    }
}
