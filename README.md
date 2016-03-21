DBTeam-bot
A Telegram Bot based on plugins using tg.

Bot Commands

Name	Description
bot.lua	Plugin to manage channels. Enable or disable channel.
commands.lua	Plugin to get info about what the bot can do.
(language)_lang.lua	Plugin to install a language in your redis db.
export_gban.lua	Plugin to export an installer (gban_installer.lua) or a list of all your bot gbans.
giverank.lua	Plugin to manage ranks (admins, mods and guests).
id.lua	Plugin to get info about telegram accounts.
moderation.lua	Plugin to manage users from chats. Kick, add, ban, unban, gban, ungban, kickme all of this with action by reply, by id and by username.
plugins.lua	Plugin to manage other plugins. Enable, disable or reload.
rules.lua	Plugin to get chat rules.
settings.lua	Plugin to administrate a group/supergroup, you can disable photos, stickers, gifs, links, arabic, flood, spam, lock channel members, audios...
spam.lua	Plugin to manage spam at groups and supergroups. When someone write a Telegram link to another group or channel, automatically (for example), plugin delete that user from the channel, and delete his message. Then, send a report to all sudo users in a private message with user info, text message and the name and id of that channel.
version.lua	Shows bot version
Commands Usages
Plugin	Usage
bot.lua	#bot on: enable bot in current channel.
#bot off: disable bot in current channel.
commands.lua	#commands: Show all commands for every plugin.
#commands [plugin]: Commands for that plugin.
export_gban.lua	#gbans installer: Return a lua file installer to share gbans and add those in another bot in just one command.
#gbans list: Return an archive with a list of gbans.
gban_installer.lua	#install gbans: add a list of gbans into your redis db.
giverank.lua	#rank admin (reply): add admin by reply.
#rank admin /: add admin by user ID/Username.
#rank mod (reply): add mod by reply.
#rank mod /: add mod by user ID/Username.
#rank guest (reply): remove admin by reply.
#rank guest /: remove admin by user ID/Username.
#admins: list of all admin members.
#mods: list of all mod members.
#members: list of all channel members.
id.lua	#id: Return your ID and the chat id if you are in one.
#ids chat: Return the IDs of the current chat members.
#ids channel: Return the IDs of the current channel members.
#id : Return the member username ID from the current chat.
#whois /: Return username.
#whois (reply): Return user id.
rules.lua	#rules: shows chat rules you set before or send default rules.
#setrules : set chat rules. #remrules: remove chat rules and return to default ones.
moderation.lua	#add: replying to a message, the user will be added to the current group/supergroup.
#add /: adds a user by its ID/Username to the current group/supergroup.
#kick: replying to a message, the user will be kicked in the current group/supergroup.
#kick /: the user will be kicked by its ID/Username in the current group/supergroup.
#kickme: kick yourself.
#ban: replying to a message, the user will be kicked and banned in the current group/supergroup.
#ban /: the user will be banned by its ID/Username in the current group/supergroup and it wont be able to return.
#unban: replying to a message, the user will be unbanned in the current group/supergroup.
#unban /: the user will be unbanned by its ID/Username in the current group/supergroup.
#gban: replying to a message, the user will be kicked and banned from all groups/supergroups.
#gban /: the user will be banned by its ID/Username from all groups/supergroups and it wont be able to enter.
#ungban: replying to a message, the user will be unbanned from all groups/supergroups.
#ungban /: the user will be unbanned by its ID/Username from all groups/supergroups.
#mute: replying to a message, the user will be silenced in the current supergroup, erasing all its messages.
#mute /: the user will be silenced by its ID/Username inthe current supergroup, erasing all its messages.
#unmute: replying to a message, the user will be unsilenced in the current supergroup.
#unmute /: the user will be unsilenced by its ID/Username in the current supergroup.
#rem: replying to a message, the message will be removed.
settings.lua	#settings stickers enable/disable: when enabled, all stickers will be cleared.
#settings links enable/disable: when enabled, all links will be cleared.
#settings arabic enable/disable: when enabled, all messages with arabic/persian will be cleared.
#settings bots enable/disable: when enabled, if someone adds a bot, it will be kicked.
#settings gifs enable/disable: when enabled, all gifs will be cleared.
#settings photos enable/disable: when enabled, all photos will be cleared.
#settings audios enable/disable: when enabled, all audios will be cleared.
#settings kickme enable/disable: when enabled, people can kick out itself.
#settings spam enable/disable: when enabled, all spam links will be cleared.
#settings setphoto enable/disable: when enabled, if a user changes the group photo, the bot will revert to the saved photo.
#settings setname enable/disable: when enabled, if a user changes the group name, the bot will revert to the saved name.
#settings lockmember enable/disable: when enabled, the bot will kick all people that enters to the group.
#settings floodtime : set the time that bot uses to check flood.
#settings maxflood : set the maximum messages in a floodtime to be considered as flood.
#setname : the bot will change group title.
#setphoto : the bot will change group photo.
#lang : it changes the language of the bot.
#setlink : saves the link of the group.
#link: to get the link of the group.
#muteall: mute all chat members.
#muteall : mute all chat members for time.
#unmuteall: remove mute restriction.
#creategroup: create a group with your bot in a command.
#tosupergroup: upgrade your chat to a channel.
#setdescription: change your channel description.
plugins.lua	#plugins: shows a list of all plugins.
#plugins / [plugin]: enable/disable the specified plugin.
plugins / [plugin] chat: enable/disable the specified plugin, only in the current group/supergroup.
#plugins reload: reloads all plugins.
version.lua	#version: shows bot version.
Installation

