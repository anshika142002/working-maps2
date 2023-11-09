import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQml 2.12
//
import QtWebEngine 1.15

Rectangle{
    width: 1024
    height: 600
    visible: true

    signal successfulLogin()
    property bool isPasswordCorrect: false


      WebEngineView{
          id: mapLoading
          anchors.fill: parent
          url: "qrc:/mapbuild1.html";
          webChannel: channel
      }

    Image {
        id: backgroundImage
        //source:  isPasswordCorrect  ? "qrc:/satellite2.jpg" : "qrc:/satellite.jpg"
        //
        source: isPasswordCorrect  ?  "qrc:/satelltile2.jpg" : "qrc:/mapbuild1.html"
        width: 1024
        height: 600
        anchors.centerIn: parent

        Rectangle {
            z: 1
            width: 250
            height: parent.height
            color: "lightblue"
            opacity: 0.5
            anchors.left: parent.left
        }

        Column {
            anchors.left: parent.left
            x: 300
            y: 200
            spacing: 20
            z: 3

            Row {
                spacing: 10

                TextField{
                    width:200
                    height:30
                    placeholderText: "enter timezone"

                    ScrollView{
                        width: 200
                        height: 30

                        Flickable{
                            width: 200
                            height: 30
                            contentWidth: comboPopup.width
                            contentHeight: comboPopup.height

                            ComboBox {
                                    id: comboPopup
                                    width: 200
                                    height: 30
                                    currentIndex: -1

                                    model: ListModel {
                                        ListElement { text: "Username1" }
                                        ListElement { text: "Username2" }
                                        ListElement { text: "Username3" }
                                        ListElement { text: "Username4" }
                                        ListElement { text: "Username5" }
                                        ListElement { text: "Username6" }
                                        ListElement { text: "Username7" }
                                    }
                                    delegate: Item {
                                        width: parent.width
                                        height: 30

                                        Rectangle {
                                            width: parent.width
                                            height: parent.height
                                            color: comboPopup.highlightedIndex === index ? "#dddddd" : "#ffffff"
                                            border.color: "#cccccc"

                                            Text {
                                                anchors.centerIn: parent
                                                text: model.text
                                            }

                                            MouseArea {
                                                anchors.fill: parent
                                                onClicked: {
                                                    comboPopup.currentIndex = index
                                                    comboPopup.close()
                                                }
                                            }
                                        }
                                    }
                                        onCurrentIndexChanged: {
                                        if (currentIndex >= 0) {
                                            timeZoneInput.text = model.get(currentIndex).text;
                                        }
                                    }
                                }

                             }
                        ScrollBar.vertical: ScrollBar {}




                    }

                }

            }

            TextField {
                id: passwordField
                width: 200
                placeholderText: "Password"
                echoMode: TextInput.Password
                font.pixelSize: 20
            }

            Button {
                width: 100
                height: 40
                text: "Sign Up"
                font.pixelSize: 16
                onClicked: {
                    if (passwordField.text === "abc") {
                        isPasswordCorrect = true;
                        rectangleLoader.sourceComponent = rectangleComponent
                        rectangleLoader.active = true
                    } else {
                        errorMessage.text = "Password is incorrect"
                    }
                }
            }
            Loader {
                id: rectangleLoader
                active: false
                sourceComponent: null
            }

            Component {
                id: rectangleComponent
                Rectangle {
                    z: 1
                    width: parent.width
                    height: 40
                    color: "lightgreen"
                    opacity: 0.5
                }
            }

            Text {
                id: errorMessage
                color: "red"
                font.pixelSize: 16
            }
        }

        Rectangle {
            x: 200
            y: 400
            height: 200
            width: 200
            color: "lightgreen"
            anchors.right: parent.right
        }
    }
}




