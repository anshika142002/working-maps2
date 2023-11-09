//import QtQuick 2.15
//import QtQuick.Controls 2.15
//import QtQuick.Layouts 1.15


//ApplicationWindow {
//    visible: true
//    width: 400
//    height: 200
//    title: "Timezone Clock"
//    color: "black"

//    property string lastTime: ""

//    ColumnLayout {

//        TextField {
//            id: timeZoneInput
//            placeholderText: "Enter Timezone (e.g., Europe/Berlin)"
//            Layout.fillWidth: true
//        }

//        Text {
//            id: currentTimeText
//            color: "red"
//            text: "Current Time: "
//        }
//    }

//    Timer {
//        id: timeFetcher
//        interval: 1000 // Update time every 1 second
//        running: true
//        repeat: true
//        onTriggered: {
//            if (timeZoneInput.text !== "") {
//                fetchTimeForTimezone()
//            }
//        }
//    }

//    function fetchTimeForTimezone() {
//        var timezone = timeZoneInput.text
//        var url = "http://worldtimeapi.org/api/timezone/" + timezone
//        var request = new XMLHttpRequest()
//        request.open("GET", url)
//        request.onreadystatechange = function() {
//            if (request.readyState === XMLHttpRequest.DONE) {
//                if (request.status === 200) {
//                    var response = JSON.parse(request.responseText);
//                    var isoTimeString = response.utc_datetime;
//                    if (isoTimeString !== lastTime) {
//                        currentTimeText.text = "Current Time: " + Qt.formatDateTime(new Date(isoTimeString), "yyyy-MM-dd hh:mm:ss");
//                        lastTime = isoTimeString;
//                    }
//                } else {
//                    currentTimeText.text = "Error fetching time";
//                }
//            }
//        }
//        request.send()

//    }
//}


//Asia/Jerusalem
//Asia/Kabul
//Asia/Kamchatka
//Asia/Karachi
//Asia/Kathmandu
//Asia/Khandyga
//Asia/Kolkata
//Asia/Krasnoyarsk
//Asia/Kuching
//Asia/Macau
//Asia/Magadan
//Asia/Makassar
//import QtQuick 2.15
//import QtQuick.Controls 2.15
//import QtQuick.Layouts 1.15

//ApplicationWindow {
//    visible: true
//    width: 1024
//    height: 600
//    title: "Timezone Clock"
//    color: "black"

//    property string lastTime: ""
//    property alias selectedTimezone: timeZoneInput.currentText

//    ColumnLayout {
//        spacing: 20

//        Flickable{
//            width: 200
//            height: 200
//            contentWidth: comboPopup
//            contentHeight: comboPopup.Height
//        }

//        ComboBox {
//            id: timeZoneInput
//            //Layout.fillWidth: true
//            width: 200
//            height: 100
//            model: [ "Europe/Berlin", "America/New_York", "Asia/Tokyo", "Australia/Sydney", "Asia/Kolkata"] // Add more timezones as needed
//             ScrollBar.vertical: ScrollBar{
//                 policy: ScrollBar.AlwaysOn
//                 size: flickable/height
//             }

//        }
//        Text {
//            id: currentTimeText
//            color: "red"
//            text: "Current Time: "
//        }
//    }

//    Timer {
//        id: timeFetcher
//        interval: 1000 // Update time every 1 second
//        running: true
//        repeat: true
//        onTriggered: {
//            if (timeZoneInput.currentText !== "") {
//                fetchTimeForTimezone()
//            }
//        }
//    }

//    function fetchTimeForTimezone() {
//        var timezone = timeZoneInput.currentText
//        var url = "http://worldtimeapi.org/api/timezone/" + timezone
//        var request = new XMLHttpRequest()
//        request.open("GET", url)
//        request.onreadystatechange = function() {
//            if (request.readyState === XMLHttpRequest.DONE) {
//                if (request.status === 200) {
//                    var response = JSON.parse(request.responseText);
//                    var isoTimeString = response.utc_datetime;
//                    if (isoTimeString !== lastTime) {
//                        currentTimeText.text = "Current Time: " + Qt.formatDateTime(new Date(isoTimeString), "yyyy-MM-dd hh:mm:ss");
//                        lastTime = isoTimeString;
//                    }
//                } else {
//                    currentTimeText.text = "Error fetching time";
//                }
//            }
//        }
//        request.send()

//    }


