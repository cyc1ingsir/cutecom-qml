import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1

ApplicationWindow {
    id: main_window_
    visible: true
    width: 640
    height: 480
    title: qsTr("CuteCom 5 Mockup")
    property bool settings_shown: false

    menuBar: MenuBar {
        id: menu_bar_
        Menu {
            title: qsTr("Sessions")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: console.log("Open action triggered");
            }
            MenuItem {
                text: qsTr("&Save")
                onTriggered: console.log("Save settings to current session");
            }
            MenuItem {
                text: qsTr("Save as")
                onTriggered: console.log("Save settings to a new session");
            }
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }

    Rectangle {
        id: slider_view_
        y: -75
        width: parent.width;
        height: 105
        color: "#E0E0E0";
        z: 1;
        Rectangle {
            id: menu_button_
            color: "#C0C0C0";
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            width: 20
            height: 20
            Text { anchors.centerIn: parent; font.pixelSize: 22; text: "^" }
            MouseArea { id: ma_; anchors.fill: parent; onClicked: main_window_.onMenu(); }
        }

        ControlPanel {}

        states: [
            State {
                name: "open"
                PropertyChanges { target: slider_view_; y: 0 }
            }
        ]
        transitions: Transition {
            NumberAnimation { property: "y"; duration: 200; easing.type: Easing.InOutQuad; }

        }
    }


    SplitView{
        id: split_view_
        anchors.topMargin: 30
        anchors.fill: parent
        orientation: Qt.Vertical
        OutputPanel{}
        InputPanel {}

    }

    function onMenu() {
        if(slider_view_.state == "open")
            slider_view_.state = "";
        else
            slider_view_.state = "open";
    }

}
