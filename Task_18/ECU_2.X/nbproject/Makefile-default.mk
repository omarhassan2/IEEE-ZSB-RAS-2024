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
FINAL_IMAGE=${DISTDIR}/ECU_2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/ECU_2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=ECU_Layer/Chr_LCD/ecu_chr_lcd.c ECU_Layer/LED/ecu_led.c ECU_Layer/ecu_layer_init.c MCAL_Layer/GPIO/hal_gpio.c MCAL_Layer/Interrupts/EXTI/EXTI.c MCAL_Layer/Interrupts/GIE/GIE.c MCAL_Layer/Timers/timer.c MCAL_Layer/USART/USART_program.c application.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o ${OBJECTDIR}/MCAL_Layer/Timers/timer.o ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o ${OBJECTDIR}/application.o
POSSIBLE_DEPFILES=${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o.d ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o.d ${OBJECTDIR}/MCAL_Layer/Timers/timer.o.d ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o.d ${OBJECTDIR}/application.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o ${OBJECTDIR}/MCAL_Layer/Timers/timer.o ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o ${OBJECTDIR}/application.o

# Source Files
SOURCEFILES=ECU_Layer/Chr_LCD/ecu_chr_lcd.c ECU_Layer/LED/ecu_led.c ECU_Layer/ecu_layer_init.c MCAL_Layer/GPIO/hal_gpio.c MCAL_Layer/Interrupts/EXTI/EXTI.c MCAL_Layer/Interrupts/GIE/GIE.c MCAL_Layer/Timers/timer.c MCAL_Layer/USART/USART_program.c application.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/ECU_2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega32
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o: ECU_Layer/Chr_LCD/ecu_chr_lcd.c  .generated_files/flags/default/56d4b02917ecc7ee9c475af2b0a9957a81c7652a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/Chr_LCD" 
	@${RM} ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d" -MT "${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d" -MT ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o -o ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o ECU_Layer/Chr_LCD/ecu_chr_lcd.c 
	
${OBJECTDIR}/ECU_Layer/LED/ecu_led.o: ECU_Layer/LED/ecu_led.c  .generated_files/flags/default/3b25e5583f74606af85f65df175f70d17bba66e1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/LED" 
	@${RM} ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/LED/ecu_led.o.d" -MT "${OBJECTDIR}/ECU_Layer/LED/ecu_led.o.d" -MT ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o -o ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o ECU_Layer/LED/ecu_led.c 
	
${OBJECTDIR}/ECU_Layer/ecu_layer_init.o: ECU_Layer/ecu_layer_init.c  .generated_files/flags/default/8926b72ac8dccae8d64f052dbcf3634be595465f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer" 
	@${RM} ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d" -MT "${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d" -MT ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o -o ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o ECU_Layer/ecu_layer_init.c 
	
${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o: MCAL_Layer/GPIO/hal_gpio.c  .generated_files/flags/default/838704bf781aa55c67336e9df020d6a307e2ddf0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/GPIO" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d" -MT "${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d" -MT ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o -o ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o MCAL_Layer/GPIO/hal_gpio.c 
	
${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o: MCAL_Layer/Interrupts/EXTI/EXTI.c  .generated_files/flags/default/c3a14489a923e2c0d7454fc6532f3a7602581be8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d" -MT "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d" -MT ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o -o ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o MCAL_Layer/Interrupts/EXTI/EXTI.c 
	
${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o: MCAL_Layer/Interrupts/GIE/GIE.c  .generated_files/flags/default/2f0d632d232740cf15ed5a8eac3b1db599cb3500 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Interrupts/GIE" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o.d" -MT "${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o.d" -MT ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o -o ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o MCAL_Layer/Interrupts/GIE/GIE.c 
	
${OBJECTDIR}/MCAL_Layer/Timers/timer.o: MCAL_Layer/Timers/timer.c  .generated_files/flags/default/15ee8e0ac81da2f6df3e9337c94f1f40772835dc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Timers" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Timers/timer.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Timers/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/Timers/timer.o.d" -MT "${OBJECTDIR}/MCAL_Layer/Timers/timer.o.d" -MT ${OBJECTDIR}/MCAL_Layer/Timers/timer.o -o ${OBJECTDIR}/MCAL_Layer/Timers/timer.o MCAL_Layer/Timers/timer.c 
	
${OBJECTDIR}/MCAL_Layer/USART/USART_program.o: MCAL_Layer/USART/USART_program.c  .generated_files/flags/default/c81979b913572cfb6d0215b74166aa30988d1419 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/USART" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/USART/USART_program.o.d" -MT "${OBJECTDIR}/MCAL_Layer/USART/USART_program.o.d" -MT ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o -o ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o MCAL_Layer/USART/USART_program.c 
	
${OBJECTDIR}/application.o: application.c  .generated_files/flags/default/4eca19c9573dd69dac097cbf3274b01898c8f4b8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/application.o.d 
	@${RM} ${OBJECTDIR}/application.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/application.o.d" -MT "${OBJECTDIR}/application.o.d" -MT ${OBJECTDIR}/application.o -o ${OBJECTDIR}/application.o application.c 
	
else
${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o: ECU_Layer/Chr_LCD/ecu_chr_lcd.c  .generated_files/flags/default/57aff11bd314376d3cf80fbf9e4d19dfca0f500d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/Chr_LCD" 
	@${RM} ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d" -MT "${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d" -MT ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o -o ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o ECU_Layer/Chr_LCD/ecu_chr_lcd.c 
	
${OBJECTDIR}/ECU_Layer/LED/ecu_led.o: ECU_Layer/LED/ecu_led.c  .generated_files/flags/default/792426e1d11aef941109287abd6dcf46782fd9a0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/LED" 
	@${RM} ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/LED/ecu_led.o.d" -MT "${OBJECTDIR}/ECU_Layer/LED/ecu_led.o.d" -MT ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o -o ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o ECU_Layer/LED/ecu_led.c 
	
${OBJECTDIR}/ECU_Layer/ecu_layer_init.o: ECU_Layer/ecu_layer_init.c  .generated_files/flags/default/7c5239895b756bcef8101ff7536dcf2fc784738 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer" 
	@${RM} ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d" -MT "${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d" -MT ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o -o ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o ECU_Layer/ecu_layer_init.c 
	
${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o: MCAL_Layer/GPIO/hal_gpio.c  .generated_files/flags/default/217cce43733dc77d9ba8a002ba15d274cf9e21db .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/GPIO" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d" -MT "${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d" -MT ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o -o ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o MCAL_Layer/GPIO/hal_gpio.c 
	
${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o: MCAL_Layer/Interrupts/EXTI/EXTI.c  .generated_files/flags/default/2e6cc0aa1db877bd605f4ea63120bb4d41c6522c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d" -MT "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d" -MT ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o -o ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o MCAL_Layer/Interrupts/EXTI/EXTI.c 
	
${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o: MCAL_Layer/Interrupts/GIE/GIE.c  .generated_files/flags/default/30773468dd9db913ad1d01eb26a47fe4cf9d1747 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Interrupts/GIE" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o.d" -MT "${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o.d" -MT ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o -o ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o MCAL_Layer/Interrupts/GIE/GIE.c 
	
${OBJECTDIR}/MCAL_Layer/Timers/timer.o: MCAL_Layer/Timers/timer.c  .generated_files/flags/default/6fb116d8a357478a800f084a8f09e90dc9022815 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Timers" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Timers/timer.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Timers/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/Timers/timer.o.d" -MT "${OBJECTDIR}/MCAL_Layer/Timers/timer.o.d" -MT ${OBJECTDIR}/MCAL_Layer/Timers/timer.o -o ${OBJECTDIR}/MCAL_Layer/Timers/timer.o MCAL_Layer/Timers/timer.c 
	
${OBJECTDIR}/MCAL_Layer/USART/USART_program.o: MCAL_Layer/USART/USART_program.c  .generated_files/flags/default/772c6bb4683fa5540157897e35ee036baf2f8757 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/USART" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/USART/USART_program.o.d" -MT "${OBJECTDIR}/MCAL_Layer/USART/USART_program.o.d" -MT ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o -o ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o MCAL_Layer/USART/USART_program.c 
	
${OBJECTDIR}/application.o: application.c  .generated_files/flags/default/63bf68949054acbb5108e7272a305dac6a6f2459 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
${DISTDIR}/ECU_2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/ECU_2.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/ECU_2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/ECU_2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1
	@${RM} ${DISTDIR}/ECU_2.X.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/ECU_2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/ECU_2.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/ECU_2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/ECU_2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/ECU_2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/ECU_2.X.${IMAGE_TYPE}.hex"
	
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
