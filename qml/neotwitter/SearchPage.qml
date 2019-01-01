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

}
