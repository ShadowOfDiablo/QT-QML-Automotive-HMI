import QtQuick
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Automotive HMI")

    Rectangle {
        id:initialProgressBar
        width: 0
        height: 50
        radius: 15
        color: "red"
        smooth: true

        SequentialAnimation on width{
            running: true
            loops: Animation.Infinite
            NumberAnimation
            {
                from: 0
                to: 300
                duration: 10000
            }
            NumberAnimation
            {
                from: 300
                to: 0
                duration: 10000
            }
        }
    }
}
