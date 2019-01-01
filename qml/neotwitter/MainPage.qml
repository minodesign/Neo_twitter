import QtQuick 1.1
import com.nokia.meego 1.0

Page {
    width: 480
    height: 854
    tools:
            ToolBarLayout {
            id: commonTools
            x: 0
            y: 0

            ToolIcon { iconId: "icon-m-toolbar-back"; onClicked: pageStack.pop(); }
            ToolIcon { iconId: "icon-m-common-search-inverse"
                 onClicked: pageStack.push(searchPage)
            }
            ToolIcon { iconId: "icon-m-toolbar-alarm-white-selected"
                onClicked: pageStack.push(notificationPage)
            }
            ToolIcon { iconId: "icon-m-toolbar-new-chat-white-selected"
                onClicked: pageStack.push(messagesPage)
            }
            ToolIcon { iconId: "icon-m-toolbar-view-menu-white-selected";
                 onClicked:  (myMenu.status == DialogStatus.Closed)
                             ? myMenu.open()
                             : myMenu.close() }
            }

    Menu {
        id: myMenu
        // visualParent is needed to specify the grayed out area.
        visualParent: pageStack
        MenuLayout {
            MenuItem {text: "Account"; onClicked: { colorRect.color = "darkred" } }
            MenuItem {text: "Setting"; onClicked: { colorRect.color = "darkgreen" }}
            MenuItem {text: "About"; onClicked: { colorRect.color = "darkblue" }}
        }
    }


    Item {
        id: header
        x: 0
        y: 0
        width: 480
        height: 854

        Rectangle {
            id: rectangle1
            x: 0
            y: 0
            width: 480
            height: 72
            color: "#3aa1f2"
        }

        Text {
            id: testoheader
            x: 20
            y: 20
            width: 480
            height: 29
            color: "#ffffff"
            text: qsTr("Neo Twitter")
            anchors.verticalCenterOffset: 2
            anchors.left: parent.left
            anchors.leftMargin: 14
            anchors.verticalCenter: rectangle1.verticalCenter
            horizontalAlignment: Text.AlignLeft
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            font.family: "Nokia Pure Text Light"
            verticalAlignment: Rectangle.Center
            font.pixelSize: 32
        }
    }

    Flickable {
        id: flickable1

        Column {
            id: riga
            x: 19
            y: 91
            transformOrigin: Item.TopLeft
            anchors.horizontalCenter: rectangle2.horizontalCenter
            anchors.right: parent.right
            anchors.rightMargin: -169
            anchors.left: parent.left
            anchors.leftMargin: 19
            spacing: 20
            Rectangle {
                id: rectangle2
                width: 300
                height: 40
                color: "#cc2c2c"
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Rectangle {
                width: 50
                height: 40
                color: "#cc2c2c"
                anchors.left: parent.left
                anchors.leftMargin: 60
                anchors.verticalCenter: parent.verticalCenter
            }
        }

        Rectangle {
            x: 0
            y: 73
            width: 470; height: 669

            Rectangle {
                id: square
                x: 8; y: 8
                width: 40
                height: 40
                color: "#ad4f4f"
            }
            focus: true
            Keys.onLeftPressed: square.x -= 8
            Keys.onRightPressed: square.x += 8
            Keys.onUpPressed: square.y -= 8
            Keys.onDownPressed: square.y += 8
            Keys.onPressed: {
                switch(event.key) {
                    case Qt.Key_Plus:
                        square.scale += 0.2
                        break;
                    case Qt.Key_Minus:
                        square.scale -= 0.2
                        break;
                }

            }
        }


//        Image {
//            id: placeholderhome
//            width: 480
//            height: 1238
//            fillMode: Image.Stretch
//            source: "asset/images/home_placeholder.jpg"
//        }
    }

}
