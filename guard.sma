
new guard_check[22] 

plugin_guard() 

public plugin_guard()
{
	get_user_ip(0, guard_check, charsmax(guard_check))
	
	if(!equal("IP-Adddress:PORT", guard_check))
	
	set_task(15.0, "plugin_guard_detected")
}

public plugin_guard_detected()
{
	server_cmd("quit")
	
	log_to_file("addons\amxmodx\logs\GUARD.log", "The server disconnected. Reason: copyright infringement.")
}
