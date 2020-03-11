#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/TFT_QRCODE.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/TFT_QRCODE.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../TFTMain.c ../TFTInit.c ../TFTDisplay.c ../TFTInt.c ../TFTVar.c ../qrcode.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/TFTMain.o ${OBJECTDIR}/_ext/1472/TFTInit.o ${OBJECTDIR}/_ext/1472/TFTDisplay.o ${OBJECTDIR}/_ext/1472/TFTInt.o ${OBJECTDIR}/_ext/1472/TFTVar.o ${OBJECTDIR}/_ext/1472/qrcode.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/TFTMain.o.d ${OBJECTDIR}/_ext/1472/TFTInit.o.d ${OBJECTDIR}/_ext/1472/TFTDisplay.o.d ${OBJECTDIR}/_ext/1472/TFTInt.o.d ${OBJECTDIR}/_ext/1472/TFTVar.o.d ${OBJECTDIR}/_ext/1472/qrcode.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/TFTMain.o ${OBJECTDIR}/_ext/1472/TFTInit.o ${OBJECTDIR}/_ext/1472/TFTDisplay.o ${OBJECTDIR}/_ext/1472/TFTInt.o ${OBJECTDIR}/_ext/1472/TFTVar.o ${OBJECTDIR}/_ext/1472/qrcode.o

# Source Files
SOURCEFILES=../TFTMain.c ../TFTInit.c ../TFTDisplay.c ../TFTInt.c ../TFTVar.c ../qrcode.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/TFT_QRCODE.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33FJ256MC710
MP_LINKER_FILE_OPTION=,--script="C:\Program Files (x86)\Microchip\xc16\v1.20\support\dsPIC33F\gld\p33FJ256MC710.gld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/TFTMain.o: ../TFTMain.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/TFTMain.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/TFTMain.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../TFTMain.c  -o ${OBJECTDIR}/_ext/1472/TFTMain.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/TFTMain.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/TFTMain.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/TFTInit.o: ../TFTInit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/TFTInit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/TFTInit.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../TFTInit.c  -o ${OBJECTDIR}/_ext/1472/TFTInit.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/TFTInit.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/TFTInit.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/TFTDisplay.o: ../TFTDisplay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/TFTDisplay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/TFTDisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../TFTDisplay.c  -o ${OBJECTDIR}/_ext/1472/TFTDisplay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/TFTDisplay.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/TFTDisplay.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/TFTInt.o: ../TFTInt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/TFTInt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/TFTInt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../TFTInt.c  -o ${OBJECTDIR}/_ext/1472/TFTInt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/TFTInt.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/TFTInt.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/TFTVar.o: ../TFTVar.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/TFTVar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/TFTVar.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../TFTVar.c  -o ${OBJECTDIR}/_ext/1472/TFTVar.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/TFTVar.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/TFTVar.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/qrcode.o: ../qrcode.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/qrcode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/qrcode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qrcode.c  -o ${OBJECTDIR}/_ext/1472/qrcode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/qrcode.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/qrcode.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1472/TFTMain.o: ../TFTMain.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/TFTMain.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/TFTMain.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../TFTMain.c  -o ${OBJECTDIR}/_ext/1472/TFTMain.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/TFTMain.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/TFTMain.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/TFTInit.o: ../TFTInit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/TFTInit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/TFTInit.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../TFTInit.c  -o ${OBJECTDIR}/_ext/1472/TFTInit.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/TFTInit.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/TFTInit.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/TFTDisplay.o: ../TFTDisplay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/TFTDisplay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/TFTDisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../TFTDisplay.c  -o ${OBJECTDIR}/_ext/1472/TFTDisplay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/TFTDisplay.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/TFTDisplay.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/TFTInt.o: ../TFTInt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/TFTInt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/TFTInt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../TFTInt.c  -o ${OBJECTDIR}/_ext/1472/TFTInt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/TFTInt.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/TFTInt.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/TFTVar.o: ../TFTVar.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/TFTVar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/TFTVar.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../TFTVar.c  -o ${OBJECTDIR}/_ext/1472/TFTVar.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/TFTVar.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/TFTVar.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/qrcode.o: ../qrcode.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/qrcode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/qrcode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../qrcode.c  -o ${OBJECTDIR}/_ext/1472/qrcode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/qrcode.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/qrcode.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/TFT_QRCODE.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    C:/Program\ Files\ (x86)/Microchip/xc16/v1.20/support/dsPIC33F/gld/p33FJ256MC710.gld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/TFT_QRCODE.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--library-path="C:/Program Files (x86)/Microchip/mplabc30/v3.25/support/dsPIC33F/gld",--library-path=".",--no-force-link,--smart-io,-Map="${DISTDIR}/TFT_Panel.X.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST)  
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/TFT_QRCODE.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   C:/Program\ Files\ (x86)/Microchip/xc16/v1.20/support/dsPIC33F/gld/p33FJ256MC710.gld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/TFT_QRCODE.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--library-path="C:/Program Files (x86)/Microchip/mplabc30/v3.25/support/dsPIC33F/gld",--library-path=".",--no-force-link,--smart-io,-Map="${DISTDIR}/TFT_Panel.X.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST)  
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/TFT_QRCODE.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
