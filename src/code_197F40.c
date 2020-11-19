#include "common.h"

s32 count_targets(Actor* actor, s32 targetHomeIndex, s32 targetSelectionFlags) {
    BattleStatus* battleStatus = &gBattleStatus;

    battleStatus->targetHomeIndex = targetHomeIndex;
    battleStatus->currentTargetListFlags = targetSelectionFlags;
    player_create_target_list(actor);
    return actor->targetListLength;
}

s32 get_nearest_home_index(f32 x, f32 y, f32 z) {
    s32 xVal;
    s32 yVal;

    if (y < 40.0f) {
        xVal = 0;
    } else if (y < 85.0f) {
        xVal = 1;
    } else if (y < 100.0f) {
        xVal = 2;
    } else {
        xVal = 3;
    }

    if (x < 25.0f) {
        yVal = 0;
    } else if (x < 65.0f) {
        yVal = 1;
    } else if (x < 105.0f) {
        yVal = 2;
    } else {
        yVal = 3;
    }

    return yVal | (xVal << 2);
}

INCLUDE_ASM(void, "code_197F40", set_goal_pos_to_part, f32* goalPos, ActorId target, s32 partIndex);

INCLUDE_ASM(s32, "code_197F40", set_part_goal_to_actor_part);

void set_actor_current_position(ActorId actorID, f32 x, f32 y, f32 z) {
    Actor* actor = get_actor(actorID);

    actor->currentPos.x = x;
    actor->currentPos.y = y;
    actor->currentPos.z = z;
}

INCLUDE_ASM(s32, "code_197F40", set_part_absolute_position);

void set_actor_home_position(ActorId actorID, f32 x, f32 y, f32 z) {
    Actor* actor = get_actor(actorID);

    actor->homePos.x = x;
    actor->homePos.y = y;
    actor->homePos.z = z;
}

INCLUDE_ASM(Actor*, "code_197F40", get_actor, s32 actorID);

INCLUDE_ASM(s32, "code_197F40", LoadBattleSection);

ApiStatus GetBattlePhase(ScriptInstance* script, s32 isInitialCall) {
    set_variable(script, *script->ptrReadPos, gBattleStatus.battlePhase);
    return ApiStatus_DONE2;
}

ApiStatus GetLastElement(ScriptInstance* script, s32 isInitialCall) {
    set_variable(script, *script->ptrReadPos, gBattleStatus.currentAttackElement);
    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "code_197F40", func_80269E80);

INCLUDE_ASM(s32, "code_197F40", func_80269EAC);

ApiStatus SetGoalToHome(ScriptInstance* script, s32 isInitialCall) {
    ActorId actorID = get_variable(script, *script->ptrReadPos);
    Actor* actor;

    if (actorID == ActorId_SELF) {
        actorID = script->owner1.actorID;
    }

    actor = get_actor(actorID);
    actor->movePos.goal.x = actor->homePos.x;
    actor->movePos.goal.y = actor->homePos.y;
    actor->movePos.goal.z = actor->homePos.z;

    return ApiStatus_DONE2;
}

ApiStatus SetIdleGoalToHome(ScriptInstance* script, s32 isInitialCall) {
    ActorId actorID = get_variable(script, *script->ptrReadPos);
    Actor* actor;

    if (actorID == ActorId_SELF) {
        actorID = script->owner1.actorID;
    }

    actor = get_actor(actorID);
    actor->flyGoalPos.x = actor->homePos.x;
    actor->flyGoalPos.y = actor->homePos.y;
    actor->flyGoalPos.z = actor->homePos.z;

    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "code_197F40", SetGoalToIndex);

ApiStatus GetIndexFromPos(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorId actorID = get_variable(script, *args++);
    s32 a1 = *args++;
    Actor* actor;

    if (actorID == ActorId_SELF) {
        actorID = script->owner1.actorID;
    }

    actor = get_actor(actorID);
    set_variable(script, a1, get_nearest_home_index(actor->currentPos.x, actor->currentPos.y, actor->currentPos.z));

    return ApiStatus_DONE2;
}

