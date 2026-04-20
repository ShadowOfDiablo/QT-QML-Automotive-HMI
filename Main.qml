import QtQuick
import QtQuick.Controls 2.15
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Automotive HMI")

    ProgressBar{
        id:initialProgressBar
        width: 200
        value: 0
        height: 100
        from: 0
        to: 1000

        NumberAnimation on value {
            from: 0
            to: 1000
            duration: 10000 // takes duration ms to fill up
            running: true  // starts automatically
        }
    }
}
