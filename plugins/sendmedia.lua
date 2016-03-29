do

local function run(msg, matches)
  local receiver = get_receiver(msg)
  if matches[1] == 'send' then
    
    local file = matches[3]
    
    if matches[2] == 'sticker' and not matches[4] then
      send_document(receiver, "./media/sticker/"..file..".webp", ok_cb, false)
    end
    
    if matches[2] == 'photo' then
      send_photo(receiver, "./media/photo/"..file..".jpeg", ok_cb, false)
      send_photo(receiver, "./media/photo/"..file..".jpg", ok_cb, false)  
      send_photo(receiver, "./media/photo/"..file..".png", ok_cb, false)
    end
    
    if matches[2] == 'gif' and not matches[4] then
	  send_file(receiver, "./media/gif/"..file..".mp4", ok_cb, false)
	  --send_photo(receiver, "./media/"..file..".gif", ok_cb, false)
    end
    
    if matches[2] == 'music' then
      send_audio(receiver, "./media/music/"..file..".mp3", ok_cb, false)
      send_audio(receiver, "./media/music/"..file..".flac", ok_cb, false)  
      send_audio(receiver, "./media/music/"..file..".aac", ok_cb, false)
    end
    
    if matches[2] == 'video' then
      send_video(receiver, "./media/video/"..file..".avi", ok_cb, false)
      send_video(receiver, "./media/video/"..file..".mpeg", ok_cb, false)  
      send_video(receiver, "./media/video/"..file..".mp4", ok_cb, false)
    end
    
    if matches[2] == 'file' then
      local extension = matches[4]
      send_document(receiver, "./media/file/"..file..'.'..extension, ok_cb, false)
    end
    
    if matches[2] == 'plugin' then
        send_document(receiver, "./plugins/"..file..".lua", ok_cb, false)
    end
    
    if matches[2] == 'm4ster' then
      local extension = matches[4]
      if matches[3] == 'file' then
        send_document(receiver, "./media/dev/M4STER.png", ok_cb, false)
      elseif matches[3] ~= 'file' or not matches[3] then
        send_photo(receiver, "./media/dev/M4STER.png", ok_cb, false)
      end
    end
  
    if matches[2] == 'manual' and is_admin(msg) then
      local ruta = matches[3]
      local document = matches[4]
      send_document(receiver, "./"..ruta.."/"..document, ok_cb, false)
    end
  
  end
  
  if matches[1] == 'extensions' then
    local extensions = 'Imágenes:\n'
                       ..'.jpg\n.jpeg\n.png\n\n'
                       ..'Vídeos:\n'
                       ..'.avi\n.mpeg\n.mp4\n\n'
                       ..'Música:\n'
                       ..'.mp3\n.aac\n.flac\n\n'
                       ..'GIFs animados:\n'
                       ..'.gif\n\n'
                       ..'Stickers:\n'
                       ..'.webp\n\n'
                       ..'Plugins:\n'
                       ..'.lua\n\n\n'
                       ..'Todos los otros tipos de archivos que no están en esta lista se pueden enviar con el comando #send file, añadiendo al final la extensión de archivo'
    return extensions
  end
  
  --if matches[1] == 'files' or matches[1] == 'list' then
    --return '#sh ls media'
  --end
end

return {
  patterns = {
  "^#(send) (plugin) (.*)$",
  "^#(send) (.*) (.*) (.*)$",
  "^#(send) (.*) (.*)$",
  "^#(send) (.*)$",
  "^#(files)$",
  "^#(list)$",
  "^#(extensions)$"
  },
  run = run,
}
end