# Tested on Ubuntu 14.04, for other OSs check out https://github.com/yagop/telegram-bot/wiki/Installation
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev
# After those dependencies, lets install the bot
cd $HOME #Do not write this if you are using c9 or not root accounts
git clone https://github.com/Josepdal/DBTeam.git
cd DBTeam
./launch.sh install
./launch.sh # Will ask you for a phone number & confirmation code.
You can also use this command to install the bot in just one step.

sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get autoremove && sudo apt-get autoclean && sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev -y && cd $HOME && rm -rf DBTeam && rm -rf .telegram-cli && git clone https://github.com/Josepdal/DBTeam.git && cd DBTeam && ./launch.sh install && ./launch.sh
Then, you have to install a bot language like this:

#install english_lang
#lang en
Enable more plugins

See the plugins list with #plugins command.

Enable a disabled plugin by #plugins enable [name].

Disable an enabled plugin by #plugins disable [name].

Those commands require a privileged user, privileged users are defined inside data/config.lua (generated by the bot), stop the bot and edit if necessary.

Keep the bot always running

If your bot stops sometimes due to crashes or freezes in telegram-cli, and you want to keep it running all the time you can start the bot this way. Note that it only will be recovering the bot if the problem is a telegram-cli issue, it won't recover of vps hibernation or system problems.

You need to have screen installed: sudo apt get-install screen
Once installed, kill all the telegram-cli and screen processes running on your vps:

killall screen
killall telegram-cli
Then you have to launch the script (you need to be in DBTeam folder):

screen bash steady.sh
The script will launch and it will show you if there is any error.
Bot status is checked every 20 seconds (default) and printed on the screen. You can change this value in the script ($RELOADTIME).

Now you can close the SSH session and it will be running in the background. You can also simply to deatach the screen by typing Control+a and Control+d

If you want to get inside the session again, just type: screen -x

You can stop the script by pressing Control+C in the running script. To stop all the processes related to the bot, type:

killall screen
killall telegram-cli
Run it as a daemon

If your Linux/Unix comes with upstart you can run the bot by this way

$ sed -i "s/yourusername/$(whoami)/g" etc/telegram.conf
$ sed -i "s_telegrambotpath_$(pwd)_g" etc/telegram.conf
$ sudo cp etc/telegram.conf /etc/init/
$ sudo start telegram # To start it
$ sudo stop telegram # To stop it
DBTeam support and development groups

https://telegram.me/joinchat/C142CD3GT-26EFdxu_lW0g https://telegram.me/joinchat/C142CD5wPizyWWg4R3TJLw https://telegram.me/joinchat/BbkmWz2Ozu7EakNpixOJ5A

DBTeam developers

https://telegram.me/Josepdal https://telegram.me/MaSkAoS

Yagop developer and bot development group

https://telegram.me/Yago_Perez https://telegram.me/joinchat/ALJ3izwBCNXSswCHOKMwGw https://gitter.im/yagop/telegram-bot

Other interesting sites

Donate button http://taligram.org

Contact us

You can contact us in groups said before but if you have an issue please open one.
