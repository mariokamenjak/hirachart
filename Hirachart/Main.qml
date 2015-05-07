import QtQuick 2.0
import Ubuntu.Components 1.1
import Ubuntu.Components.ListItems 1.0 as ListItem
MainView {
    width: units.gu(120)
    height: units.gu(80)
    applicationName: "com.ubuntu.developer.mkamenjak77.hirachart"
    backgroundColor: "#67B9CB"
    automaticOrientation :true
    PageStack {
        id: pageStack
        Component.onCompleted: push(page0)
        Page {
            id: page0
            visible: false
            Image {
                id: image
                width: parent.width;
                height: parent.height;
                source: "mikuru.png"
                clip: true      // only makes a difference if mode is PreserveAspectCrop
                smooth: true
                Column {
                    anchors.fill: parent
                    ListItem.Standard {
                        text: i18n.tr("Main Hiragana")
                        onClicked: pageStack.push(Qt.resolvedUrl("Hiraganamain.qml"))
                        progression: true
                    }
                    ListItem.Standard {
                        text: i18n.tr("Dakuten Hiragana")
                        onClicked: pageStack.push(Qt.resolvedUrl("HiraganaDakuten.qml"))
                        progression: true
                    }
                    ListItem.Standard {
                        text: i18n.tr("Combo Hiragana")
                        onClicked: pageStack.push(Qt.resolvedUrl("HiraganaCombo.qml"))
                        progression: true
                    }
                    ListItem.Standard {
                        text: i18n.tr("Main Katakana")
                        onClicked: pageStack.push(Qt.resolvedUrl("Katakanamain.qml"))
                        progression: true
                    }
                    ListItem.Standard {
                        text: i18n.tr("Dakuten Katakana")
                        onClicked: pageStack.push(Qt.resolvedUrl("KatakanaDakuten.qml"))
                        progression: true
                    }
                    ListItem.Standard {
                        text: i18n.tr("Combo Katakana")
                        onClicked: pageStack.push(Qt.resolvedUrl("KatakanaCombo.qml"))
                        progression: true
                    }
                    ListItem.Standard {
                        text: i18n.tr("Special Katakana")
                        onClicked: pageStack.push(Qt.resolvedUrl("KatakanaSpecial.qml"))
                        progression: true
                    }
                }
            }
        }

    }
}
