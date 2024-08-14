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
FINAL_IMAGE=${DISTDIR}/ECU_1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/ECU_1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/ECU_1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega32
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o: ECU_Layer/Chr_LCD/ecu_chr_lcd.c  .generated_files/flags/default/79fa4c8c93ce5fd015930c4bda515632655088d6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/Chr_LCD" 
	@${RM} ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d" -MT "${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d" -MT ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o -o ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o ECU_Layer/Chr_LCD/ecu_chr_lcd.c 
	
${OBJECTDIR}/ECU_Layer/LED/ecu_led.o: ECU_Layer/LED/ecu_led.c  .generated_files/flags/default/549bfb49607881784b9f9d3aa8f242c709f59054 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/LED" 
	@${RM} ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/LED/ecu_led.o.d" -MT "${OBJECTDIR}/ECU_Layer/LED/ecu_led.o.d" -MT ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o -o ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o ECU_Layer/LED/ecu_led.c 
	
${OBJECTDIR}/ECU_Layer/ecu_layer_init.o: ECU_Layer/ecu_layer_init.c  .generated_files/flags/default/4e075fb45b1c4a082ba7bb09839bd02bbe9b7918 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer" 
	@${RM} ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d" -MT "${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d" -MT ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o -o ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o ECU_Layer/ecu_layer_init.c 
	
${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o: MCAL_Layer/GPIO/hal_gpio.c  .generated_files/flags/default/b807b57b005a8c53eaa6f3a109614f6039622a9f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/GPIO" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d" -MT "${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d" -MT ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o -o ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o MCAL_Layer/GPIO/hal_gpio.c 
	
${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o: MCAL_Layer/Interrupts/EXTI/EXTI.c  .generated_files/flags/default/b8128bf060e3b24e3b3dc8f9552b4d70adf9fbc7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d" -MT "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d" -MT ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o -o ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o MCAL_Layer/Interrupts/EXTI/EXTI.c 
	
${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o: MCAL_Layer/Interrupts/GIE/GIE.c  .generated_files/flags/default/3dd75a6c230194b9caff8c4919a13ee76f91cadc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Interrupts/GIE" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o.d" -MT "${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o.d" -MT ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o -o ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o MCAL_Layer/Interrupts/GIE/GIE.c 
	
${OBJECTDIR}/MCAL_Layer/Timers/timer.o: MCAL_Layer/Timers/timer.c  .generated_files/flags/default/598833268a101898434b9962c63a7d18aca67613 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Timers" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Timers/timer.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Timers/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/Timers/timer.o.d" -MT "${OBJECTDIR}/MCAL_Layer/Timers/timer.o.d" -MT ${OBJECTDIR}/MCAL_Layer/Timers/timer.o -o ${OBJECTDIR}/MCAL_Layer/Timers/timer.o MCAL_Layer/Timers/timer.c 
	
${OBJECTDIR}/MCAL_Layer/USART/USART_program.o: MCAL_Layer/USART/USART_program.c  .generated_files/flags/default/5cad6b00561b0051d7598da3fab0457c062eb811 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/USART" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/USART/USART_program.o.d" -MT "${OBJECTDIR}/MCAL_Layer/USART/USART_program.o.d" -MT ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o -o ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o MCAL_Layer/USART/USART_program.c 
	
${OBJECTDIR}/application.o: application.c  .generated_files/flags/default/78fba302cbc34b79fa79015a0efd928c7db7e041 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/application.o.d 
	@${RM} ${OBJECTDIR}/application.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/application.o.d" -MT "${OBJECTDIR}/application.o.d" -MT ${OBJECTDIR}/application.o -o ${OBJECTDIR}/application.o application.c 
	
else
${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o: ECU_Layer/Chr_LCD/ecu_chr_lcd.c  .generated_files/flags/default/86807617a26b73e942fb2349fa83b31e8a7ea5a1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/Chr_LCD" 
	@${RM} ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d" -MT "${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d" -MT ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o -o ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o ECU_Layer/Chr_LCD/ecu_chr_lcd.c 
	
${OBJECTDIR}/ECU_Layer/LED/ecu_led.o: ECU_Layer/LED/ecu_led.c  .generated_files/flags/default/9abd6ff5977928067f38d9a2033dc916cf7454d6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/LED" 
	@${RM} ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/LED/ecu_led.o.d" -MT "${OBJECTDIR}/ECU_Layer/LED/ecu_led.o.d" -MT ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o -o ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o ECU_Layer/LED/ecu_led.c 
	
${OBJECTDIR}/ECU_Layer/ecu_layer_init.o: ECU_Layer/ecu_layer_init.c  .generated_files/flags/default/44526d6c9b3b17e46ce581b76cffd2359478abe4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer" 
	@${RM} ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d" -MT "${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d" -MT ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o -o ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o ECU_Layer/ecu_layer_init.c 
	
${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o: MCAL_Layer/GPIO/hal_gpio.c  .generated_files/flags/default/1294338872911792ada60981791db97eb6ac6667 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/GPIO" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d" -MT "${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d" -MT ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o -o ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o MCAL_Layer/GPIO/hal_gpio.c 
	
${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o: MCAL_Layer/Interrupts/EXTI/EXTI.c  .generated_files/flags/default/bf2f25985b2839cdbc42cff3277c975251e76f7b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d" -MT "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d" -MT ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o -o ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o MCAL_Layer/Interrupts/EXTI/EXTI.c 
	
${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o: MCAL_Layer/Interrupts/GIE/GIE.c  .generated_files/flags/default/8c1b78feb35a61c29e6b2f4eba5dc12d56b7a42d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Interrupts/GIE" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o.d" -MT "${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o.d" -MT ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o -o ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o MCAL_Layer/Interrupts/GIE/GIE.c 
	
${OBJECTDIR}/MCAL_Layer/Timers/timer.o: MCAL_Layer/Timers/timer.c  .generated_files/flags/default/4c67dea756350303add64da678927135b81e9553 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Timers" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Timers/timer.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Timers/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/Timers/timer.o.d" -MT "${OBJECTDIR}/MCAL_Layer/Timers/timer.o.d" -MT ${OBJECTDIR}/MCAL_Layer/Timers/timer.o -o ${OBJECTDIR}/MCAL_Layer/Timers/timer.o MCAL_Layer/Timers/timer.c 
	
${OBJECTDIR}/MCAL_Layer/USART/USART_program.o: MCAL_Layer/USART/USART_program.c  .generated_files/flags/default/2d526368754d93a6b280a3c7826fce6873a2d0a9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/USART" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/USART/USART_program.o.d" -MT "${OBJECTDIR}/MCAL_Layer/USART/USART_program.o.d" -MT ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o -o ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o MCAL_Layer/USART/USART_program.c 
	
${OBJECTDIR}/application.o: application.c  .generated_files/flags/default/d79b0740d730a3d40c9654bc5da5094d5e60da15 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
${DISTDIR}/ECU_1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/ECU_1.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/ECU_1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/ECU_1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1
	@${RM} ${DISTDIR}/ECU_1.X.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/ECU_1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/ECU_1.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/ECU_1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/ECU_1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/ECU_1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/ECU_1.X.${IMAGE_TYPE}.hex"
	
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
