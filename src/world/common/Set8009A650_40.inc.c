#include "common.h"

static ApiStatus Set8009A650_40(ScriptInstance* script, s32 isInitialCall) {
    D_8009A650[0] |= 0x40;
    return ApiStatus_DONE2;
}