ApiStatus GetIndexFromHome(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorId actorID = get_variable(script, *args++);
    s32 a1 = *args++;
    Actor* actor;

    if (actorID == ActorId_SELF) {
        actorID = script->owner1.actorID;
    }

    actor = get_actor(actorID);
    set_variable(script, a1, get_nearest_home_index(actor->homePos.x, actor->homePos.y, actor->homePos.z));

    return ApiStatus_DONE2;
}

ApiStatus CountPlayerTargets(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorId actorID = get_variable(script, *args++);
    s32 targetSelectionFlags = *args++;
    s32 outVar = *args++;
    Actor* actor;

    if (actorID == ActorId_SELF) {
        actorID = script->owner1.actorID;
    }

    actor = get_actor(actorID);
    set_variable(script, outVar, count_targets(actor, get_nearest_home_index(actor->currentPos.x, actor->currentPos.y,
                 actor->currentPos.z), targetSelectionFlags));

    return ApiStatus_DONE2;
}

ApiStatus ForceHomePos(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorId actorID = get_variable(script, *args++);
    f32 x, y, z;
    Actor* actor;

    if (actorID == ActorId_SELF) {
        actorID = script->owner1.actorID;
    }

    x = get_variable(script, *args++);
    y = get_variable(script, *args++);
    z = get_variable(script, *args++);

    actor = get_actor(actorID);
    actor->homePos.x = x;
    actor->currentPos.x = x;
    actor->homePos.y = y;
    actor->currentPos.y = y;
    actor->homePos.z = z;
    actor->currentPos.z = z;

    return ApiStatus_DONE2;
}

ApiStatus SetHomePos(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorId actorID = get_variable(script, *args++);
    f32 x, y, z;
    Actor* actor;

    if (actorID == ActorId_SELF) {
        actorID = script->owner1.actorID;
    }

    x = get_variable(script, *args++);
    y = get_variable(script, *args++);
    z = get_variable(script, *args++);

    actor = get_actor(actorID);
    actor->homePos.x = x;
    actor->homePos.y = y;
    actor->homePos.z = z;

    return ApiStatus_DONE2;
}

ApiStatus SetGoalToTarget(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    ActorId actorID = get_variable(script, *args++);
    Actor* actor;

    if (actorID == ActorId_SELF) {
        actorID = script->owner1.actorID;
    }
    actor = get_actor(actorID);

    set_goal_pos_to_part(&actor->movePos, actor->targetActorID, actor->targetPartIndex);

    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "code_197F40", SetPartGoalToTarget);

INCLUDE_ASM(s32, "code_197F40", SetGoalToFirstTarget);

INCLUDE_ASM(s32, "code_197F40", SetGoalPos);

INCLUDE_ASM(s32, "code_197F40", SetIdleGoal);

INCLUDE_ASM(s32, "code_197F40", AddGoalPos);

INCLUDE_ASM(s32, "code_197F40", GetGoalPos);

INCLUDE_ASM(s32, "code_197F40", GetIdleGoal);

INCLUDE_ASM(s32, "code_197F40", GetPartTarget);

INCLUDE_ASM(s32, "code_197F40", GetActorPos);

INCLUDE_ASM(s32, "code_197F40", GetPartOffset);

INCLUDE_ASM(s32, "code_197F40", GetPartPos);

INCLUDE_ASM(s32, "code_197F40", GetHomePos);

INCLUDE_ASM(s32, "code_197F40", SetActorPos);

INCLUDE_ASM(s32, "code_197F40", SetPartPos);

INCLUDE_ASM(s32, "code_197F40", SetEnemyTargetOffset);

INCLUDE_ASM(s32, "code_197F40", SetAnimation);

INCLUDE_ASM(s32, "code_197F40", GetAnimation);

