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
SOURCEFILES_QUOTED_IF_SPACED=ECU_Layer/Chr_LCD/ecu_chr_lcd.c ECU_Layer/LED/ecu_led.c ECU_Layer/ecu_layer_init.c MCAL_Layer/GPIO/hal_gpio.c MCAL_Layer/Interrupts/EXTI/EXTI.c MCAL_Layer/Interrupts/GIE/GIE.c MCAL_Layer/Timers/timer.c application.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o ${OBJECTDIR}/MCAL_Layer/Timers/timer.o ${OBJECTDIR}/application.o
POSSIBLE_DEPFILES=${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o.d ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o.d ${OBJECTDIR}/MCAL_Layer/Timers/timer.o.d ${OBJECTDIR}/application.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o ${OBJECTDIR}/MCAL_Layer/Timers/timer.o ${OBJECTDIR}/application.o

# Source Files
SOURCEFILES=ECU_Layer/Chr_LCD/ecu_chr_lcd.c ECU_Layer/LED/ecu_led.c ECU_Layer/ecu_layer_init.c MCAL_Layer/GPIO/hal_gpio.c MCAL_Layer/Interrupts/EXTI/EXTI.c MCAL_Layer/Interrupts/GIE/GIE.c MCAL_Layer/Timers/timer.c application.c



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
${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o: ECU_Layer/Chr_LCD/ecu_chr_lcd.c  .generated_files/flags/default/3b25d570e057700bd8427911530e00b136f6751b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/Chr_LCD" 
	@${RM} ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d" -MT "${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d" -MT ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o -o ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o ECU_Layer/Chr_LCD/ecu_chr_lcd.c 
	
${OBJECTDIR}/ECU_Layer/LED/ecu_led.o: ECU_Layer/LED/ecu_led.c  .generated_files/flags/default/2de20ce3a51125aef460bddb2cf8cde60010d9ec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/LED" 
	@${RM} ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/LED/ecu_led.o.d" -MT "${OBJECTDIR}/ECU_Layer/LED/ecu_led.o.d" -MT ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o -o ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o ECU_Layer/LED/ecu_led.c 
	
${OBJECTDIR}/ECU_Layer/ecu_layer_init.o: ECU_Layer/ecu_layer_init.c  .generated_files/flags/default/7a77ec712e189d7e93079612618e2aec77e6eefe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer" 
	@${RM} ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d" -MT "${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d" -MT ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o -o ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o ECU_Layer/ecu_layer_init.c 
	
${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o: MCAL_Layer/GPIO/hal_gpio.c  .generated_files/flags/default/1af5526da9dd55c8dcf71c03e4676670bdc45f61 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/GPIO" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d" -MT "${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d" -MT ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o -o ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o MCAL_Layer/GPIO/hal_gpio.c 
	
${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o: MCAL_Layer/Interrupts/EXTI/EXTI.c  .generated_files/flags/default/3c7c5f3d5086dfdc38a12d52e9d8ec2870b64534 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d" -MT "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d" -MT ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o -o ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o MCAL_Layer/Interrupts/EXTI/EXTI.c 
	
${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o: MCAL_Layer/Interrupts/GIE/GIE.c  .generated_files/flags/default/fef146765da00c9cd990525cd2e5c59046b49e37 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Interrupts/GIE" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o.d" -MT "${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o.d" -MT ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o -o ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o MCAL_Layer/Interrupts/GIE/GIE.c 
	
${OBJECTDIR}/MCAL_Layer/Timers/timer.o: MCAL_Layer/Timers/timer.c  .generated_files/flags/default/cad6c0078e6f8a47fd9dcba9d178db9e67ca07b6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Timers" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Timers/timer.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Timers/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/Timers/timer.o.d" -MT "${OBJECTDIR}/MCAL_Layer/Timers/timer.o.d" -MT ${OBJECTDIR}/MCAL_Layer/Timers/timer.o -o ${OBJECTDIR}/MCAL_Layer/Timers/timer.o MCAL_Layer/Timers/timer.c 
	
${OBJECTDIR}/application.o: application.c  .generated_files/flags/default/8aebf2129403a385c460bd7f0f7cd8cb25034dcc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/application.o.d 
	@${RM} ${OBJECTDIR}/application.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/application.o.d" -MT "${OBJECTDIR}/application.o.d" -MT ${OBJECTDIR}/application.o -o ${OBJECTDIR}/application.o application.c 
	
else
${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o: ECU_Layer/Chr_LCD/ecu_chr_lcd.c  .generated_files/flags/default/295e5ea20846fd3f17fb276ffccb6f7a7b541235 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/Chr_LCD" 
	@${RM} ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d" -MT "${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d" -MT ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o -o ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o ECU_Layer/Chr_LCD/ecu_chr_lcd.c 
	
${OBJECTDIR}/ECU_Layer/LED/ecu_led.o: ECU_Layer/LED/ecu_led.c  .generated_files/flags/default/5ae4b0093c4467d035bc0f9d3d8d73a0fc251f84 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/LED" 
	@${RM} ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/LED/ecu_led.o.d" -MT "${OBJECTDIR}/ECU_Layer/LED/ecu_led.o.d" -MT ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o -o ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o ECU_Layer/LED/ecu_led.c 
	
${OBJECTDIR}/ECU_Layer/ecu_layer_init.o: ECU_Layer/ecu_layer_init.c  .generated_files/flags/default/cf1965b555c46394b8508849b864daf31f805234 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer" 
	@${RM} ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d" -MT "${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d" -MT ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o -o ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o ECU_Layer/ecu_layer_init.c 
	
${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o: MCAL_Layer/GPIO/hal_gpio.c  .generated_files/flags/default/e4237dcbc4d849c100d1195ae60a85bb2c737ea4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/GPIO" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d" -MT "${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d" -MT ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o -o ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o MCAL_Layer/GPIO/hal_gpio.c 
	
${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o: MCAL_Layer/Interrupts/EXTI/EXTI.c  .generated_files/flags/default/38e12d9de34142122fc8ef918b9e919f413cb4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d" -MT "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d" -MT ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o -o ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o MCAL_Layer/Interrupts/EXTI/EXTI.c 
	
${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o: MCAL_Layer/Interrupts/GIE/GIE.c  .generated_files/flags/default/9988e0e65bed8e14116f612ceef1612d70910174 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Interrupts/GIE" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o.d" -MT "${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o.d" -MT ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o -o ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o MCAL_Layer/Interrupts/GIE/GIE.c 
	
${OBJECTDIR}/MCAL_Layer/Timers/timer.o: MCAL_Layer/Timers/timer.c  .generated_files/flags/default/cd2af82d5c2d157d3852ad35339a4c58dd7aed36 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Timers" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Timers/timer.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Timers/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/Timers/timer.o.d" -MT "${OBJECTDIR}/MCAL_Layer/Timers/timer.o.d" -MT ${OBJECTDIR}/MCAL_Layer/Timers/timer.o -o ${OBJECTDIR}/MCAL_Layer/Timers/timer.o MCAL_Layer/Timers/timer.c 
	
${OBJECTDIR}/application.o: application.c  .generated_files/flags/default/b0098119decd6937ac732772adb15aef609cc330 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/application.o.d 
	@${RM} ${OBJECTDIR}/application.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/application.o.d" -MT "${OBJECTDIR}/application.o.d" -MT ${OBJECTDIR}/application.o -o ${OBJECTDIR}/application.o application.c 
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/Test_AVR.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/Test_AVR.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/Test_AVR.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1
	@${RM} ${DISTDIR}/Test_AVR.X.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/Test_AVR.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/Test_AVR.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/Test_AVR.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/Test_AVR.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
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
