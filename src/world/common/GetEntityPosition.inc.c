#include "common.h"

static ApiStatus GetEntityPosition(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    Entity* entity = get_entity_by_index(get_variable(script, *args++));

    set_variable(script, *args++, entity->position.x);
    set_variable(script, *args++, entity->position.y);
    set_variable(script, *args++, entity->position.z);
    return ApiStatus_DONE2;
}
