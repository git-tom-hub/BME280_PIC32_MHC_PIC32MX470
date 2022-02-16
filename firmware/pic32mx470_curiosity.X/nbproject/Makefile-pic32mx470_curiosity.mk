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
ifeq "$(wildcard nbproject/Makefile-local-pic32mx470_curiosity.mk)" "nbproject/Makefile-local-pic32mx470_curiosity.mk"
include nbproject/Makefile-local-pic32mx470_curiosity.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mx470_curiosity
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/pic32mx470_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/pic32mx470_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32mx470_curiosity/peripheral/clk/plib_clk.c ../src/config/pic32mx470_curiosity/peripheral/coretimer/plib_coretimer.c ../src/config/pic32mx470_curiosity/peripheral/dmac/plib_dmac.c ../src/config/pic32mx470_curiosity/peripheral/evic/plib_evic.c ../src/config/pic32mx470_curiosity/peripheral/gpio/plib_gpio.c ../src/config/pic32mx470_curiosity/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/pic32mx470_curiosity/peripheral/tmr/plib_tmr2.c ../src/config/pic32mx470_curiosity/peripheral/uart/plib_uart2.c ../src/config/pic32mx470_curiosity/stdio/xc32_monitor.c ../src/config/pic32mx470_curiosity/initialization.c ../src/config/pic32mx470_curiosity/interrupts.c ../src/config/pic32mx470_curiosity/exceptions.c ../src/bme280_driver.c ../src/main_pic32mx470.c ../src/BME280.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1949220912/plib_clk.o ${OBJECTDIR}/_ext/1416444108/plib_coretimer.o ${OBJECTDIR}/_ext/296275587/plib_dmac.o ${OBJECTDIR}/_ext/296236899/plib_evic.o ${OBJECTDIR}/_ext/296183071/plib_gpio.o ${OBJECTDIR}/_ext/1163979050/plib_spi1_master.o ${OBJECTDIR}/_ext/1949204537/plib_tmr2.o ${OBJECTDIR}/_ext/295780128/plib_uart2.o ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o ${OBJECTDIR}/_ext/1130503790/initialization.o ${OBJECTDIR}/_ext/1130503790/interrupts.o ${OBJECTDIR}/_ext/1130503790/exceptions.o ${OBJECTDIR}/_ext/1360937237/bme280_driver.o ${OBJECTDIR}/_ext/1360937237/main_pic32mx470.o ${OBJECTDIR}/_ext/1360937237/BME280.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1949220912/plib_clk.o.d ${OBJECTDIR}/_ext/1416444108/plib_coretimer.o.d ${OBJECTDIR}/_ext/296275587/plib_dmac.o.d ${OBJECTDIR}/_ext/296236899/plib_evic.o.d ${OBJECTDIR}/_ext/296183071/plib_gpio.o.d ${OBJECTDIR}/_ext/1163979050/plib_spi1_master.o.d ${OBJECTDIR}/_ext/1949204537/plib_tmr2.o.d ${OBJECTDIR}/_ext/295780128/plib_uart2.o.d ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o.d ${OBJECTDIR}/_ext/1130503790/initialization.o.d ${OBJECTDIR}/_ext/1130503790/interrupts.o.d ${OBJECTDIR}/_ext/1130503790/exceptions.o.d ${OBJECTDIR}/_ext/1360937237/bme280_driver.o.d ${OBJECTDIR}/_ext/1360937237/main_pic32mx470.o.d ${OBJECTDIR}/_ext/1360937237/BME280.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1949220912/plib_clk.o ${OBJECTDIR}/_ext/1416444108/plib_coretimer.o ${OBJECTDIR}/_ext/296275587/plib_dmac.o ${OBJECTDIR}/_ext/296236899/plib_evic.o ${OBJECTDIR}/_ext/296183071/plib_gpio.o ${OBJECTDIR}/_ext/1163979050/plib_spi1_master.o ${OBJECTDIR}/_ext/1949204537/plib_tmr2.o ${OBJECTDIR}/_ext/295780128/plib_uart2.o ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o ${OBJECTDIR}/_ext/1130503790/initialization.o ${OBJECTDIR}/_ext/1130503790/interrupts.o ${OBJECTDIR}/_ext/1130503790/exceptions.o ${OBJECTDIR}/_ext/1360937237/bme280_driver.o ${OBJECTDIR}/_ext/1360937237/main_pic32mx470.o ${OBJECTDIR}/_ext/1360937237/BME280.o

