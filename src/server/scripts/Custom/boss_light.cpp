#include "ScriptPCH.h"
#include "ObjectMgr.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "Player.h"

enum Spells
{
	SPELL_ALPTRAUM = 50341,
	SPELL_ENRAGE = 64487,
	SPELL_ARKANE_AUFLADUNG = 41349,
	SPELL_FEUERBALL = 388369,
	SPELL_BLITZENTLADUNG = 39028,
	SPELL_BLIZZARD = 70362,
	SPELL_BLUTGERUCH = 72769,
	SPELL_BRECHENDE_WELLE = 57652,
	SPELL_DEGENERATION = 53605,
	SPELL_DURCHDRINGENDE_KÄLTE = 66013,
	SPELL_EISBLITZ = 31249,
	SPELL_ERNEUERUNG = 66177,
	SPELL_FINGER = 31984

};

enum Events
{
	EVENT_ALPTRAUM = 1,
	EVENT_ENRAGE = 2,
	EVENT_ARKANE_AUFLADUNG = 3,
	EVENT_FEUERBALL= 4,
	EVENT_BLITZENTLADUNG = 5,
	EVENT_BLIZZARD = 6,
	EVENT_BLUTGERUCH = 7,
	EVENT_BRECHENDE_WELLE = 8,
	EVENT_DEGENERATION = 9,
	EVENT_DURCHDRINGENDE_KÄLTE = 10,
	EVENT_EISBLITZ = 11,
	EVENT_ERNEUERUNG = 12,
	EVENT_FINGER = 13
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

class light : public CreatureScript
{
public:
	light() : CreatureScript("light") { }

	struct lightAI : public ScriptedAI
	{
		lightAI(Creature* creature) : ScriptedAI(creature), Summons(me) { }

		void Reset() override
		{
			_events.Reset();
			Summons.DespawnAll();
		}

		void EnterCombat(Unit* /*who*/) override
		{
			Talk(SAY_AGGRO);
			_events.SetPhase(PHASE_ONE);
			_events.ScheduleEvent(EVENT_ALPTRAUM, 8000);
			_events.ScheduleEvent(EVENT_ARKANE_AUFLADUNG, 10000);
			_events.ScheduleEvent(EVENT_FEUERBALL, 25000);
			_events.ScheduleEvent(EVENT_BLITZENTLADUNG, 12000);
			_events.ScheduleEvent(EVENT_FINGER, 30000);

		}

		void DamageTaken(Unit* /*attacker*/, uint32& damage) override
		{
			if (me->HealthBelowPctDamaged(75, damage) && _events.IsInPhase(PHASE_ONE))
			{
				_events.SetPhase(PHASE_TWO);
				_events.ScheduleEvent(EVENT_BLIZZARD, 15000);
				_events.ScheduleEvent(SPELL_BLUTGERUCH, 8000);
				_events.ScheduleEvent(EVENT_BRECHENDE_WELLE, 12000);
				_events.ScheduleEvent(EVENT_DEGENERATION, 10000);
				_events.ScheduleEvent(EVENT_EISBLITZ, 25000);
				_events.ScheduleEvent(EVENT_ERNEUERUNG, 20000);
				_events.ScheduleEvent(EVENT_FINGER, 30000);

			}

			if (me->HealthBelowPctDamaged(35, damage) && _events.IsInPhase(PHASE_TWO))
			{
				_events.SetPhase(PHASE_THREE);
				_events.ScheduleEvent(EVENT_BLUTGERUCH, 8000);
				_events.ScheduleEvent(EVENT_DEGENERATION, 6000);
				_events.ScheduleEvent(EVENT_BLIZZARD, 12000);
				_events.ScheduleEvent(EVENT_ARKANE_AUFLADUNG, 10000);
				_events.ScheduleEvent(EVENT_ENRAGE, 120000);

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
			snprintf(msg, 250, "|cffff0000[Boss System]|r Boss|cffff6060 Lightshadow|r wurde getoetet! Respawn in 4h 33min.", pPlayer->GetName());
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
				case EVENT_ALPTRAUM:
					DoCastToAllHostilePlayers(SPELL_ALPTRAUM);
					_events.ScheduleEvent(EVENT_ALPTRAUM, 10000);
					break;
				case EVENT_ENRAGE:
					DoCastToAllHostilePlayers(SPELL_ENRAGE);
					break;
				case EVENT_ARKANE_AUFLADUNG:
					Talk(SAY_RANDOM);
					DoCastToAllHostilePlayers(SPELL_ARKANE_AUFLADUNG);
					_events.ScheduleEvent(EVENT_BLIZZARD, 15000);
					break;
				case EVENT_FEUERBALL:
					DoCastToAllHostilePlayers(SPELL_FEUERBALL);
					_events.ScheduleEvent(EVENT_FINGER, 10000);
					break;
				case EVENT_BLITZENTLADUNG:
					Talk(SAY_BERSERK);
					DoCastToAllHostilePlayers(SPELL_BLITZENTLADUNG);
					_events.ScheduleEvent(EVENT_BLITZENTLADUNG, 12000);
					break;
				case EVENT_BLIZZARD:
					Talk(SAY_ENRAGE);
					DoCastToAllHostilePlayers(SPELL_BLIZZARD);
					_events.ScheduleEvent(EVENT_ARKANE_AUFLADUNG, 25000);
					break;
				case EVENT_BLUTGERUCH:
					DoCastToAllHostilePlayers(SPELL_BLUTGERUCH);
					_events.ScheduleEvent(EVENT_BLUTGERUCH, 18000);
					break;
				case EVENT_BRECHENDE_WELLE:
					DoCastVictim(SPELL_BRECHENDE_WELLE);
					_events.ScheduleEvent(EVENT_BRECHENDE_WELLE, 12000);
					break;
				case EVENT_DEGENERATION:
					DoCast(SPELL_DEGENERATION);
					_events.ScheduleEvent(EVENT_DEGENERATION, 20000);
					break;
				case EVENT_DURCHDRINGENDE_KÄLTE:
					DoCastToAllHostilePlayers(SPELL_DURCHDRINGENDE_KÄLTE);
					_events.ScheduleEvent(EVENT_DURCHDRINGENDE_KÄLTE, 12000);
					break;
				case EVENT_EISBLITZ:
					DoCastToAllHostilePlayers(SPELL_EISBLITZ);
					_events.ScheduleEvent(EVENT_ERNEUERUNG, 25000);
					break;
				case EVENT_ERNEUERUNG:
					DoCast(me,SPELL_ERNEUERUNG);
					_events.ScheduleEvent(EVENT_EISBLITZ, 25000);
					break;
				case EVENT_FINGER:
					DoCast(me, SPELL_FINGER);
					_events.ScheduleEvent(EVENT_FINGER, 25000);
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
		return new lightAI(creature);
	}



};

void AddSC_light()
{
	new light();
}