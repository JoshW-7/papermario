#include "common.h"
#include "nu/nusys.h"

INCLUDE_ASM(u8, "os/nusys/nuSiMgr", nuSiMgrInit);

INCLUDE_ASM(s32, "os/nusys/nuSiMgr", nuSiSendMesg, NUScMsg mesg, void* dataPtr);

void nuSiMgrStop(void) {
    nuSiSendMesg(NU_SI_STOP_MGR_MSG, NULL);
}

INCLUDE_ASM(void, "os/nusys/nuSiMgr", nuSiMgrRestart);

INCLUDE_ASM(s32, "os/nusys/nuSiMgr", nuSiMgrThread);
