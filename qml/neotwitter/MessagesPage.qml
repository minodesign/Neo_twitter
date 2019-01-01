import QtQuick 1.1
import com.nokia.meego 1.0


Page {
    tools:
            ToolBarLayout {
            id: otherTools
            x: 0
            y: 0

            ToolIcon { iconId: "icon-m-toolbar-back"; onClicked: pageStack.pop(); }
            }

    Item {
        id: tweet2
        x: 0
        y: 679
        width: 480
        height: 164
        Image {
            width: 130
            height: 100
            smooth: true
            source: "asset/images/P6Cxt35h_bigger.jpg"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: text7
            x: 128
            y: 5
            text: qsTr("Pagina map!")
            font.pixelSize: 24
            font.bold: true
            font.family: "Nokia Pure Text"
        }

        Text {
            id: text8
            x: 233
            y: 5
            text: qsTr("@creapills")
            font.pixelSize: 24
            font.family: "Nokia Pure Text"
            font.bold: false
        }

    }



}
