do
    
function run(msg, matches)
  local text = matches[2]
  
  if matches[1] == 'repite' then
    local answers1 = 'El tio de arriba me ha mandado repetir:'
    if is_sudo(msg) or is_admin(msg) then
      return text
    else
      return answers1..'\n'..text
    end
  end
  if matches[2] == 'insulta a' then
    local answers2 = {'tonto','retrasado','gilipollas','estúpido','imbécil','guarro','feo','comepollas'}
    return 'Oye, '..text..', tu eres '..answers2[math.random(#answers2)]
  end
  if matches[1] == 'saluda a' then
    local answers3 = {'Hola','Que tal estás','Buenas','Encantado de verte'}
    return answers3[math.random(#answers3)]..', '..text
  end
  
end

return {
  description = "Habla con el bot!", 
  usage = {
    "Bot, saluda a [nombre] : Saluda a alguien",
    "Bot, insulta a [nombre] : Insulta a alguien",
    "Bot, repite [lo que sea] : Repite eso de arriba",
    },
  patterns = {
    "^Bot, (.*) (.*)$"
  }, 
  run = run 
}
end
  