import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        Item {
            width: page.width
            height: page.height

            Image {
                anchors.fill: parent
                source: "images/wallpaperX.jpg"
                fillMode: Image.PreserveAspectCrop
            }

            Menu {
                id: menu
                anchors.fill: parent
                onGameStarted: parent.state = "gameplay"
            }

            Gameplay {
                id: gameplay
                anchors.fill: parent
                onGameStopped: parent.state = "menu"
            }

            states: [
                State {
                    name: "menu"
                    PropertyChanges {target: menu; visible: true}
                    PropertyChanges {target: gameplay; visible: false}
                },
                State {
                    name: "gameplay"
                    PropertyChanges {target: menu; visible: false}
                    PropertyChanges {target: gameplay; visible: true}
                }
            ]

            state: "menu"
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height
    }
}
