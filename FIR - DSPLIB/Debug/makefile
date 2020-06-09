################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

CG_TOOL_ROOT := D:/ti/ccsv5/tools/compiler/c5500_4.4.1

ORDERED_OBJS += \
$(GEN_CMDS__FLAG) \
"./usbstk5505_led.obj" \
"./usbstk5505_i2c.obj" \
"./usbstk5505_gpio.obj" \
"./usbstk5505.obj" \
"./stereo.obj" \
"./main.obj" \
"./aic3204_init.obj" \
"./aic3204.obj" \
"./PLL.obj" \
"../55xdsph.lib" \
"../CSLc55x5h.lib" \
"../lnkx.cmd" \
-l"common5535.lib" \
-l"CSLc55x5h.lib" \
-l"55xdsph.lib" \
-l"rts55h.lib" \

-include ../makefile.init

RM := DEL /F
RMDIR := RMDIR /S/Q

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: FIR\ -\ DSPLIB.out

# Tool invocations
FIR\ -\ DSPLIB.out: $(OBJS) $(CMD_SRCS) $(LIB_SRCS) $(GEN_CMDS)
	@echo 'Building target: $@'
	@echo 'Invoking: C5500 Linker'
	"D:/ti/ccsv5/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 --memory_model=huge -g --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=32 --asm_source=mnemonic -z -m"FIR - DSPLIB.map" --stack_size=0x200 --heap_size=0x400 -i"D:/ti/ccsv5/tools/compiler/c5500_4.4.1/lib" -i"F:/Downloads/ZPS-Workspace/common5535/Debug" -i"F:/Downloads/ZPS-Workspace/lib" -i"D:/ti/ccsv5/tools/compiler/c5500_4.4.1/include" --reread_libs --display_error_number --warn_sections --xml_link_info="FIR - DSPLIB_linkInfo.xml" --rom_model --sys_stacksize=0x200 -o "FIR - DSPLIB.out" $(ORDERED_OBJS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(C5500_EXECUTABLE_OUTPUTS__QUOTED) "FIR - DSPLIB.out"
	-$(RM) "PLL.pp" "aic3204.pp" "aic3204_init.pp" "main.pp" "stereo.pp" "usbstk5505.pp" "usbstk5505_gpio.pp" "usbstk5505_i2c.pp" "usbstk5505_led.pp" 
	-$(RM) "PLL.obj" "aic3204.obj" "aic3204_init.obj" "main.obj" "stereo.obj" "usbstk5505.obj" "usbstk5505_gpio.obj" "usbstk5505_i2c.obj" "usbstk5505_led.obj" 
	-@echo 'Finished clean'
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

