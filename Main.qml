import QtQuick
import QtQuick.Controls
// Rectangle {
//     width: 400
//     height: 400
//     color: "lightblue"

//     Button {
//         text: "Kliknij mnie"
//         anchors.centerIn: parent
//         onClicked: console.log("Kliknięto przycisk!")
//     }

//     Rectangle{
//         x:50; y:50; width:200; height: 300
//         color: "White"
//         opacity:0.5

//         Rectangle{
//             x:100;y:25; width:200; height: 50
//             color: "red"
//             opacity:0.5
//         }
//         Rectangle{
//             x:100;y:90; width: 200; height: 50
//             color: "red"

//         }
//     }
//     Rectangle{
//         x:150;y:210; width: 200; height: 50
//         color: "red"
//         opacity:0.5
//     }
//     Rectangle{
//         x:150;y:275; width: 200; height: 50
//         color: "red"

//     }
// }

Rectangle {
    width: 400
    height: 400
    color: "lightblue"

Rectangle{
    color: "red"
    width: iim.width+10
    height: iim.height+10
    x: 150
    y: 150

    Image{
        id: iim
        source: "file:///C:/Users/dawi2/Documents/QtQuick_project_repo/pobrane/rocket.jpg"
        rotation: 45.0
        transformOrigin: Item.Left       //przesuniecie do lewej strony
    }
}
}











