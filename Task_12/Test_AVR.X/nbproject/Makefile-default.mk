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
FINAL_IMAGE=${DISTDIR}/Test_AVR.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Test_AVR.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=ECU_Layer/Chr_LCD/ecu_chr_lcd.c ECU_Layer/KEYPAD/ecu_keypad.c ECU_Layer/ecu_layer_init.c MCAL_Layer/GPIO/hal_gpio.c MCAL_Layer/Interrupts/EXTI/EXTI.c application.c ECU_Layer/BUTTON/ecu_button.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o ${OBJECTDIR}/ECU_Layer/KEYPAD/ecu_keypad.o ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o ${OBJECTDIR}/application.o ${OBJECTDIR}/ECU_Layer/BUTTON/ecu_button.o
POSSIBLE_DEPFILES=${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d ${OBJECTDIR}/ECU_Layer/KEYPAD/ecu_keypad.o.d ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d ${OBJECTDIR}/application.o.d ${OBJECTDIR}/ECU_Layer/BUTTON/ecu_button.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o ${OBJECTDIR}/ECU_Layer/KEYPAD/ecu_keypad.o ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o ${OBJECTDIR}/application.o ${OBJECTDIR}/ECU_Layer/BUTTON/ecu_button.o

# Source Files
SOURCEFILES=ECU_Layer/Chr_LCD/ecu_chr_lcd.c ECU_Layer/KEYPAD/ecu_keypad.c ECU_Layer/ecu_layer_init.c MCAL_Layer/GPIO/hal_gpio.c MCAL_Layer/Interrupts/EXTI/EXTI.c application.c ECU_Layer/BUTTON/ecu_button.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Test_AVR.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega32
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o: ECU_Layer/Chr_LCD/ecu_chr_lcd.c  .generated_files/flags/default/45244568462d952c24f5f8dde91a1d65a1a84f53 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/Chr_LCD" 
	@${RM} ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d" -MT "${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d" -MT ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o -o ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o ECU_Layer/Chr_LCD/ecu_chr_lcd.c 
	
${OBJECTDIR}/ECU_Layer/KEYPAD/ecu_keypad.o: ECU_Layer/KEYPAD/ecu_keypad.c  .generated_files/flags/default/6c3abe02b8580cfae4296edb4e1aa58c850a9867 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/KEYPAD" 
	@${RM} ${OBJECTDIR}/ECU_Layer/KEYPAD/ecu_keypad.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/KEYPAD/ecu_keypad.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/KEYPAD/ecu_keypad.o.d" -MT "${OBJECTDIR}/ECU_Layer/KEYPAD/ecu_keypad.o.d" -MT ${OBJECTDIR}/ECU_Layer/KEYPAD/ecu_keypad.o -o ${OBJECTDIR}/ECU_Layer/KEYPAD/ecu_keypad.o ECU_Layer/KEYPAD/ecu_keypad.c 
	
${OBJECTDIR}/ECU_Layer/ecu_layer_init.o: ECU_Layer/ecu_layer_init.c  .generated_files/flags/default/798b6fe019b9ab9329481b2a383810c876242cbf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer" 
	@${RM} ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d" -MT "${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d" -MT ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o -o ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o ECU_Layer/ecu_layer_init.c 
	
${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o: MCAL_Layer/GPIO/hal_gpio.c  .generated_files/flags/default/7d5979d813506d88c03cb131fb8bc7653a3675c7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/GPIO" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d" -MT "${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d" -MT ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o -o ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o MCAL_Layer/GPIO/hal_gpio.c 
	
${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o: MCAL_Layer/Interrupts/EXTI/EXTI.c  .generated_files/flags/default/f18f0e8488c9219071b638f3bd82205726e55b61 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d" -MT "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d" -MT ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o -o ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o MCAL_Layer/Interrupts/EXTI/EXTI.c 
	
${OBJECTDIR}/application.o: application.c  .generated_files/flags/default/b3e960f075fcaa74c262d7bbf2387ecc6bab7b71 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/application.o.d 
	@${RM} ${OBJECTDIR}/application.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/application.o.d" -MT "${OBJECTDIR}/application.o.d" -MT ${OBJECTDIR}/application.o -o ${OBJECTDIR}/application.o application.c 
	
${OBJECTDIR}/ECU_Layer/BUTTON/ecu_button.o: ECU_Layer/BUTTON/ecu_button.c  .generated_files/flags/default/5c66c513acb9e824f8adeb2073b1c1fd87337170 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/BUTTON" 
	@${RM} ${OBJECTDIR}/ECU_Layer/BUTTON/ecu_button.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/BUTTON/ecu_button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/BUTTON/ecu_button.o.d" -MT "${OBJECTDIR}/ECU_Layer/BUTTON/ecu_button.o.d" -MT ${OBJECTDIR}/ECU_Layer/BUTTON/ecu_button.o -o ${OBJECTDIR}/ECU_Layer/BUTTON/ecu_button.o ECU_Layer/BUTTON/ecu_button.c 
	
else
${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o: ECU_Layer/Chr_LCD/ecu_chr_lcd.c  .generated_files/flags/default/b007124befc8f38742fbca956d831533c9a95271 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/Chr_LCD" 
	@${RM} ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d" -MT "${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d" -MT ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o -o ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o ECU_Layer/Chr_LCD/ecu_chr_lcd.c 
	
${OBJECTDIR}/ECU_Layer/KEYPAD/ecu_keypad.o: ECU_Layer/KEYPAD/ecu_keypad.c  .generated_files/flags/default/57104a6313ed4878352552a809e7e280463fcb19 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/KEYPAD" 
	@${RM} ${OBJECTDIR}/ECU_Layer/KEYPAD/ecu_keypad.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/KEYPAD/ecu_keypad.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/KEYPAD/ecu_keypad.o.d" -MT "${OBJECTDIR}/ECU_Layer/KEYPAD/ecu_keypad.o.d" -MT ${OBJECTDIR}/ECU_Layer/KEYPAD/ecu_keypad.o -o ${OBJECTDIR}/ECU_Layer/KEYPAD/ecu_keypad.o ECU_Layer/KEYPAD/ecu_keypad.c 
	
${OBJECTDIR}/ECU_Layer/ecu_layer_init.o: ECU_Layer/ecu_layer_init.c  .generated_files/flags/default/b80769ad76595a9bd37f87bf961a9b2e2d10e7df .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer" 
	@${RM} ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d" -MT "${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d" -MT ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o -o ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o ECU_Layer/ecu_layer_init.c 
	
${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o: MCAL_Layer/GPIO/hal_gpio.c  .generated_files/flags/default/c43274a5967090a9df80ed5e946c98f2e88d5cb5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/GPIO" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d" -MT "${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d" -MT ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o -o ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o MCAL_Layer/GPIO/hal_gpio.c 
	
${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o: MCAL_Layer/Interrupts/EXTI/EXTI.c  .generated_files/flags/default/a3366f5f0602eb2df3e77812e70001c3d5f85456 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d" -MT "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d" -MT ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o -o ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o MCAL_Layer/Interrupts/EXTI/EXTI.c 
	
${OBJECTDIR}/application.o: application.c  .generated_files/flags/default/abd215347a0099e08deb4bd2eb37906321364482 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/application.o.d 
	@${RM} ${OBJECTDIR}/application.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/application.o.d" -MT "${OBJECTDIR}/application.o.d" -MT ${OBJECTDIR}/application.o -o ${OBJECTDIR}/application.o application.c 
	
${OBJECTDIR}/ECU_Layer/BUTTON/ecu_button.o: ECU_Layer/BUTTON/ecu_button.c  .generated_files/flags/default/4048601ed1313f42cd4d305858371847a8bb6c1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/BUTTON" 
	@${RM} ${OBJECTDIR}/ECU_Layer/BUTTON/ecu_button.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/BUTTON/ecu_button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/BUTTON/ecu_button.o.d" -MT "${OBJECTDIR}/ECU_Layer/BUTTON/ecu_button.o.d" -MT ${OBJECTDIR}/ECU_Layer/BUTTON/ecu_button.o -o ${OBJECTDIR}/ECU_Layer/BUTTON/ecu_button.o ECU_Layer/BUTTON/ecu_button.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Test_AVR.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/Test_AVR.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/Test_AVR.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/Test_AVR.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1
	@${RM} ${DISTDIR}/Test_AVR.X.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/Test_AVR.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/Test_AVR.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/Test_AVR.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/Test_AVR.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/Test_AVR.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/Test_AVR.X.${IMAGE_TYPE}.hex"
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
