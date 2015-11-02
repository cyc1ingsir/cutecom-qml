import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1

ColumnLayout {
    id: input_view_
    width: parent.width

    TextArea {
        id: input_edit_
        Layout.minimumHeight: 100
        width: parent.width
        text: "input \n reset \n control"
    }

    RowLayout {
        width: parent.width
        Label {
            id: lb_input_
            text: qsTr("Input")
        }
        TextField {
            id: input_field_
            Layout.fillWidth: true
        }
    }

    RowLayout {
        Button {
            id: button_sendfile
            text: qsTr("Send file ...")
        }
        ComboBox {
            id: combo_protocoll
            model: [ "Plain", "XModem", "YModem"]
        }
        ComboBox {
            id: combo_line_end
            model: [ "LF line end", "CR line end", "CR,LF line end", "No line end", "Hex input"]
        }
        Label {
            text: qsTr("Char delay:")
        }

        SpinBox {
            id: char_delay
            prefix: "ms"
        }
    }
}
