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
SOURCEFILES_QUOTED_IF_SPACED=ECU_Layer/Chr_LCD/ecu_chr_lcd.c ECU_Layer/LED/ecu_led.c ECU_Layer/ecu_layer_init.c MCAL_Layer/GPIO/hal_gpio.c MCAL_Layer/Interrupts/EXTI/EXTI.c MCAL_Layer/Interrupts/GIE/GIE.c MCAL_Layer/Timers/timer.c MCAL_Layer/USART/USART_program.c application.c MCAL_Layer/SPI/spi_program.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o ${OBJECTDIR}/MCAL_Layer/Timers/timer.o ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o ${OBJECTDIR}/application.o ${OBJECTDIR}/MCAL_Layer/SPI/spi_program.o
POSSIBLE_DEPFILES=${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o.d ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o.d ${OBJECTDIR}/MCAL_Layer/Timers/timer.o.d ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o.d ${OBJECTDIR}/application.o.d ${OBJECTDIR}/MCAL_Layer/SPI/spi_program.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o ${OBJECTDIR}/MCAL_Layer/Timers/timer.o ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o ${OBJECTDIR}/application.o ${OBJECTDIR}/MCAL_Layer/SPI/spi_program.o

# Source Files
SOURCEFILES=ECU_Layer/Chr_LCD/ecu_chr_lcd.c ECU_Layer/LED/ecu_led.c ECU_Layer/ecu_layer_init.c MCAL_Layer/GPIO/hal_gpio.c MCAL_Layer/Interrupts/EXTI/EXTI.c MCAL_Layer/Interrupts/GIE/GIE.c MCAL_Layer/Timers/timer.c MCAL_Layer/USART/USART_program.c application.c MCAL_Layer/SPI/spi_program.c



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
${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o: ECU_Layer/Chr_LCD/ecu_chr_lcd.c  .generated_files/flags/default/fb475d59deaed329cbcb5027235cc6b4b2e0c987 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/Chr_LCD" 
	@${RM} ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d" -MT "${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d" -MT ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o -o ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o ECU_Layer/Chr_LCD/ecu_chr_lcd.c 
	
${OBJECTDIR}/ECU_Layer/LED/ecu_led.o: ECU_Layer/LED/ecu_led.c  .generated_files/flags/default/64536842f13e77cf5dcc8a0be7670488b4d99964 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/LED" 
	@${RM} ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/LED/ecu_led.o.d" -MT "${OBJECTDIR}/ECU_Layer/LED/ecu_led.o.d" -MT ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o -o ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o ECU_Layer/LED/ecu_led.c 
	
${OBJECTDIR}/ECU_Layer/ecu_layer_init.o: ECU_Layer/ecu_layer_init.c  .generated_files/flags/default/db045f0ea45a49a7d44ec5cc958dde29eb097864 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer" 
	@${RM} ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d" -MT "${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d" -MT ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o -o ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o ECU_Layer/ecu_layer_init.c 
	
${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o: MCAL_Layer/GPIO/hal_gpio.c  .generated_files/flags/default/a84afb21cec13ab43c84fb304a9be9c582c83504 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/GPIO" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d" -MT "${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d" -MT ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o -o ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o MCAL_Layer/GPIO/hal_gpio.c 
	
${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o: MCAL_Layer/Interrupts/EXTI/EXTI.c  .generated_files/flags/default/f9bca5228aa4e1938faa21cf7b54244b8dbb76f5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d" -MT "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d" -MT ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o -o ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o MCAL_Layer/Interrupts/EXTI/EXTI.c 
	
${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o: MCAL_Layer/Interrupts/GIE/GIE.c  .generated_files/flags/default/62a0bdad03fc96394977c31f224bc7b9ea1de23c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Interrupts/GIE" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o.d" -MT "${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o.d" -MT ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o -o ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o MCAL_Layer/Interrupts/GIE/GIE.c 
	
${OBJECTDIR}/MCAL_Layer/Timers/timer.o: MCAL_Layer/Timers/timer.c  .generated_files/flags/default/4bf49ff69e407b6c4d04d2f0f03266c4076a9c5e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Timers" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Timers/timer.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Timers/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/Timers/timer.o.d" -MT "${OBJECTDIR}/MCAL_Layer/Timers/timer.o.d" -MT ${OBJECTDIR}/MCAL_Layer/Timers/timer.o -o ${OBJECTDIR}/MCAL_Layer/Timers/timer.o MCAL_Layer/Timers/timer.c 
	
${OBJECTDIR}/MCAL_Layer/USART/USART_program.o: MCAL_Layer/USART/USART_program.c  .generated_files/flags/default/18acf510d2c79429b16e02beb76f1757b7b9e2b5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/USART" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/USART/USART_program.o.d" -MT "${OBJECTDIR}/MCAL_Layer/USART/USART_program.o.d" -MT ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o -o ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o MCAL_Layer/USART/USART_program.c 
	
${OBJECTDIR}/application.o: application.c  .generated_files/flags/default/9a4fe21d9f83f7c17c4512799ab6bdd460bb9603 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/application.o.d 
	@${RM} ${OBJECTDIR}/application.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/application.o.d" -MT "${OBJECTDIR}/application.o.d" -MT ${OBJECTDIR}/application.o -o ${OBJECTDIR}/application.o application.c 
	
${OBJECTDIR}/MCAL_Layer/SPI/spi_program.o: MCAL_Layer/SPI/spi_program.c  .generated_files/flags/default/ccf0ace3ae7f120fa0bb4d3d418847a6d2e0919e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/SPI" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/SPI/spi_program.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/SPI/spi_program.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/SPI/spi_program.o.d" -MT "${OBJECTDIR}/MCAL_Layer/SPI/spi_program.o.d" -MT ${OBJECTDIR}/MCAL_Layer/SPI/spi_program.o -o ${OBJECTDIR}/MCAL_Layer/SPI/spi_program.o MCAL_Layer/SPI/spi_program.c 
	
else
${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o: ECU_Layer/Chr_LCD/ecu_chr_lcd.c  .generated_files/flags/default/46cbe0ff16ab2816929b21fee5fc5f82b0744969 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/Chr_LCD" 
	@${RM} ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d" -MT "${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o.d" -MT ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o -o ${OBJECTDIR}/ECU_Layer/Chr_LCD/ecu_chr_lcd.o ECU_Layer/Chr_LCD/ecu_chr_lcd.c 
	
${OBJECTDIR}/ECU_Layer/LED/ecu_led.o: ECU_Layer/LED/ecu_led.c  .generated_files/flags/default/235646b57781b64c44ea76270a7609d7b821697c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/LED" 
	@${RM} ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/LED/ecu_led.o.d" -MT "${OBJECTDIR}/ECU_Layer/LED/ecu_led.o.d" -MT ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o -o ${OBJECTDIR}/ECU_Layer/LED/ecu_led.o ECU_Layer/LED/ecu_led.c 
	
${OBJECTDIR}/ECU_Layer/ecu_layer_init.o: ECU_Layer/ecu_layer_init.c  .generated_files/flags/default/72728d0132df0f135379e51efbdea3a691e87fad .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECU_Layer" 
	@${RM} ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d" -MT "${OBJECTDIR}/ECU_Layer/ecu_layer_init.o.d" -MT ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o -o ${OBJECTDIR}/ECU_Layer/ecu_layer_init.o ECU_Layer/ecu_layer_init.c 
	
${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o: MCAL_Layer/GPIO/hal_gpio.c  .generated_files/flags/default/a984fde4491c34a1ce788d52a55586f8352bdf10 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/GPIO" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d" -MT "${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o.d" -MT ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o -o ${OBJECTDIR}/MCAL_Layer/GPIO/hal_gpio.o MCAL_Layer/GPIO/hal_gpio.c 
	
${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o: MCAL_Layer/Interrupts/EXTI/EXTI.c  .generated_files/flags/default/b186cade10b6ab0ed33eb87e0684f372a7018162 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d" -MT "${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o.d" -MT ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o -o ${OBJECTDIR}/MCAL_Layer/Interrupts/EXTI/EXTI.o MCAL_Layer/Interrupts/EXTI/EXTI.c 
	
${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o: MCAL_Layer/Interrupts/GIE/GIE.c  .generated_files/flags/default/5cb25030a643e88fdbb0a24f3385fed8541708bf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Interrupts/GIE" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o.d" -MT "${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o.d" -MT ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o -o ${OBJECTDIR}/MCAL_Layer/Interrupts/GIE/GIE.o MCAL_Layer/Interrupts/GIE/GIE.c 
	
${OBJECTDIR}/MCAL_Layer/Timers/timer.o: MCAL_Layer/Timers/timer.c  .generated_files/flags/default/9ac29b588cd62a2e42b435e76d96e9b0ea315c12 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/Timers" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Timers/timer.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/Timers/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/Timers/timer.o.d" -MT "${OBJECTDIR}/MCAL_Layer/Timers/timer.o.d" -MT ${OBJECTDIR}/MCAL_Layer/Timers/timer.o -o ${OBJECTDIR}/MCAL_Layer/Timers/timer.o MCAL_Layer/Timers/timer.c 
	
${OBJECTDIR}/MCAL_Layer/USART/USART_program.o: MCAL_Layer/USART/USART_program.c  .generated_files/flags/default/740d664f480d24e0773cac183785d1a89e6d117e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/USART" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/USART/USART_program.o.d" -MT "${OBJECTDIR}/MCAL_Layer/USART/USART_program.o.d" -MT ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o -o ${OBJECTDIR}/MCAL_Layer/USART/USART_program.o MCAL_Layer/USART/USART_program.c 
	
${OBJECTDIR}/application.o: application.c  .generated_files/flags/default/3b2e0520b0d427079acf575976f0caaa8abfe4ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/application.o.d 
	@${RM} ${OBJECTDIR}/application.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/application.o.d" -MT "${OBJECTDIR}/application.o.d" -MT ${OBJECTDIR}/application.o -o ${OBJECTDIR}/application.o application.c 
	
${OBJECTDIR}/MCAL_Layer/SPI/spi_program.o: MCAL_Layer/SPI/spi_program.c  .generated_files/flags/default/c8602ab287929c3d926fbae9bd9bb65a7c913a50 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/SPI" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/SPI/spi_program.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/SPI/spi_program.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/SPI/spi_program.o.d" -MT "${OBJECTDIR}/MCAL_Layer/SPI/spi_program.o.d" -MT ${OBJECTDIR}/MCAL_Layer/SPI/spi_program.o -o ${OBJECTDIR}/MCAL_Layer/SPI/spi_program.o MCAL_Layer/SPI/spi_program.c 
	
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