//    Loader {
//        id: loginqmlLoader
//        anchors.fill: parent
//    }
//    Button {
//        anchors.centerIn: parent
//        // anchors.centerIn: parent
//        width: 150
//        height: 40
//        text: "proceed to sign in"
//        font.pixelSize: 16
//        onClicked: {
//            loginqmlLoader.source = "login.qml";
//        }
//    }

//}


//import QtQuick 2.15
//import QtQuick.Controls 2.15
//import QtQuick.Layouts 1.15

//ApplicationWindow {
//    visible: true
//    width: 1024
//    height: 600
//    title: "Timezone Clock"
//    color: "black"

//    property string lastTime: ""
//    property alias selectedTimezone: timeZoneInput.currentText

//    ColumnLayout {
//        spacing: 20

//        Flickable{
//            width: 200
//            height: 200

//            ComboBox {
//                id: timeZoneInput
//                //id: comboPopup
//                width: 200
//                height: 30
//                currentIndex: -1

//                model: [ "Europe/Berlin", "America/New_York", "Asia/Tokyo", "Australia/Sydney", "Asia/Kolkata"] // Add more timezones as needed

//                onCurrentIndexChanged: {
//                    if (currentIndex >= 0) {
//                        timeZoneInput.text = model.get(currentIndex);
//                        comboPopup.close();
//                    }
//                }
//            }

//            ScrollBar.vertical: ScrollBar {
//                policy: ScrollBar.AlwaysOn
//                size: flickable.height/contentHeight
//            }
//        }

//        Text {
//            id: currentTimeText
//            color: "red"
//            text: "Current Time: "
//        }
//    }

//    Timer {
//        id: timeFetcher
//        interval: 1000 // Update time every 1 second
//        running: true
//        repeat: true
//        onTriggered: {
//            if (timeZoneInput.currentText !== "") {
//                fetchTimeForTimezone()
//            }
//        }
//    }

//    function fetchTimeForTimezone() {
//        var timezone = timeZoneInput.currentText
//        var url = "http://worldtimeapi.org/api/timezone/" + timezone
//        var request = new XMLHttpRequest()
//        request.open("GET", url)
//        request.onreadystatechange = function() {
//            if (request.readyState === XMLHttpRequest.DONE) {
//                if (request.status === 200) {
//                    var response = JSON.parse(request.responseText);
//                    var isoTimeString = response.utc_datetime;
//                    if (isoTimeString !== lastTime) {
//                        currentTimeText.text = "Current Time: " + Qt.formatDateTime(new Date(isoTimeString), "yyyy-MM-dd hh:mm:ss");
//                        lastTime = isoTimeString;
//                    }
//                } else {
//                    currentTimeText.text = "Error fetching time";
//                }
//            }
//        }
//        request.send()
//    }

//    Loader {
//        id: loginqmlLoader
//        anchors.fill: parent
//    }
//    Button {
//        anchors.centerIn: parent
//        width: 150
//        height: 40
//        text: "proceed to sign in"
//        font.pixelSize: 16
//        onClicked: {
//            loginqmlLoader.source = "login.qml";
//        }
//    }
//}

//import QtQuick 2.15
//import QtQuick.Controls 2.15
//import QtQuick.Layouts 1.15

//ApplicationWindow {
//    visible: true
//    width: 1024
//    height: 600
//    title: "Timezone Clock"
//    color: "black"

//    property string lastTime: ""
//    property alias selectedTimezone: timeZoneInput.currentText

//    ColumnLayout {
//     spacing: 20

//        Flickable {
//            width: 200
//            height: 200

//            ComboBox {
//                id: timeZoneInput
//                width: 200
//                height: 30
//                currentIndex: -1
//                model: [
//                    "Europe/Berlin",
//                    "America/New_York",
//                    "Asia/Tokyo",
//                    "Australia/Sydney",
//                    "Asia/Kolkata"
//                ]

//                Menu {
//                    id: dropDownMenu
//                    width: parent.width
//                    visible: false

//                    ListView {
//                        width: parent.width
//                        model: timeZoneInput.model

//                        ScrollBar.vertical: ScrollBar {
//                            policy: ScrollBar.AlwaysOn
//                            size: flickable.height/contentHeight
//                        }

//                        delegate: Item {
//                            width: parent.width
//                            height: 70
//                            //30
//                            Rectangle {
//                                width: parent.width
//                                height: parent.height
//                                color: dropDownMenu.highlightedIndex === index ? "#dddddd" : "#ffffff"
//                                border.color: "#cccccc"

//                                Text {
//                                    anchors.centerIn: parent
//                                    text: model.text
//                                }

