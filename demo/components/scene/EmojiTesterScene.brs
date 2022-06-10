' Copyright Tommy van Vliet and other contributors. Licensed under MIT
' https://github.com/tommy-wm/roku-ui/blob/main/LICENSE
sub init()
    m.emojiOnRoku = createObject("roSGNode", "ComponentLibrary")
    m.emojiOnRoku.id = "RokuUI"
    m.emojiOnRoku.uri = "https://github.com/tommy-wm/roku-ui/releases/download/release/1.0.0/roku-ui-1.0.0.zip"

    m.emojiOnRoku.observeField("loadStatus", "onLibLoaded")
end sub

function onLibLoaded()
    if m.emojiOnRoku.loadStatus = "ready"
        setupEmojiLabel()
    else if m.emojiOnRoku.loadStatus = "failed"
        print "Failed to load emoji Library!"
    end if
end function

function setupEmojiLabel()
    if m.emojiLabel = Invalid
        testStr = "Hello 👨🏻‍🦰! I am happy 😊 to see you. See emoji 👩🏽‍🦱 chars! 🤞 ✌️ 🤟🤘👌🤌🤌👆👆👇🏽👂🏻👀🧑‍🎤🧖👬"

        m.emojiLabel = createObject("roSGNode", "RokuUI:EmojiLabel")
        m.emojiLabel.translation = [200, 100]
        m.emojiLabel.height = 24
        m.emojiLabel.color = &h00AAEEFF
        m.emojiLabel.text = testStr
        m.top.appendChild(m.emojiLabel)

        testStr2 = "😀😃😄😁😆😅😂🤣🥲☺️😊😇🙂🙃😉😌😍🥰😗😘😙😚😋😛😝😜🤪🤨🧐🤓😎🥸🤩😏🥳😒😞😔😟😕🙁☹️😣😖😫😩🥺😢😭😤😠😡🤬🤯😳🥵🥶😶‍🌫️😱😨😰😥😓"
        m.emojiLabel2 = createObject("roSGNode", "RokuUI:EmojiLabel")
        m.emojiLabel2.translation = [200, 500]
        m.emojiLabel2.height = 22
        m.emojiLabel2.color = &h00AAEEFF
        m.emojiLabel2.text = testStr2
        m.top.appendChild(m.emojiLabel2)

        testStr3 = "😓🤗🤔🤭🤫🤥😶😐😑😬🙄😯😦😧😮😲🥱😴🤤😪😮‍💨😵😵‍💫🤐🥴🤢🤮🤧🤒😷🤕🤠🤑😈👿👹👺🤡💩👻💀☠️👽👾🤖🎃😺😸😹😻😼😽🙀😿😾🤲👐🙌👏🤝👍👎👊"
        m.emojiLabel3 = createObject("roSGNode", "RokuUI:EmojiLabel")
        m.emojiLabel3.translation = [200, 600]
        m.emojiLabel3.height = 22
        m.emojiLabel3.color = &h00AAEEFF
        m.emojiLabel3.text = testStr3
        m.top.appendChild(m.emojiLabel3)

        testStr4 = "👊✊🏦🏨🏪💽💿📀💶🪙💳💰⚗️💈🕳🔬💊🧿🪟🛍📋📁📂❤️‍🩹💚💟🅰️🆎🛑💯💹❎🚾🅿️⬇️↘️#️⃣9️⃣🎶〰️🟠🔴▫️🟩🟪🕑🕙🏴‍☠️🏳️‍🌈🇦🇩🇧🇼🇨🇦🇮🇨🇨🇼🇪🇬🇱🇦🇱🇺"
        m.emojiLabel4 = createObject("roSGNode", "RokuUI:EmojiLabel")
        m.emojiLabel4.translation = [200, 700]
        m.emojiLabel4.height = 22
        m.emojiLabel4.color = &h00AAEEFF
        m.emojiLabel4.text = testStr4
        m.top.appendChild(m.emojiLabel4)
    end if
end function
