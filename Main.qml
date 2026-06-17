import QtQuick

// Rectangle {
//     width: 400
//     height: 400
//     color: "blue"

//     Image {
//         x:150
//         y:150
//         source: "file:///C:/Users/dawi2/Documents/QtQuick_project_repo/pobrane/rocket.jpg"
//         width: sourceSize.width*2           //wielkość domyślna obrazka
//         height: sourceSize.height*2         //wielkość domyślna obrazka
//         Component.onCompleted: console.log(width, height, sourceSize)   //sygnał wywoływany automatycznie, gdy dany element QML zostanie w pełni utworzony i zainicjalizowany
//     }
// }

Image{
    id:image
    width: 1000
    height: 1000
    source:  "file:///C:/Users/dawi2/Documents/QtQuick_project_repo/pobrane/wallpaper.jpg"
    fillMode: Image.PreserveAspectFit       //dopasuj obraz do ramki zachowując proporcje
    Rectangle{
        color: "red"
        x:0;y:950;
        height: 50
        width: 1000 * image.progress        //szerokosc razy stan ładowania pliku
        visible: image.progress != 1        //pokazuj jak sie ładuje
    }
onStatusChanged: console.log(sourceSize)
}

// Rectangle {
//     id:root
//     width: 400
//     height: 400
//     color: "grey"


//     Rectangle {
//         color: "lightblue"
//         x: 50
//         y: 50
//         width: root.width-100
//         height: root.height-250


//         Rectangle {
//             color: "white"
//             x: 50
//             y: 50
//             width: 50
//             height: 50
//         }

//      }
//     Rectangle {
//         color: "green"
//         x: 50
//         y: 200
//         width: 300
//         height: 150
//         clip: true


//         Rectangle {
//             color: "blue"
//             x: -50
//             y: 50
//             width: 150
//             height: 50

//          }
//      }
//  }


















// Item {
//     width: 400
//     height: 200

//     Text {
//         text: "Hello World"
//     }

//     TextInput{
//        id: textElement
//        x: 50; y: 25
//        text: "Qt Quick"
//        font.family: "Helvetica"
//        font.pixelSize: 50
//     }

//     Rectangle {
//         x: 400
//         y: 50
//         height: 100
//         width: foo()
//         color: "lightblue"

//         function foo()
//         {
//             console.log("hello world", height)
//             return height * 2
//         }
//     }
//     Rectangle {
//         x: 100
//         y: 220
//         z: 1
//         height: textElement.width
//         width: foo()
//         color: "green"


//         function foo()
//         {
//             console.log("hello world", height)
//             return height * 2
//         }
//     }

// }
