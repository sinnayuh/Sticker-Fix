#include <sourcemod>

public Plugin myinfo = 
{
    name = "[CS:GO] Sticker Fix",
    author = "sin",
    description = "Prevents server crashes from sticker exploit",
    version = "1.0.0",
    url = "https://sinister.codes"
};

public void OnPluginStart()
{
    // Hook the SendPlayerItemFound user message
    HookUserMessage(GetUserMessageId("SendPlayerItemFound"), MsgHook_SendPlayerItemFound, true);

    // Log that the plugin has started
    LogMessage("[FIX] Sticker Fix has been successfully loaded.");
}

public Action MsgHook_SendPlayerItemFound(UserMsg msg_id, BfRead msg, const int[] players, int playersNum, bool reliable, bool init)
{
    // Block the message
    LogMessage("[WARNING] Blocked a SendPlayerItemFound message to prevent potential crash.");
    LogMessage("[WARNING] Blocked a SendPlayerItemFound message to prevent potential crash.");
    LogMessage("[WARNING] Blocked a SendPlayerItemFound message to prevent potential crash.");

    // Return Plugin_Handled to block the message
    return Plugin_Handled;
}

public void OnPluginEnd()
{
    // Log that the plugin is being unloaded
    LogMessage("[FIX] Sticker Fix has been successfully unloaded.");
}