//                                MouseArea {
//                                    anchors.fill: parent
//                                    onClicked: {
//                                        timeZoneInput.currentIndex = index
//                                        dropDownMenu.visible = true  //false
//                                    }
//                                }
//                            }
//                        }
//                    }
//                }

//                MouseArea {
//                    anchors.fill: parent
//                    onClicked: {
//                        dropDownMenu.visible = !dropDownMenu.visible
//                    }
//                }
//            }
//        }

//        Text {
//            id: currentTimeText
//            color: "red"
//            text: "Current Time: "
//        }
//    }

//    Timer {
//        id: timeFetcher
//        interval: 1000 // Update time every 1 second
//        running: true
//        repeat: true
//        onTriggered: {
//            if (timeZoneInput.currentText !== "") {
//                fetchTimeForTimezone()
//            }
//        }
//    }

//    function fetchTimeForTimezone() {
//        var timezone = timeZoneInput.currentText
//        var url = "http://worldtimeapi.org/api/timezone/" + timezone
//        var request = new XMLHttpRequest()
//        request.open("GET", url)
//        request.onreadystatechange = function() {
//            if (request.readyState === XMLHttpRequest.DONE) {
//                if (request.status === 200) {
//                    var response = JSON.parse(request.responseText);
//                    var isoTimeString = response.utc_datetime;
//                    if (isoTimeString !== lastTime) {
//                        currentTimeText.text = "Current Time: " + Qt.formatDateTime(new Date(isoTimeString), "yyyy-MM-dd hh:mm:ss");
//                        lastTime = isoTimeString;
//                    }
//                } else {
//                    currentTimeText.text = "Error fetching time";
//                }
//            }
//        }
//        request.send()
//    }

//    Loader {
//        id: loginqmlLoader
//        anchors.fill: parent
//    }

//    Button {
//        anchors.centerIn: parent
//        width: 150
//        height: 40
//        text: "proceed to sign in"
//        font.pixelSize: 16
//        onClicked: {
//            loginqmlLoader.source = "login.qml";
//        }
//    }
//}



//import QtQuick 2.15
//import QtQuick.Controls 2.15
//import QtQuick.Layouts 1.15

//ApplicationWindow {
//    visible: true
//    width: 1024
//    height: 600
//    title: "Timezone Clock"
//    color: "black"

//    property string lastTime: ""
//    property alias selectedTimezone: timeZoneInput.currentText

//    ColumnLayout {
//        spacing: 20

//        Flickable {
//            id: flickable
//            width: 200
//            height: 200

//            ComboBox {
//                id: timeZoneInput
//                width: 200
//                height: 30
//                currentIndex: -1
//                model: [
//                    "Europe/Berlin",
//                    "America/New_York",
//                    "Asia/Tokyo",
//                    "Australia/Sydney",
//                    "Asia/Kolkata"
//                ]

//                Menu {
//                    id: dropDownMenu
//                    width: parent.width
//                    visible: false

//                    ListView {
//                        width: parent.width
//                        model: timeZoneInput.model

//                        ScrollBar.vertical: ScrollBar {
//                            policy: ScrollBar.AlwaysOn
//                            size: flickable.height/contentHeight
//                        }

//                        delegate: Item {
//                            width: parent.width
//                            height: 30

//                            Rectangle {
//                                width: parent.width
//                                height: parent.height
//                                color: dropDownMenu.highlightedIndex === index ? "#dddddd" : "#ffffff"
//                                border.color: "#cccccc"

//                                Text {
//                                    anchors.centerIn: parent
//                                    text: model.text
//                                }

//                                MouseArea {
//                                    anchors.fill: parent
//                                    onClicked: {
//                                        timeZoneInput.currentIndex = index
//                                        dropDownMenu.visible = false
//                                    }
//                                }
//                            }
//                        }
//                    }
//                }

//                MouseArea {
//                    anchors.fill: parent
//                    onClicked: {
//                        dropDownMenu.visible = !dropDownMenu.visible
//                    }
//                }
//            }
//        }

//        Text {
//            id: currentTimeText
//            color: "red"
//            text: "Current Time: "
//        }
//    }

//    Timer {
//        id: timeFetcher
//        interval: 1000 // Update time every 1 second
//        running: true
//        repeat: true
//        onTriggered: {
//            if (timeZoneInput.currentText !== "") {
//                fetchTimeForTimezone()
//            }
//        }
//    }

