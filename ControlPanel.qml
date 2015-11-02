import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1

ColumnLayout {
    Grid {
        id: setting_menu_grid_
        columns: 4
        spacing: 8
        Label { text: qsTr("Baudrate:");}
        ComboBox { id: combo_baud; model: ["9600", "19200", "56000"] }
        Label { text: qsTr("Parity:") }
        ComboBox { id: combo_parity; model: ["none", "odd", "even", "mark", "Space"] }
        Label { text: qsTr("Data bits:") }
        ComboBox { id: combo_databits; model: ["5", "6", "7", "8"] }
        Label { text: qsTr("Stop bits:") }
        ComboBox { id: combo_stopbits; model: ["1", "2"] }
    }
    RowLayout {
        Button {
            id: button_open
            text: qsTr("open")
            onClicked: {
                if (button_open.state == "open") button_open.state = ""
                else button_open.state = ""
            }
            states: [
                State {
                    name: "device_open"
                    PropertyChanges { target: button_open; text: "close";   }
                }
            ]
        }
        Label {
            text: qsTr("Device:")
        }
        ComboBox {
            id: combo_device
            model: ["/dev/ttyS0", "/dev/ttyUSB0", "/dev/ttyUSB1"]
        }
    }
}
