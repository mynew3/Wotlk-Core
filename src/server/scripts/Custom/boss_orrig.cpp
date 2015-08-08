#include "ScriptPCH.h"
#include "ObjectMgr.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "Player.h"

enum Spells
{
	SPELL_SHADOW_SPIKE = 46589,
	SPELL_FEAR = 68950,
	SPELL_CHAIN_LIGHTNING = 33665,
	SPELL_ENRAGE = 68335,
	SPELL_BLIZZARD = 26607,
	SPELL_ARCANE_BOMB = 56431,
	SPELL_ACID_BLAST = 75637,
	SPELL_POISON_SHOCK = 28741,

};

enum Events
{
	EVENT_SHADOW_SPIKE = 1,
	EVENT_ENRAGE = 2,
	EVENT_FEAR = 3,
	EVENT_CHAIN_LIGHTNING = 4,
	EVENT_BLIZZARD = 5,
	EVENT_ARCANE_BOMB = 6,
	EVENT_ACID_BLAST = 7,
	EVENT_POISON_SHOCK = 8



};

enum Phases
{
	PHASE_ONE = 1,
	PHASE_TWO = 2,
	PHASE_THREE = 3
};

enum Summons
{
	NPC_PUSTELIGER_SCHRECKEN = 31139
};

enum Texts
{
	SAY_AGGRO = 0,
	SAY_RANDOM = 1,
	SAY_HELP = 2,
	SAY_BERSERK = 3,
	SAY_ENRAGE = 4,
	SAY_DEAD = 5
};

class orrig : public CreatureScript
{
public:
	orrig() : CreatureScript("orrig") { }

	struct orrigAI : public ScriptedAI
	{
		orrigAI(Creature* creature) : ScriptedAI(creature), Summons(me) { }

		void Reset() override
		{
			_events.Reset();
			Summons.DespawnAll();
		}

		void EnterCombat(Unit* /*who*/) override
		{
			Talk(SAY_AGGRO);
			_events.SetPhase(PHASE_ONE);
			_events.ScheduleEvent(EVENT_SHADOW_SPIKE, 8000);
			_events.ScheduleEvent(EVENT_FEAR, 10000);
			_events.ScheduleEvent(EVENT_BLIZZARD, 15000);
		
		}

		void DamageTaken(Unit* /*attacker*/, uint32& damage) override
		{
			if (me->HealthBelowPctDamaged(75, damage) && _events.IsInPhase(PHASE_ONE))
			{
				_events.SetPhase(PHASE_TWO);
				_events.ScheduleEvent(EVENT_POISON_SHOCK, 10000);
				_events.ScheduleEvent(EVENT_ACID_BLAST, 8000);
				_events.ScheduleEvent(EVENT_CHAIN_LIGHTNING, 12000);
				_events.ScheduleEvent(EVENT_FEAR, 10000);

			}

			if (me->HealthBelowPctDamaged(35, damage) && _events.IsInPhase(PHASE_TWO))
			{
				_events.SetPhase(PHASE_THREE);
				_events.ScheduleEvent(EVENT_ARCANE_BOMB, 5000);
				_events.ScheduleEvent(EVENT_ENRAGE, 15000);
				_events.ScheduleEvent(EVENT_ACID_BLAST, 6000);
				_events.ScheduleEvent(EVENT_ENRAGE, 20000);
				_events.ScheduleEvent(EVENT_BLIZZARD, 12000);
			}
		}

		void JustSummoned(Creature* summon) override
		{
			Summons.Summon(summon);

			switch (summon->GetEntry())
			{
			case NPC_PUSTELIGER_SCHRECKEN:
				if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 300.0f))
					summon->AI()->AttackStart(target); // I think it means the Tank !
				break;
			}
		}

		void JustDied(Unit* pPlayer)
		{
			char msg[250];
			snprintf(msg, 250, "|cffff0000[Boss System]|r Boss|cffff6060 Orrig|r wurde getoetet! Respawn in 6h 33min.", pPlayer->GetName());
			sWorld->SendGlobalText(msg, NULL);
		}

		

		void UpdateAI(uint32 diff) override
		{
			if (!UpdateVictim())
				return;

			_events.Update(diff);

			while (uint32 eventId = _events.ExecuteEvent())
			{
				switch (eventId)
				{
				case EVENT_SHADOW_SPIKE:
					DoCastAOE(SPELL_SHADOW_SPIKE);
					break;
				case EVENT_FEAR:
					DoCastToAllHostilePlayers(SPELL_FEAR);
					_events.ScheduleEvent(EVENT_FEAR, 8000);
					break;
				case EVENT_ENRAGE:
					Talk(SAY_RANDOM);
					DoCast(SPELL_ENRAGE);
					break;
				case EVENT_BLIZZARD:
					DoCastToAllHostilePlayers(SPELL_BLIZZARD);
					_events.ScheduleEvent(EVENT_BLIZZARD, 15000);
					break;
				case EVENT_POISON_SHOCK:
					Talk(SAY_BERSERK);
					DoCast(me, SPELL_POISON_SHOCK);
					_events.ScheduleEvent(EVENT_POISON_SHOCK, 12000);
					break;
				case EVENT_ARCANE_BOMB:
					Talk(SAY_ENRAGE);
					DoCast(me, SPELL_ARCANE_BOMB);
					_events.ScheduleEvent(EVENT_ARCANE_BOMB, 10000);
					break;
				case EVENT_ACID_BLAST:
					DoCast(me, SPELL_ACID_BLAST);
					_events.ScheduleEvent(EVENT_ACID_BLAST, 15000);
					break;
				case EVENT_CHAIN_LIGHTNING:
					DoCastToAllHostilePlayers(SPELL_CHAIN_LIGHTNING);
					_events.ScheduleEvent(EVENT_CHAIN_LIGHTNING, 10000);
					break;
		

				default:
					break;
				}
			}

			DoMeleeAttackIfReady();
		}

	private:
		EventMap _events;
		SummonList Summons;
	};

	CreatureAI* GetAI(Creature* creature) const override
	{
		return new orrigAI(creature);
	}



};

void AddSC_orrig()
{
	new orrig();
}