INCLUDE_ASM(s32, "code_197F40", SetAnimationRate);

INCLUDE_ASM(s32, "code_197F40", SetActorYaw);

INCLUDE_ASM(s32, "code_197F40", GetActorYaw);

INCLUDE_ASM(s32, "code_197F40", SetPartYaw);

INCLUDE_ASM(s32, "code_197F40", GetPartYaw);

INCLUDE_ASM(s32, "code_197F40", SetActorJumpGravity);

INCLUDE_ASM(s32, "code_197F40", SetActorIdleJumpGravity);

INCLUDE_ASM(s32, "code_197F40", SetActorSpeed);

INCLUDE_ASM(s32, "code_197F40", SetActorIdleSpeed);

INCLUDE_ASM(s32, "code_197F40", SetPartJumpGravity);

INCLUDE_ASM(s32, "code_197F40", SetPartMoveSpeed);

INCLUDE_ASM(s32, "code_197F40", SetJumpAnimations);

INCLUDE_ASM(s32, "code_197F40", AddActorPos);

INCLUDE_ASM(s32, "code_197F40", SetActorDispOffset);

INCLUDE_ASM(s32, "code_197F40", GetPartDispOffset);

INCLUDE_ASM(s32, "code_197F40", SetPartDispOffset);

INCLUDE_ASM(s32, "code_197F40", AddPartDispOffset);

INCLUDE_ASM(s32, "code_197F40", func_8026BF48);

INCLUDE_ASM(s32, "code_197F40", GetActorVar);

INCLUDE_ASM(s32, "code_197F40", SetActorVar);

INCLUDE_ASM(s32, "code_197F40", AddActorVar);

INCLUDE_ASM(s32, "code_197F40", GetPartMovementVar);

INCLUDE_ASM(s32, "code_197F40", SetPartMovementVar);

INCLUDE_ASM(s32, "code_197F40", AddPartMovementVar);

INCLUDE_ASM(s32, "code_197F40", SetActorRotation);

INCLUDE_ASM(s32, "code_197F40", SetActorRotationOffset);

INCLUDE_ASM(s32, "code_197F40", GetActorRotation);

INCLUDE_ASM(s32, "code_197F40", SetPartRotation);

INCLUDE_ASM(s32, "code_197F40", SetPartRotationOffset);

INCLUDE_ASM(s32, "code_197F40", GetPartRotation);

INCLUDE_ASM(s32, "code_197F40", SetActorScale);

INCLUDE_ASM(s32, "code_197F40", SetActorScaleModifier);

INCLUDE_ASM(s32, "code_197F40", GetActorScale);

INCLUDE_ASM(s32, "code_197F40", SetPartScale);

INCLUDE_ASM(s32, "code_197F40", GetPartScale);

ApiStatus GetBattleFlags(ScriptInstance* script, s32 isInitialCall) {
    set_variable(script, *script->ptrReadPos, gBattleStatus.flags1);
    return ApiStatus_DONE2;
}

ApiStatus SetBattleFlagBits(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    Bytecode a0 = *args++;

    if (get_variable(script, *args)) {
        gBattleStatus.flags1 |= a0;
    } else {
        gBattleStatus.flags1 &= ~a0;
    }

    return ApiStatus_DONE2;
}

ApiStatus GetBattleFlags2(ScriptInstance* script, s32 isInitialCall) {
    set_variable(script, *script->ptrReadPos, gBattleStatus.flags2);
    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "code_197F40", SetBattleFlagBits2);

INCLUDE_ASM(s32, "code_197F40", SetActorFlags);

INCLUDE_ASM(s32, "code_197F40", SetActorFlagBits);

INCLUDE_ASM(s32, "code_197F40", GetActorFlags);

INCLUDE_ASM(s32, "code_197F40", SetPartFlags);

INCLUDE_ASM(s32, "code_197F40", SetPartFlagBits);

