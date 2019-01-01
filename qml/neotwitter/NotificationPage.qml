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

    ButtonRow {
             x: 16
             y: 40
             Button { text: "Left" }
             Button { text: "Right" }
     }
     Text {
        id: text3
        x: 19
        y: 59
        width: 317
        height: 90
        text: qsTr("Happy birthday, @firefox and thanks.\nIn early 00s provided a valid alternative to the bad Internet Explorer!")
        wrapMode: Text.WordWrap
        font.pixelSize: 24
        font.family: "Nokia Pure Text"
        font.bold: false
    }

    }

