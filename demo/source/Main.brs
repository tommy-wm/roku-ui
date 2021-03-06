' Copyright Tommy van Vliet and other contributors. Licensed under MIT
' https://github.com/tommy-wm/roku-ui/blob/main/LICENSE

' Standard Roku Scenegraph Setup
sub Main()
    screen = CreateObject("roSGScreen")
    m.port = CreateObject("roMessagePort")
    screen.setMessagePort(m.port)

    scene = screen.CreateScene("EmojiTesterScene")
    screen.show()

    while true
        msg = wait(0, m.port)
        msgType = type(msg)
        if msgType = "roSGScreenEvent" and msg.isScreenClosed()
            return
        end if
    end while
end sub
