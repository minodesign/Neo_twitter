import QtQuick 1.1
import com.nokia.meego 1.0

Page {
    id: page1
    width: 480
    height: 854
        tools: ToolBarLayout {
                   ToolIcon {
                       iconId: "icon-m-toolbar-back-dimmed"; onClicked: pageStack.pop()
                   }
                   ToolIcon {
                       iconId: "icon-m-toolbar-search"; onClicked: pageStack.push(searchPage)
                   }
                   ToolIcon {
                       iconId: "icon-campanella"
                       onClicked: pageStack.push(notificationPage)
                            Image {
                               id: iconaCampanella
                               width: 40
                               height: 40
                               anchors.horizontalCenter: parent.horizontalCenter
                               anchors.verticalCenter: parent.verticalCenter
                               fillMode: Image.PreserveAspectFit
                               source: "asset/images/icon-campanella.png"
                               }
                   }
                   ToolIcon {
                       iconId: "icon-m-toolbar-new-chat"
                       onClicked: pageStack.push(newTweetPage)
                   }
                   ToolIcon {
                       iconId: "icon-m-toolbar-view-menu"
                       onClicked:  (myMenu.status == DialogStatus.Closed)
                                               ? myMenu.open()
                                               : myMenu.close() }
                   }

    Menu {
        id: myMenu
        // visualParent is needed to specify the grayed out area.
        visualParent: pageStack
        MenuLayout {
            MenuItem {text: "Account"; onClicked: { onClicked: pageStack.push(searchPage) } }
            MenuItem {text: "Setting"; onClicked: { colorRect.color = "darkgreen" }}
            MenuItem {text: "About"; onClicked: { colorRect.color = "darkblue" }}
        }
    }

    Item {
        id: header
        x: 0
        y: 0
        z: 20
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
            text: qsTr("Neo_twitter")
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
        width: parent.width
        height: parent.height
        contentHeight: 1238
        contentWidth: 480
        z: 10
        Image {
            id: placeholderhome
            width: 480
            height: 1238
            fillMode: Image.Stretch
            source: "asset/images/home_placeholder.jpg"
        }
    }

    Rectangle{
         id: tweetbutton
         x: 0; y: 0
         z: 50
         width: 90; height: 90
         color: "#3aa1f2"
         border.color: "lightsteelblue"
         border.width: 0
         radius: 45
         anchors.bottom: parent.bottom
         anchors.bottomMargin: 128
         anchors.right: parent.right
         anchors.rightMargin: 18
         Image {
             width: 45
             height: 45
             smooth: true
             sourceSize.height: 80
             sourceSize.width: 80
             fillMode: Image.Stretch
             anchors.horizontalCenter: parent.horizontalCenter
             anchors.verticalCenter: parent.verticalCenter
             source: "asset/images/icon-newtweet.svg"

            }

         MouseArea {
             id: tweetbuttonarea
             width: parent.width
             height: parent.height
             hoverEnabled: false
                 onPressed: {
                     // increase the x-position on click
                     parent.rotation = 8
                     parent.scale = 0.9
                 }
                onReleased: {
                    parent.rotation = 0
                    parent.scale = 1
                }
         }
    }
}
