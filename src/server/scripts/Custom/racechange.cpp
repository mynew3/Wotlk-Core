class Race_Change_NPC : public CreatureScript
{
public:
	Race_Change_NPC() : CreatureScript("racechange") {  }

	bool OnGossipHello(Player* player, Creature* creature)
	{
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Wie funktioniert das?", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 0);
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Rassenwechsel Kosten: Umsonst.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Fraktionswechsel Kosten: Umsonst.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Fraktions & Rassenwechsel Kosten: Umsonst.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
		player->PlayerTalkClass->SendGossipMenu(1, creature->GetGUID());
		return true;
	}
	bool OnGossipSelect(Player* pPlayer, Creature* creature, uint32 sender, uint32 action){
		pPlayer->PlayerTalkClass->ClearMenus();
		if (sender != GOSSIP_SENDER_MAIN)
			return false;
		switch (action){

		case GOSSIP_ACTION_INFO_DEF + 0:
			pPlayer->GetGUID();
			ChatHandler(pPlayer->GetSession()).PSendSysMessage("Einfach auswaehlen was du moechtest und dann reloggen.",
				pPlayer->GetName());
			pPlayer->PlayerTalkClass->SendCloseGossip();
			return true;
			break;
		case GOSSIP_ACTION_INFO_DEF + 1:
			pPlayer->SetAtLoginFlag(AT_LOGIN_CHANGE_RACE);
			pPlayer->GetGUID();
			ChatHandler(pPlayer->GetSession()).PSendSysMessage("Bitte ausloggen um Aenderungen durchzufuehren.",
				pPlayer->GetName());
			pPlayer->PlayerTalkClass->SendCloseGossip();
			return true;
			break;
		case GOSSIP_ACTION_INFO_DEF + 2:
			pPlayer->SetAtLoginFlag(AT_LOGIN_CHANGE_FACTION);
			pPlayer->GetGUID();
			ChatHandler(pPlayer->GetSession()).PSendSysMessage("Bitte ausloggen um Aenderungen durchzufuehren.",
				pPlayer->GetName());
			pPlayer->PlayerTalkClass->SendCloseGossip();
			return true;
			break;
		case GOSSIP_ACTION_INFO_DEF + 3:
			pPlayer->SetAtLoginFlag(AT_LOGIN_CHANGE_FACTION);
			pPlayer->SetAtLoginFlag(AT_LOGIN_CHANGE_RACE);
			pPlayer->GetGUID();
			ChatHandler(pPlayer->GetSession()).PSendSysMessage("Bitte ausloggen um �nderungen durchzuf�hren.",
				pPlayer->GetName());
			pPlayer->PlayerTalkClass->SendCloseGossip();
			return true;
			break;
		}
		return true;
	}
};

void AddSC_Race_Change_NPC()
{
	new Race_Change_NPC();
}