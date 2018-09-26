/**
 * Button.qml - A part of the implementation of the RoShamBo
 * (Rock-Paper-Scissors game) with QtQuick technology
 *
 * This code is verified to be working with Qt 5.5
 *
 * Copyright (c) 2016, Alexander Borodin, aborod@petrsu.ru
 *
 * This code is licensed under MIT-style license
 */

import QtQuick 2.0

Item {
    width: 400
    height: 100

    property alias text: text.text
    signal clicked

    Rectangle {
        id: r
        anchors.fill: parent
        color: "white"
        opacity: 0.2
        radius: 10
    }

    Text {
        id: text
        text: "Button"
        anchors.centerIn: parent
        font.bold: true
        font.pointSize: 30
        color: "white"
    }

    MouseArea {
        anchors.fill: parent
        onPressed: r.color = "gray"
        onReleased: r.color = "white"
        onClicked: parent.clicked()
    }
}









