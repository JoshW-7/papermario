#include "common.h"

INCLUDE_ASM(s32, "code_25f00_len_940", func_8004AB00);

INCLUDE_ASM(s32, "code_25f00_len_940", func_8004ADD0);

INCLUDE_ASM(s32, "code_25f00_len_940", func_8004AE08);

INCLUDE_ASM(s32, "code_25f00_len_940", nuAuDmaCallBack);

INCLUDE_ASM(s32, "code_25f00_len_940", nuAuDmaNew);

INCLUDE_ASM(s32, "code_25f00_len_940", nuAuCleanDMABuffers);

INCLUDE_ASM(s32, "code_25f00_len_940", func_8004B328);

void alLink(ALLink* element, ALLink* after) {
    element->next = after->next;
    element->prev = after;

    if (after->next != NULL) {
        after->next->prev = element;
    }
    after->next = element;
}

void alUnlink(ALLink* element) {
    if (element->next != NULL) {
        element->next->prev = element->prev;
    }

    if (element->prev != NULL) {
        element->prev->next = element->next;
    }
}
