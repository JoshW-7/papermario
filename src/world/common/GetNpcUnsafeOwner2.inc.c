#include "common.h"

static ApiStatus GetNpcUnsafeOwner2(ScriptInstance* script, s32 isInitialCall) {
    get_npc_unsafe(script->owner2.npc);
    return ApiStatus_BLOCK;
}