//    function fetchTimeForTimezone() {
//        var timezone = timeZoneInput.currentText
//        var url = "http://worldtimeapi.org/api/timezone/" + timezone
//        var request = new XMLHttpRequest()
//        request.open("GET", url)
//        request.onreadystatechange = function() {
//            if (request.readyState === XMLHttpRequest.DONE) {
//                if (request.status === 200) {
//                    var response = JSON.parse(request.responseText);
//                    var isoTimeString = response.utc_datetime;
//                    if (isoTimeString !== lastTime) {
//                        currentTimeText.text = "Current Time: " + Qt.formatDateTime(new Date(isoTimeString), "yyyy-MM-dd hh:mm:ss");
//                        lastTime = isoTimeString;
//                    }
//                } else {
//                    currentTimeText.text = "Error fetching time";
//                }
//            }
//        }
//        request.send()
//    }

//    Loader {
//        id: loginqmlLoader
//        anchors.fill: parent
//    }

//    Button {
//        anchors.centerIn: parent
//        width: 150
//        height: 40
//        text: "proceed to sign in"
//        font.pixelSize: 16
//        onClicked: {
//            loginqmlLoader.source = "login.qml";
//        }
//    }
//}


import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQml 2.12
import QtWebEngine 1.15

ApplicationWindow {
    visible: true
    width: 1024
    height: 600
    title: "Timezone Clock"
    color: "black"

    property string lastTime: ""
    property alias selectedTimezone: timeZoneInput.currentText

    ColumnLayout {
        spacing: 20

        ComboBox {
            id: timeZoneInput
            width: 200
            height: 30
            currentIndex: -1

            model: [
                "Europe/Berlin",
                "America/New_York",
                "Asia/Tokyo",
                "Australia/Sydney",
                "Asia/Kolkata"
            ]

            Menu {
                id: dropDownMenu
                width: parent.width
                visible: false

                ListView {
                    width: parent.width
                    model: timeZoneInput.model

                    ScrollBar.vertical: ScrollBar {
                        policy: ScrollBar.AlwaysOn
                        size: flickable.height/contentHeight
                    }

                    delegate: Item {

                        width: parent.width
                        height: 30

                        Rectangle {
                            width: parent.width
                            height: parent.height
                            color: dropDownMenu.highlightedIndex === index ? "#dddddd" : "#ffffff"
                            border.color: "#cccccc"

                            Text {
                                anchors.centerIn: parent
                                text: model.text
                            }

                            MouseArea {
                                anchors.fill: parent
                                onClicked: {
                                    timeZoneInput.currentIndex = index
                                    dropDownMenu.visible = true
                                }
                            }
                        }
                    }
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                   // dropDownMenu.visible = true
                    dropDownMenu.visible = !dropDownMenu.visible
                }
            }
        }

        Text {
            id: currentTimeText
            color: "red"
            text: "Current Time: "
        }
    }

    Timer {
        id: timeFetcher
        interval: 1000 // Update time every 1 second
        running: true
        repeat: true
        onTriggered: {
            if (timeZoneInput.currentText !== "") {
                fetchTimeForTimezone()
            }
        }
    }

    function fetchTimeForTimezone() {
        var timezone = timeZoneInput.currentText
        var url = "http://worldtimeapi.org/api/timezone/" + timezone
        var request = new XMLHttpRequest()
        request.open("GET", url)
        request.onreadystatechange = function() {
            if (request.readyState === XMLHttpRequest.DONE) {
                if (request.status === 200) {
                    var response = JSON.parse(request.responseText);
                    var isoTimeString = response.utc_datetime;
                    if (isoTimeString !== lastTime) {
                        currentTimeText.text = "Current Time: " + Qt.formatDateTime(new Date(isoTimeString), "yyyy-MM-dd hh:mm:ss");
                        lastTime = isoTimeString;
                    }
                } else {
                    currentTimeText.text = "Error fetching time";
                }
            }
        }
        request.send()
    }

    Loader {
        id: loginqmlLoader
        anchors.fill: parent
        visible: true
    }

    Button {
        id: button
        anchors.centerIn: parent
        width: 150
        height: 40
        visible: true
        text: "proceed to sign in"
        font.pixelSize: 16
        onClicked: {
            loginqmlLoader.source = "login.qml";
            button.visible = false;
        }
    }
}

//properly loading of one qml page onto another qml Page
//using one Qml page as a component in another Qml page
//    Rectangle{
//        anchors.centerIn: parent
//        width: 150
//        height: 40
//        color: "black";
//        Text{
//            anchors.fill: parent
//            text: "proceed to login"
//        }

//        MouseArea{
//            anchors.fill: parent
//            onClicked:{
//                loginpage.visible = true
//            }
//        }
//    }





