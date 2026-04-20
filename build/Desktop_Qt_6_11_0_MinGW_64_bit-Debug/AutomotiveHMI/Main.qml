import QtQuick
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Automotive HMI")

    Image{
        id: emptyFuelGauge
        source:images/fuelIconOff.png
        x: horizontalCenter
        y: verticalCenter

        Item {
            id: fillMask
            width: 0
            clip: true
            Image{
                source: images/fuelIconOn.png
            }
        }


        NumberAnimation on width {
            from: 0
            to: emptyFuelGauge.width
            duration: 5000
            running: true
        }
    }
}
