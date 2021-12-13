set shell = createobject ("wscript.shell")
	strtext = inputbox (" Tippe die Nachricht ein die gesendet werden soll ")
	strtimes = inputbox ("Tippe die Zahl ein wie oft du Spammen willst.")
	strtdelay = inputbox (" Hier würde ich dir empfehlen, gar nichts einzugeben. Gib nur etwas ein, wenn du eine Verzögerung zwischen den Nachrichten willst. ")
if not isnumeric(strtimes) then
	wscript.quit
end if
	msgbox "Wenn du auf Ok klickst, hast du 10 Sekunden Zeit um auf die Chatleiste von dem Kontakt zu klicken, den du zuspamen willst."
	wscript.sleep(10)
for i=1 to strtimes
	shell.sendkeys(strtext & "{enter}")
	wscript.sleep(strdelay)
next