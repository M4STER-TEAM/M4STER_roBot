--------------------------------------------------
--      ____  ____ _____                        --
--     |    \|  _ )_   _|___ ____   __  __      --
--     | |_  )  _ \ | |/ ·__|  _ \_|  \/  |     --
--     |____/|____/ |_|\____/\_____|_/\/\_|     --
--                                              --
--------------------------------------------------
--                                              --
--       Developers: @Josepdal & @MaSkAoS       --
--     Support: @Skneos,  @iicc1 & @serx666     --
--                                              --
--------------------------------------------------

function run(msg, matches)
	if matches[1] == 'dbteam' then
		return 'DBTeam Bot V1 Supergroups\nAn advanced Administration bot based on yagop/telegram-bot \n\nhttp://github.com/Josepdal/DBTeam\n\nDevelopers :\n@MaSkAoS\n@Josepdal\n\nSupport :\n@skneos\n@iicc1\n@Serx666\n\nCheckout https://github.com/Josepdal/DBTeam\nGNU GPL v2 license.' 
	elseif matches[1] == 'version' then
		return 'Bot desarollado por @M4STER_ANGEL para la protección de los grupos.\n\nPara el bot original (@DBTeam), escribe #dbteam\nPara contacto con @M4STER_ANGEL, escribe #contact'
	end
end

return {
  patterns = {
    "^#dbteam",
	"^#version$"
  }, 
  run = run 
}
