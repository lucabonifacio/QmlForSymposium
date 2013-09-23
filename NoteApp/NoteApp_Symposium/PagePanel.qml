import QtQuick 2.0

Item {
    id: root

    // this property holds the current visible page
//    property Page currentPage: personalpage

    // setting an initial value for the state property
    state: "personal"

    // creating the list of states
    states: [
        //creating a State item with its corresponding name
        State {
            name: "personal"
            PropertyChanges {
                target: personalPage
                opacity: 1.0
                restoreEntryValues: true
            }
        },
        State {
            name: "fun"
            PropertyChanges {
                target: funPage
                opacity: 1.0
                restoreEntryValues: true
            }
        },
        State {
            name: "work"
            PropertyChanges {
                target: workPage
                opacity: 1.0
                restoreEntryValues: true
            }
        }
    ]

    BorderImage {
        id: background
        anchors.fill: parent
        source: "images/page.png"
        border {
            left: 68
            top: 69
            right: 40
            bottom: 80
        }
    }

    // creating three Page items that are anchored to fill the parent.
    Page { id: personalPage; anchors.fill: parent }
    Page { id: funPage; anchors.fill: parent }
    Page { id: workPage; anchors.fill: parent }
}
