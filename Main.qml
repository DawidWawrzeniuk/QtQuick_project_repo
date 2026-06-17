import QtQuick

Rectangle {
    width: 400
    height: 400
    color: "blue"

    Image {
        x:150
        y:150
        source: "file:///C:/Users/dawi2/Documents/QtQuick_project_repo/pobrane/rocket.jpg"
        width: sourceSize.width*2           //wielkość domyślna obrazka
        height: sourceSize.height*2         //wielkość domyślna obrazka
        Component.onCompleted: console.log(width, height, sourceSize)   //sygnał wywoływany automatycznie, gdy dany element QML zostanie w pełni utworzony i zainicjalizowany
    }
}


//dfsfadsdfsdfasdfasdfasdfdsadsfsadfasdfd