INCLUDE_ASM(s32, "code_197F40", SetPartTargetFlags);

INCLUDE_ASM(s32, "code_197F40", SetPartTargetFlagBits);

INCLUDE_ASM(s32, "code_197F40", GetPartFlags);

INCLUDE_ASM(s32, "code_197F40", GetPartTargetFlags);

INCLUDE_ASM(s32, "code_197F40", SetPartEventFlags);

INCLUDE_ASM(s32, "code_197F40", SetPartEventBits);

INCLUDE_ASM(s32, "code_197F40", GetPartEventFlags);

INCLUDE_ASM(s32, "code_197F40", func_8026D51C);

INCLUDE_ASM(s32, "code_197F40", func_8026D5A4);

INCLUDE_ASM(s32, "code_197F40", HPBarToHome);

INCLUDE_ASM(s32, "code_197F40", HPBarToCurrent);

INCLUDE_ASM(s32, "code_197F40", func_8026D8EC);

INCLUDE_ASM(s32, "code_197F40", func_8026D940);

INCLUDE_ASM(s32, "code_197F40", func_8026DA94);

INCLUDE_ASM(s32, "code_197F40", SummonEnemy);

ApiStatus GetOwnerID(ScriptInstance* script, s32 isInitialCall) {
    set_variable(script, *script->ptrReadPos, script->owner1.actorID);
    return ApiStatus_DONE2;
}

ApiStatus SetOwnerID(ScriptInstance* script, s32 isInitialCall) {
    script->owner1.actorID = get_variable(script, *script->ptrReadPos);
    return ApiStatus_DONE2;
}

ApiStatus ActorExists(ScriptInstance* script, s32 isInitialCall) {
    Bytecode isExist;
    Actor* partner = gBattleStatus.partnerActor;
    Bytecode* args = script->ptrReadPos;
    ActorId actorID = get_variable(script, *args++);

    if (actorID == ActorId_SELF) {
        actorID = script->owner1.actorID;
    }

    isExist = get_actor(actorID) != NULL;
    if ((actorID == ActorId_PARTNER) && (partner == NULL)) {
        isExist = FALSE;
    }

    set_variable(script, *args++, isExist);
    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "code_197F40", func_8026DEF0);

INCLUDE_ASM(s32, "code_197F40", func_8026DF88);

INCLUDE_ASM(s32, "code_197F40", func_8026E020);

ApiStatus func_8026E038(ScriptInstance* script, s32 isInitialCall) {
    gBattleStatus.unk_74 = *script->ptrReadPos;
    return ApiStatus_DONE2;
}

ApiStatus SetBattleInputMask(ScriptInstance* script, s32 isInitialCall) {
    gBattleStatus.inputBitmask = *script->ptrReadPos;
    return ApiStatus_DONE2;
}

ApiStatus SetBattleInputButtons(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    BattleStatus* battleStatus = &gBattleStatus;
    s32 currentButtonsDown = *args++;
    s32 currentButtonsPressed = *args++;
    s32 currentButtonsHeld = *args;

    battleStatus->currentButtonsDown = currentButtonsDown;
    battleStatus->currentButtonsPressed = currentButtonsPressed;
    battleStatus->currentButtonsHeld = currentButtonsHeld;

    return ApiStatus_DONE2;
}

ApiStatus CheckButtonPress(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    Bytecode buttons = *args++;
    Bytecode out = *args;
    s32 buttonsPressed = gBattleStatus.currentButtonsPressed;

    set_variable(script, out, (buttonsPressed & buttons) != 0);
    return ApiStatus_DONE2;
}

ApiStatus CheckButtonHeld(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    Bytecode buttons = *args++;
    Bytecode out = *args;
    s32 buttonsHeld = gBattleStatus.currentButtonsHeld;

    set_variable(script, out, (buttonsHeld & buttons) != 0);
    return ApiStatus_DONE2;
}

