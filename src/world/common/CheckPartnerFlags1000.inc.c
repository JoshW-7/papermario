#include "common.h"

static ApiStatus CheckPartnerFlags1000(ScriptInstance* script, s32 isInitialCall) {
    return ((get_npc_unsafe(NpcId_PARTNER)->flags & 0x1000) != 0) * ApiStatus_DONE2;
}
