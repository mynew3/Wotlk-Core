#include "ScriptPCH.h"
#include "ScriptMgr.h"
#include "AccountMgr.h"
#include "ObjectMgr.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "Player.h"




class dark : public CreatureScript
{
public: dark() : CreatureScript("dark"){ }

		bool OnGossipHello(Player *pPlayer, Creature* _creature)
		{
			pPlayer->ADD_GOSSIP_ITEM(7, "Unterstuetzt mich, Prinz!", GOSSIP_SENDER_MAIN, 0); 
			pPlayer->ADD_GOSSIP_ITEM(7, "Bringt mich zu Eurem Bruder!", GOSSIP_SENDER_MAIN, 1);
			pPlayer->ADD_GOSSIP_ITEM(7, "Ich brauche eure Hilfe doch nicht!",GOSSIP_SENDER_MAIN, 2);
			pPlayer->PlayerTalkClass->SendGossipMenu(907, _creature->GetGUID());
			return true;
		}

		bool OnGossipSelect(Player * pPlayer, Creature * pCreature, uint32 /*uiSender*/, uint32 uiAction)
		{
			switch (uiAction)
			{
			case 0:
			{	
				pCreature->SummonCreature(800062, -7139.58, -4317.59, 264.33, 3.13, TEMPSUMMON_TIMED_DESPAWN, 120000);
				pPlayer->PlayerTalkClass->SendCloseGossip();
				return true;
				
			}

			case 1:{
				pPlayer->GetGUID();
				pPlayer->TeleportTo(0, -7138.54, -4310.35, 264.33, 3.13);
				return true;
			}

			case 2:
			{
				pPlayer->GetGUID();
				ChatHandler(pPlayer->GetSession()).PSendSysMessage("[Boss System]\nOk, das ist Eure Sache ob ihr mich haengen lasst!",
					pPlayer->GetName());
				pPlayer->PlayerTalkClass->SendCloseGossip();
				return true;
			}

			}
			return true;
		}
};




void AddSC_dark()
{
	new dark();
}