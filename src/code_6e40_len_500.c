#include "common.h"

INCLUDE_ASM("code_6e40_len_500", initialize_curtains)

void update_curtains(void) {
}

INCLUDE_ASM("code_6e40_len_500", render_curtains);

INCLUDE_ASM("code_6e40_len_500", set_curtain_scale_goal);

INCLUDE_ASM("code_6e40_len_500", set_curtain_scale);

INCLUDE_ASM("code_6e40_len_500", set_curtain_draw_callback);

INCLUDE_ASM("code_6e40_len_500", set_curtain_fade_goal);

INCLUDE_ASM("code_6e40_len_500", set_curtain_fade);
