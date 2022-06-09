' Copyright Tommy van Vliet and other contributors. Licensed under MIT
' https://github.com/tommy-wm/roku-ui/blob/main/LICENSE
sub init()
    m.emojiOnRoku = createObject("roSGNode", "ComponentLibrary")
    m.emojiOnRoku.id = "EmojiOnRoku"
    m.emojiOnRoku.uri = "https://github.com/tommy-wm/roku-ui/releases/download/v1.0.0/release.zip"

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
        testStr = "Hello 👨🏻‍🦰! I am happy 😊 to see you. See emoji 👩🏽‍🦱 chars!"

        m.emojiLabel = createObject("roSGNode", "EmojiOnRoku:EmojiLabel")
        m.emojiLabel.translation = [200, 500]
        m.emojiLabel.height = 24
        m.emojiLabel.color = &h00AAEEFF
        m.emojiLabel.text = testStr
        m.top.appendChild(m.emojiLabel)
    end if
end function
