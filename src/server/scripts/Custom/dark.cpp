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
			pPlayer->ADD_GOSSIP_ITEM(7, "Ich brauche eure Hilfe doch nicht!",GOSSIP_SENDER_MAIN, 0);
			pPlayer->PlayerTalkClass->SendGossipMenu(907, _creature->GetGUID());
			return true;
		}

		bool OnGossipSelect(Player * pPlayer, Creature * pCreature, uint32 /*uiSender*/, uint32 uiAction)
		{
			switch (uiAction)
			{
			case 0:
			{
				uint32 guid = pPlayer->GetGUID();
				uint32 quest = 800005;
				QueryResult queste = CharacterDatabase.PQuery("SELECT active FROM character_queststatus_rewarded WHERE guid = %u and quest = %u", guid, quest);
				uint32 questint = (*queste)[0].GetUInt32();

				if (questint == 1){
					pCreature->SummonCreature(800060, -7139.58, -4317.59, 264.33,0.0, TEMPSUMMON_TIMED_DESPAWN, 180000);
					pPlayer->PlayerTalkClass->SendCloseGossip();
					return true;
				}

				else{
					pPlayer->GetGUID();
					ChatHandler(pPlayer->GetSession()).PSendSysMessage("[Boss System]\nDu hast die benötigten Quests noch nicht erfüllt.",
						pPlayer->GetName());
					pPlayer->PlayerTalkClass->SendCloseGossip();
					return true;
				}
				return true;
			}

			case 1:
			{
				pPlayer->GetGUID();
				ChatHandler(pPlayer->GetSession()).PSendSysMessage("[Boss System]\nOk, das ist Eure Sache.",
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