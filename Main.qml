import QtQuick 2.15

Item {
    width: 400
    height: 200

    Text {
        text: "Hello World"
    }

    Rectangle {
        x: 100
        y: 50
        height: 100
        width: height * 2
        color: "lightblue"
    }
}
