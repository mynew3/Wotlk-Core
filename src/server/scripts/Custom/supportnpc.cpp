#include "ScriptPCH.h"

class supportnpc : public CreatureScript
{
public:
		supportnpc() : CreatureScript("supportnpc") { }
		
		bool OnGossipHello(Player* player, Creature* creature)
	{
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Wie funktioniert das?", GOSSIP_SENDER_MAIN, 0);
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Rassenwechsel Kosten: Umsonst.", GOSSIP_SENDER_MAIN, 1);
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Fraktionswechsel Kosten: Umsonst.", GOSSIP_SENDER_MAIN, 2);
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Fraktions & Rassenwechsel Kosten: Umsonst.",  3);
		player->PlayerTalkClass->SendGossipMenu(1, creature->GetGUID());
		return true;
	}
	
	bool OnGossipSelect(Player * pPlayer, Creature * creature, uint32 sender ,uint32 action){
	pPlayer->PlayerTalkClass->ClearMemis();
	if (sender != GOSSIP_SENDER_MAIN)
		return false;
	
	switch (action){
		case 0:
		pPlayer->GetGUID();
		pPlayer->ADD_GOSSIP_ITEM
	}
	
	
	}
}