ApiStatus CheckButtonDown(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    Bytecode buttons = *args++;
    Bytecode out = *args;
    s32 buttonsDown = gBattleStatus.currentButtonsDown;

    set_variable(script, out, (buttonsDown & buttons) != 0);
    return ApiStatus_DONE2;
}

ApiStatus GetBattleState(ScriptInstance* script, s32 isInitialCall) {
    set_variable(script, *script->ptrReadPos, gBattleState);
    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "code_197F40", func_8026E16C);

INCLUDE_ASM(s32, "code_197F40", func_8026E198);

INCLUDE_ASM(s32, "code_197F40", func_8026E208);

INCLUDE_ASM(s32, "code_197F40", func_8026E260);

ApiStatus PlayerCreateTargetList(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    Actor* actor = get_actor(script->owner1.actorID);

    gBattleStatus.currentTargetListFlags = *args;
    player_create_target_list(actor);

    return ApiStatus_DONE2;
}

ApiStatus EnemyCreateTargetList(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    Actor* actor = get_actor(script->owner1.actorID);

    gBattleStatus.currentTargetListFlags = *args;
    enemy_create_target_list(actor);

    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "code_197F40", InitTargetIterator);

INCLUDE_ASM(s32, "code_197F40", SetOwnerTarget);

INCLUDE_ASM(s32, "code_197F40", ChooseNextTarget);

INCLUDE_ASM(s32, "code_197F40", func_8026E558);

ApiStatus GetTargetListLength(ScriptInstance* script) {
    Bytecode* args = script->ptrReadPos;

    set_variable(script, *args, get_actor(script->owner1.actorID)->targetListLength);
    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "code_197F40", GetOwnerTarget);

INCLUDE_ASM(s32, "code_197F40", func_8026E914);

ApiStatus GetAttackerActorID(ScriptInstance* script, s32 isInitialCall) {
    set_variable(script, *script->ptrReadPos, gBattleStatus.attackerActorID);
    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "code_197F40", func_8026E9A0);

INCLUDE_ASM(s32, "code_197F40", GetDistanceToGoal);

INCLUDE_ASM(s32, "code_197F40", func_8026EA7C);

INCLUDE_ASM(s32, "code_197F40", func_8026EB20);

INCLUDE_ASM(s32, "code_197F40", func_8026EBF8);

INCLUDE_ASM(s32, "code_197F40", func_8026ED20);

INCLUDE_ASM(s32, "code_197F40", func_8026EDE4);

INCLUDE_ASM(s32, "code_197F40", AddActorDecoration);

INCLUDE_ASM(s32, "code_197F40", RemoveActorDecoration);

INCLUDE_ASM(s32, "code_197F40", ModifyActorDecoration);

INCLUDE_ASM(s32, "code_197F40", UseIdleAnimation);

INCLUDE_ASM(s32, "code_197F40", func_8026F1A0);

INCLUDE_ASM(s32, "code_197F40", GetStatusFlags);

ApiStatus RemovePlayerBuffs(ScriptInstance* script, s32 isInitialCall) {
    remove_player_buffs(*script->ptrReadPos);
    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "code_197F40", SetPartAlpha);

INCLUDE_ASM(s32, "code_197F40", CreatePartShadow);

INCLUDE_ASM(s32, "code_197F40", RemovePartShadow);

INCLUDE_ASM(s32, "code_197F40", func_8026F60C);

INCLUDE_ASM(s32, "code_197F40", SetBattleVar);

INCLUDE_ASM(s32, "code_197F40", GetBattleVar);

INCLUDE_ASM(s32, "code_197F40", ResetAllActorSounds);

INCLUDE_ASM(s32, "code_197F40", SetActorSounds);

INCLUDE_ASM(s32, "code_197F40", ResetActorSounds);

INCLUDE_ASM(s32, "code_197F40", SetPartSounds);

INCLUDE_ASM(s32, "code_197F40", SetActorType);