# Source Files
SOURCEFILES=../src/config/pic32mx470_curiosity/peripheral/clk/plib_clk.c ../src/config/pic32mx470_curiosity/peripheral/coretimer/plib_coretimer.c ../src/config/pic32mx470_curiosity/peripheral/dmac/plib_dmac.c ../src/config/pic32mx470_curiosity/peripheral/evic/plib_evic.c ../src/config/pic32mx470_curiosity/peripheral/gpio/plib_gpio.c ../src/config/pic32mx470_curiosity/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/pic32mx470_curiosity/peripheral/tmr/plib_tmr2.c ../src/config/pic32mx470_curiosity/peripheral/uart/plib_uart2.c ../src/config/pic32mx470_curiosity/stdio/xc32_monitor.c ../src/config/pic32mx470_curiosity/initialization.c ../src/config/pic32mx470_curiosity/interrupts.c ../src/config/pic32mx470_curiosity/exceptions.c ../src/bme280_driver.c ../src/main_pic32mx470.c ../src/BME280.c



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

# The following macros may be used in the pre and post step lines
_/_=\\
ShExtension=.bat
Device=PIC32MX470F512H
ProjectDir="C:\Users\tomcr\OneDrive\Home_Documents\HWD\Harmony 3\My_SPI_edit\firmware\pic32mx470_curiosity.X"
ProjectName=SPI_getting_started_pic32mx470_curiosity
ConfName=pic32mx470_curiosity
ImagePath="${DISTDIR}\pic32mx470_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="${DISTDIR}"
ImageName="pic32mx470_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-pic32mx470_curiosity.mk ${DISTDIR}/pic32mx470_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [rm -rf ${ProjectDir}/../../hex && mkdir ${ProjectDir}/../../hex && cp ${ProjectDir}/${ImagePath} ${ProjectDir}/../../hex/]"
	@rm -rf ${ProjectDir}/../../hex && mkdir ${ProjectDir}/../../hex && cp ${ProjectDir}/${ImagePath} ${ProjectDir}/../../hex/
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=32MX470F512H
MP_LINKER_FILE_OPTION=,--script="..\src\config\pic32mx470_curiosity\p32MX470F512H.ld"
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
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1949220912/plib_clk.o: ../src/config/pic32mx470_curiosity/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mx470_curiosity/cb16e1c37324e9952c319d4ea1ec43d13398d4eb .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/1949220912" 
	@${RM} ${OBJECTDIR}/_ext/1949220912/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1949220912/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1949220912/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1949220912/plib_clk.o ../src/config/pic32mx470_curiosity/peripheral/clk/plib_clk.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1416444108/plib_coretimer.o: ../src/config/pic32mx470_curiosity/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/pic32mx470_curiosity/cc99e7ac513fbd5bc50befa8c2760f54d91b5ca6 .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/1416444108" 
	@${RM} ${OBJECTDIR}/_ext/1416444108/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1416444108/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1416444108/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1416444108/plib_coretimer.o ../src/config/pic32mx470_curiosity/peripheral/coretimer/plib_coretimer.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/296275587/plib_dmac.o: ../src/config/pic32mx470_curiosity/peripheral/dmac/plib_dmac.c  .generated_files/flags/pic32mx470_curiosity/db0fee5a05791c4db2886ece9e734bc74f6df1a1 .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/296275587" 
	@${RM} ${OBJECTDIR}/_ext/296275587/plib_dmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/296275587/plib_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/296275587/plib_dmac.o.d" -o ${OBJECTDIR}/_ext/296275587/plib_dmac.o ../src/config/pic32mx470_curiosity/peripheral/dmac/plib_dmac.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/296236899/plib_evic.o: ../src/config/pic32mx470_curiosity/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mx470_curiosity/7109f6578634a00d234c1038c4127838cf73b496 .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/296236899" 
	@${RM} ${OBJECTDIR}/_ext/296236899/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/296236899/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/296236899/plib_evic.o.d" -o ${OBJECTDIR}/_ext/296236899/plib_evic.o ../src/config/pic32mx470_curiosity/peripheral/evic/plib_evic.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/296183071/plib_gpio.o: ../src/config/pic32mx470_curiosity/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mx470_curiosity/3b5d16e2ea29b2ae2d6fbb060daff3cd0bd9497f .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/296183071" 
	@${RM} ${OBJECTDIR}/_ext/296183071/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/296183071/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/296183071/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/296183071/plib_gpio.o ../src/config/pic32mx470_curiosity/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1163979050/plib_spi1_master.o: ../src/config/pic32mx470_curiosity/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/pic32mx470_curiosity/65db02a039f08eb9ec5d72a5be7361a4bb7d0730 .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/1163979050" 
	@${RM} ${OBJECTDIR}/_ext/1163979050/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1163979050/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1163979050/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/1163979050/plib_spi1_master.o ../src/config/pic32mx470_curiosity/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1949204537/plib_tmr2.o: ../src/config/pic32mx470_curiosity/peripheral/tmr/plib_tmr2.c  .generated_files/flags/pic32mx470_curiosity/af9e3ac0d87a68774641e34e0b9951196d3ba07 .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/1949204537" 
	@${RM} ${OBJECTDIR}/_ext/1949204537/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1949204537/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1949204537/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/1949204537/plib_tmr2.o ../src/config/pic32mx470_curiosity/peripheral/tmr/plib_tmr2.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/295780128/plib_uart2.o: ../src/config/pic32mx470_curiosity/peripheral/uart/plib_uart2.c  .generated_files/flags/pic32mx470_curiosity/c523debb0db713a95ad7be301c48b0abcdb5054b .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/295780128" 
	@${RM} ${OBJECTDIR}/_ext/295780128/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/295780128/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/295780128/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/295780128/plib_uart2.o ../src/config/pic32mx470_curiosity/peripheral/uart/plib_uart2.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1098930264/xc32_monitor.o: ../src/config/pic32mx470_curiosity/stdio/xc32_monitor.c  .generated_files/flags/pic32mx470_curiosity/e7c9dbed9f912eca1445737e80dc4079a814e3c7 .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/1098930264" 
	@${RM} ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1098930264/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o ../src/config/pic32mx470_curiosity/stdio/xc32_monitor.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/initialization.o: ../src/config/pic32mx470_curiosity/initialization.c  .generated_files/flags/pic32mx470_curiosity/7e3a47244cebac8550a1cc1814c4139c97afee07 .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/initialization.o.d" -o ${OBJECTDIR}/_ext/1130503790/initialization.o ../src/config/pic32mx470_curiosity/initialization.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/interrupts.o: ../src/config/pic32mx470_curiosity/interrupts.c  .generated_files/flags/pic32mx470_curiosity/f3739388fbd91e6fd5702c08defb2d95d8abd52c .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/interrupts.o.d" -o ${OBJECTDIR}/_ext/1130503790/interrupts.o ../src/config/pic32mx470_curiosity/interrupts.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/exceptions.o: ../src/config/pic32mx470_curiosity/exceptions.c  .generated_files/flags/pic32mx470_curiosity/8854385c8ba3cc2c51a7cf43e9902d336a314bd5 .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/exceptions.o.d" -o ${OBJECTDIR}/_ext/1130503790/exceptions.o ../src/config/pic32mx470_curiosity/exceptions.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/bme280_driver.o: ../src/bme280_driver.c  .generated_files/flags/pic32mx470_curiosity/d8dc18ce41ac67975c0c1a5090ea5870494af306 .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bme280_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bme280_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bme280_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/bme280_driver.o ../src/bme280_driver.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main_pic32mx470.o: ../src/main_pic32mx470.c  .generated_files/flags/pic32mx470_curiosity/ec2184cf91be8f4807a3f83b08490198ed57f352 .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_pic32mx470.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_pic32mx470.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main_pic32mx470.o.d" -o ${OBJECTDIR}/_ext/1360937237/main_pic32mx470.o ../src/main_pic32mx470.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/BME280.o: ../src/BME280.c  .generated_files/flags/pic32mx470_curiosity/4da37bdc67ee4a6618aa1223419664b7f0c6f8b .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/BME280.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/BME280.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/BME280.o.d" -o ${OBJECTDIR}/_ext/1360937237/BME280.o ../src/BME280.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1949220912/plib_clk.o: ../src/config/pic32mx470_curiosity/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mx470_curiosity/bbccb5a71d88565d2d0175b8cd8dbe535da3023b .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/1949220912" 
	@${RM} ${OBJECTDIR}/_ext/1949220912/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1949220912/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1949220912/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1949220912/plib_clk.o ../src/config/pic32mx470_curiosity/peripheral/clk/plib_clk.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1416444108/plib_coretimer.o: ../src/config/pic32mx470_curiosity/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/pic32mx470_curiosity/7e89a1010aa00bf9a1bed7afc3d6e9492be72539 .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/1416444108" 
	@${RM} ${OBJECTDIR}/_ext/1416444108/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1416444108/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1416444108/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1416444108/plib_coretimer.o ../src/config/pic32mx470_curiosity/peripheral/coretimer/plib_coretimer.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/296275587/plib_dmac.o: ../src/config/pic32mx470_curiosity/peripheral/dmac/plib_dmac.c  .generated_files/flags/pic32mx470_curiosity/18c3dcdb7a9daa0c8148eeec0c6fd054e157630 .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/296275587" 
	@${RM} ${OBJECTDIR}/_ext/296275587/plib_dmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/296275587/plib_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/296275587/plib_dmac.o.d" -o ${OBJECTDIR}/_ext/296275587/plib_dmac.o ../src/config/pic32mx470_curiosity/peripheral/dmac/plib_dmac.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/296236899/plib_evic.o: ../src/config/pic32mx470_curiosity/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mx470_curiosity/aa90ecbdf79097e9fac2d53eb9a92c0408055478 .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/296236899" 
	@${RM} ${OBJECTDIR}/_ext/296236899/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/296236899/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/296236899/plib_evic.o.d" -o ${OBJECTDIR}/_ext/296236899/plib_evic.o ../src/config/pic32mx470_curiosity/peripheral/evic/plib_evic.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/296183071/plib_gpio.o: ../src/config/pic32mx470_curiosity/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mx470_curiosity/d0c8704f2421496224afe38a33091d82e133995e .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/296183071" 
	@${RM} ${OBJECTDIR}/_ext/296183071/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/296183071/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/296183071/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/296183071/plib_gpio.o ../src/config/pic32mx470_curiosity/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1163979050/plib_spi1_master.o: ../src/config/pic32mx470_curiosity/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/pic32mx470_curiosity/11d1f40e9f2bc26e97dbb25bcc67417c4758160e .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/1163979050" 
	@${RM} ${OBJECTDIR}/_ext/1163979050/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1163979050/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1163979050/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/1163979050/plib_spi1_master.o ../src/config/pic32mx470_curiosity/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1949204537/plib_tmr2.o: ../src/config/pic32mx470_curiosity/peripheral/tmr/plib_tmr2.c  .generated_files/flags/pic32mx470_curiosity/2568b812337f92e27348aa31aa78561052b6ea5b .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/1949204537" 
	@${RM} ${OBJECTDIR}/_ext/1949204537/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1949204537/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1949204537/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/1949204537/plib_tmr2.o ../src/config/pic32mx470_curiosity/peripheral/tmr/plib_tmr2.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/295780128/plib_uart2.o: ../src/config/pic32mx470_curiosity/peripheral/uart/plib_uart2.c  .generated_files/flags/pic32mx470_curiosity/50e57c867d1a16c0ff5b19e17663e0047f96163a .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/295780128" 
	@${RM} ${OBJECTDIR}/_ext/295780128/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/295780128/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/295780128/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/295780128/plib_uart2.o ../src/config/pic32mx470_curiosity/peripheral/uart/plib_uart2.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1098930264/xc32_monitor.o: ../src/config/pic32mx470_curiosity/stdio/xc32_monitor.c  .generated_files/flags/pic32mx470_curiosity/60e6c97da2e0b41358d9494d4bd91c4fa5045bd3 .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/1098930264" 
	@${RM} ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1098930264/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o ../src/config/pic32mx470_curiosity/stdio/xc32_monitor.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/initialization.o: ../src/config/pic32mx470_curiosity/initialization.c  .generated_files/flags/pic32mx470_curiosity/325480b938643cfcea2d5c28d0ed5e9e7c0bdf97 .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/initialization.o.d" -o ${OBJECTDIR}/_ext/1130503790/initialization.o ../src/config/pic32mx470_curiosity/initialization.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/interrupts.o: ../src/config/pic32mx470_curiosity/interrupts.c  .generated_files/flags/pic32mx470_curiosity/7bdbbb5f4d5f807e8333961581272727a7d387dd .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/interrupts.o.d" -o ${OBJECTDIR}/_ext/1130503790/interrupts.o ../src/config/pic32mx470_curiosity/interrupts.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/exceptions.o: ../src/config/pic32mx470_curiosity/exceptions.c  .generated_files/flags/pic32mx470_curiosity/5ded35aa535019ad865e6ee014b63faaa4a9bac6 .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/exceptions.o.d" -o ${OBJECTDIR}/_ext/1130503790/exceptions.o ../src/config/pic32mx470_curiosity/exceptions.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/bme280_driver.o: ../src/bme280_driver.c  .generated_files/flags/pic32mx470_curiosity/e9752c8e3b461894521bf6cf648c3d596728f6f8 .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bme280_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bme280_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bme280_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/bme280_driver.o ../src/bme280_driver.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main_pic32mx470.o: ../src/main_pic32mx470.c  .generated_files/flags/pic32mx470_curiosity/4cbcd7e1734d4ca02f9363ef3467f751022b1457 .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_pic32mx470.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_pic32mx470.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main_pic32mx470.o.d" -o ${OBJECTDIR}/_ext/1360937237/main_pic32mx470.o ../src/main_pic32mx470.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/BME280.o: ../src/BME280.c  .generated_files/flags/pic32mx470_curiosity/d809c851b0270913fd4eac33e54a1b80a67a6780 .generated_files/flags/pic32mx470_curiosity/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/BME280.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/BME280.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/BME280.o.d" -o ${OBJECTDIR}/_ext/1360937237/BME280.o ../src/BME280.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/pic32mx470_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/pic32mx470_curiosity/p32MX470F512H.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/pic32mx470_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC0275F  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/pic32mx470_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/pic32mx470_curiosity/p32MX470F512H.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/pic32mx470_curiosity.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/pic32mx470_curiosity.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
