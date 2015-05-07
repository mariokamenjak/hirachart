import QtQuick 2.0
import Ubuntu.Components 1.1

Item {
    property alias mode: image.fillMode
    property alias caption: captionItem.text

    width: parent.width;
    height: parent.height

    property string source2: "hchcomboe.png"
    property string source3: "hchcombo.png"
    Text {
        height: units.gu(2)
        id: captionItem
        anchors.horizontalCenter: parent.horizontalCenter; anchors.bottom: parent.bottom
        font.bold:true
        text : "Click to show the hiragana with/without romaji."
    }
    Image {
        id: image
        width: parent.width;
        height: parent.height - captionItem.height
        source: "hchcombo.png"
        clip: true      // only makes a difference if mode is PreserveAspectCrop
        smooth: true

        MouseArea {

            anchors.fill: parent
            onClicked: {
                source3=image.source
                image.source=source2
                source2=source3
            }
        }
    }
    /*Panel {
            id: panel
            anchors {
                left: parent.left
                right: parent.right
                bottom: parent.bottom
            }
            height: units.gu(8)
            width: units.gu(20)
            Item {
                anchors.fill: parent
                // two properties used by the toolbar delegate:
                property bool opened: panel.opened
                property bool animating: panel.animating
                Row
                {
                Button {
                    text: "Katakana"
                    onClicked: {
                        image.source="kch.png"
                        source2="kche.png"
                    }
                }
                Button {
                    text: "Hiragana"
                    onClicked: {
                        image.source="hch.png"
                        source2="hche.png"
                    }
                }

                }
            }
        }*/


}