INCLUDE_ASM(s32, "code_197F40", ShowShockEffect);

INCLUDE_ASM(s32, "code_197F40", GetActorAttackBoost);

INCLUDE_ASM(s32, "code_197F40", GetActorDefenseBoost);

INCLUDE_ASM(s32, "code_197F40", BoostAttack);

INCLUDE_ASM(s32, "code_197F40", BoostDefense);

INCLUDE_ASM(s32, "code_197F40", VanishActor);

INCLUDE_ASM(s32, "code_197F40", ElectrifyActor);

INCLUDE_ASM(s32, "code_197F40", HealActor);

INCLUDE_ASM(s32, "code_197F40", WaitForBuffDone);

INCLUDE_ASM(s32, "code_197F40", CopyBuffs);

INCLUDE_ASM(s32, "code_197F40", func_80271210);

INCLUDE_ASM(s32, "code_197F40", func_80271258);

INCLUDE_ASM(s32, "code_197F40", func_802712A0);

INCLUDE_ASM(s32, "code_197F40", func_80271328);

INCLUDE_ASM(s32, "code_197F40", func_802713B0);

INCLUDE_ASM(s32, "code_197F40", func_8027143C);

INCLUDE_ASM(s32, "code_197F40", func_80271484);

INCLUDE_ASM(s32, "code_197F40", func_80271588);

INCLUDE_ASM(s32, "code_197F40", dispatch_event_player);

INCLUDE_ASM(s32, "code_197F40", dispatch_event_player_continue_turn);

INCLUDE_ASM(s32, "code_197F40", calc_player_test_enemy);

INCLUDE_ASM(s32, "code_197F40", calc_player_damage_enemy);

INCLUDE_ASM(s32, "code_197F40", dispatch_damage_event_player);

void dispatch_damage_event_player_0(s32 damageAmount, Event event) {
    BattleStatus* battleStatus = &gBattleStatus;

    battleStatus->currentAttackElement = Element_END;
    battleStatus->unk_19A = 0;
    dispatch_damage_event_player(damageAmount, event, FALSE);
}

void dispatch_damage_event_player_1(s32 damageAmount, Event event) {
    dispatch_damage_event_player(damageAmount, event, TRUE);
}

INCLUDE_ASM(s32, "code_197F40", GetMenuSelection);

INCLUDE_ASM(s32, "code_197F40", func_80273444);

INCLUDE_ASM(s32, "code_197F40", PlayerFallToGoal);

INCLUDE_ASM(s32, "code_197F40", PlayerLandJump);

INCLUDE_ASM(s32, "code_197F40", PlayerRunToGoal);

INCLUDE_ASM(s32, "code_197F40", CancelablePlayerRunToGoal);

ApiStatus GetPlayerHP(ScriptInstance* script, s32 isInitialCall) {
    set_variable(script, *script->ptrReadPos, gPlayerData.curHP);
    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "code_197F40", PlayerDamageEnemy);

INCLUDE_ASM(s32, "code_197F40", PlayerPowerBounceEnemy);

INCLUDE_ASM(s32, "code_197F40", PlayerTestEnemy);

INCLUDE_ASM(s32, "code_197F40", DispatchDamagePlayerEvent);

INCLUDE_ASM(s32, "code_197F40", EnablePlayerBlur);

INCLUDE_ASM(s32, "code_197F40", func_802749D8);

INCLUDE_ASM(s32, "code_197F40", func_802749F8);

INCLUDE_ASM(s32, "code_197F40", func_80274A18);

INCLUDE_ASM(s32, "code_197F40", func_802752AC);

INCLUDE_ASM(s32, "code_197F40", func_80275F00);

INCLUDE_ASM(s32, "code_197F40", DidActionSucceed);

INCLUDE_ASM(s32, "code_197F40", func_80276EFC);

INCLUDE_ASM(s32, "code_197F40", func_80276F1C);
