import QtQuick 1.1
import com.nokia.meego 1.0

PageStackWindow {
    id: appWindow

    initialPage: mainPage

    MainPage {
        id: mainPage
    }

    SearchPage{
        id: searchPage
    }

    NotificationPage{
        id: notificationPage
    }

    MessagesPage{
        id: messagesPage
    }

     NewTweetPage{
        id: newTweetPage
    }

}
