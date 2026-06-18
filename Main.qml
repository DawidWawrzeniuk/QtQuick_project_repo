 import QtQuick            // moduł podstawowy QML
 import QtQuick.Controls   // moduł kontrolek (Button, Slider itd.)

// Rectangle{
//         id:background
//         width: 300
//         height: 100
//         color: "lightblue"

//         Rectangle{
//                 color: "green"
//                 y:25                    //overwritten by the top anchor
//                 height: 50
//                 width: 50
//                 anchors.right: background.right //prawa strona rectangle przylega do prawej strony background
//                 anchors.top: background.top
//                 anchors.left: background.left
//         // anchors{
//         //         top: background.top
//         //         right: background.right
//         // }

//         }
// }



// Rectangle {
//     id: bg
//     width: 400; height: 200
//     color: "lightblue"

//     Image {
//         id: book
//          width: 100; height: 100
//         source:  "file:///C:/Users/dawi2/Documents/QtQuick_project_repo/pobrane/wallpaper.jpg"
//         anchors.left: bg.left
//         anchors.leftMargin: bg.width/16         //wciecie od lewej strony ma tyle wynosic
//         anchors.verticalCenter: bg.verticalCenter
//     }

//     Text {
//         text: "Writing"
//         font.pixelSize: 32
//         anchors.left: book.right
//         anchors.leftMargin: 32                  //wciecie z lewej strony
//         anchors.baseline: book.verticalCenter   //linia baseline czyli linia pod literami ma sie zgrywawc z vertical center
//     }
// }


// Rectangle{
//         //The parent element
//         width: 300
//         height: 100
//         color: "lightblue"

//         Rectangle{
//                 color: "green"
//                 y:25
//                 height: 50
//                 width: 50
//                 anchors.centerIn: parent

//         }
// }

Rectangle{
        //The parent element
        width: 300
        height: 100
        color: "lightblue"

        Rectangle{
                color: "green"
                anchors.fill:parent
                anchors.margins: 30

        }
}