## Has to be compiled with 
## '-d:ssl' and '--threads:on' flags

import asyncdispatch, discord

proc messageCreate(s: Session, m: MessageCreate) =
    if s.cache.me.id == m.author.id: return
    if m.content == "img":
        discard s.SendFileWithMessage(m.channel_id, "ZWn5Eqt.png", "asdasd")

let s = NewSession("Bot <token>")
s.messageCreate = messageCreate

waitFor s.SessionStart()