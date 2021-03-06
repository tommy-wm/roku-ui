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
        testStr = "Hello ๐จ๐ปโ๐ฆฐ! I am happy ๐ to see you. See emoji ๐ฉ๐ฝโ๐ฆฑ chars! ๐ค โ๏ธ ๐ค๐ค๐๐ค๐ค๐๐๐๐ฝ๐๐ป๐๐งโ๐ค๐ง๐ฌ"

        m.emojiLabel = createObject("roSGNode", "RokuUI:EmojiLabel")
        m.emojiLabel.translation = [200, 100]
        m.emojiLabel.height = 24
        m.emojiLabel.color = &h00AAEEFF
        m.emojiLabel.text = testStr
        m.top.appendChild(m.emojiLabel)

        testStr2 = "๐๐๐๐๐๐๐๐คฃ๐ฅฒโบ๏ธ๐๐๐๐๐๐๐๐ฅฐ๐๐๐๐๐๐๐๐๐คช๐คจ๐ง๐ค๐๐ฅธ๐คฉ๐๐ฅณ๐๐๐๐๐๐โน๏ธ๐ฃ๐๐ซ๐ฉ๐ฅบ๐ข๐ญ๐ค๐ ๐ก๐คฌ๐คฏ๐ณ๐ฅต๐ฅถ๐ถโ๐ซ๏ธ๐ฑ๐จ๐ฐ๐ฅ๐"
        m.emojiLabel2 = createObject("roSGNode", "RokuUI:EmojiLabel")
        m.emojiLabel2.translation = [200, 500]
        m.emojiLabel2.height = 22
        m.emojiLabel2.color = &h00AAEEFF
        m.emojiLabel2.text = testStr2
        m.top.appendChild(m.emojiLabel2)

        testStr3 = "๐๐ค๐ค๐คญ๐คซ๐คฅ๐ถ๐๐๐ฌ๐๐ฏ๐ฆ๐ง๐ฎ๐ฒ๐ฅฑ๐ด๐คค๐ช๐ฎโ๐จ๐ต๐ตโ๐ซ๐ค๐ฅด๐คข๐คฎ๐คง๐ค๐ท๐ค๐ค ๐ค๐๐ฟ๐น๐บ๐คก๐ฉ๐ป๐โ ๏ธ๐ฝ๐พ๐ค๐๐บ๐ธ๐น๐ป๐ผ๐ฝ๐๐ฟ๐พ๐คฒ๐๐๐๐ค๐๐๐"
        m.emojiLabel3 = createObject("roSGNode", "RokuUI:EmojiLabel")
        m.emojiLabel3.translation = [200, 600]
        m.emojiLabel3.height = 22
        m.emojiLabel3.color = &h00AAEEFF
        m.emojiLabel3.text = testStr3
        m.top.appendChild(m.emojiLabel3)

        testStr4 = "๐โ๐ฆ๐จ๐ช๐ฝ๐ฟ๐๐ถ๐ช๐ณ๐ฐโ๏ธ๐๐ณ๐ฌ๐๐งฟ๐ช๐๐๐๐โค๏ธโ๐ฉน๐๐๐ฐ๏ธ๐๐๐ฏ๐นโ๐พ๐ฟ๏ธโฌ๏ธโ๏ธ#๏ธโฃ9๏ธโฃ๐ถใฐ๏ธ๐ ๐ดโซ๏ธ๐ฉ๐ช๐๐๐ดโโ ๏ธ๐ณ๏ธโ๐๐ฆ๐ฉ๐ง๐ผ๐จ๐ฆ๐ฎ๐จ๐จ๐ผ๐ช๐ฌ๐ฑ๐ฆ๐ฑ๐บ"
        m.emojiLabel4 = createObject("roSGNode", "RokuUI:EmojiLabel")
        m.emojiLabel4.translation = [200, 700]
        m.emojiLabel4.height = 22
        m.emojiLabel4.color = &h00AAEEFF
        m.emojiLabel4.text = testStr4
        m.top.appendChild(m.emojiLabel4)
    end if
end function
