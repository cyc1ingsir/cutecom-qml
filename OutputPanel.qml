import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1

ColumnLayout {
    id: output_view_
    width: parent.width
    Layout.fillHeight: true;
    TextArea {
            id: output_text_view_
            readOnly: true
            width: parent.width
            text: "output \n1 \n2 \n3 \n4 \n5 \n6 \n7"
    }
    RowLayout {
        id: output_controls_
        width: parent.width
        anchors.top: output_text_view_.bottom

        Button {
            id: mb_clear_out
            text: qsTr("Clear")
        }
        CheckBox {
            id: check_hex_out
            text: qsTr("Hex output")
        }
        CheckBox {
            id: check_log
            text: qsTr("log to:")
        }
        TextField {
            id: logfile_dest
            Layout.fillWidth: true
            text: "cutecom.log"
        }
        CheckBox {
            id: check_append
            text: qsTr("Append")
        }
        Button {
            id: btn_fileChooser
        }
    }
}
