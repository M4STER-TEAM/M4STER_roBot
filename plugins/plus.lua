local function run(msg, matches)
    local receiver = get_receiver(msg)
    if matches[1] == 'plus' then
        if matches[2] == 'apk' then
            send_large_msg(receiver, 'Enviando apk...')
            send_document(receiver, "./media/plus.apk", ok_cb, false)
            return
        end

        if matches[2] == 'temas' or matches[2] == 'themes' then
            send_large_msg(receiver, 'Enviando apk...')
            send_document(receiver, "./media/temas.apk", ok_cb, false)
            return
        end
        
        if matches[2] == 'web' then
            return 'La web de Plus Messenger es: \n\nhttp://plusmessenger.org/'
        end
        
        if matches[2] == 'play' then
            return 'Link de la Play Store de Plus Messenger: \n\nhttps://play.google.com/store/apps/details?id=org.telegram.plus&hl=es'
        end
    end
end

return {
    --description = 'Plugin especial para Plus Messenger',
    usage = {
        "#plus apk : Envía el apk de Plus Messenger",
        "#plus web : Envía la web de Plus Messenger",
        "#plus play : Envía el link a la Play Store"
        },
    patterns = {"^#(plus) (.*)$"},
    run = run,
}
