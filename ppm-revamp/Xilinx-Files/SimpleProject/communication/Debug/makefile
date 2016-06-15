################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
communication.elf.size \

ELFCHECK += \
communication.elf.elfcheck \


# All Target
all: communication.elf secondary-outputs

# Tool invocations
communication.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MicroBlaze g++ linker'
	mb-g++ -L"C:\Users\Owner\Desktop\workspace\communication_bsp\communication\lib" -Wl,-T -Wl,../src/lscript.ld -L../../communication_bsp/communication/lib -mlittle-endian -mcpu=v8.40.a -mxl-soft-mul -Wl,--no-relax -Wl,--gc-sections -o "communication.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

communication.elf.size: communication.elf
	@echo 'Invoking: MicroBlaze Print Size'
	mb-size communication.elf  |tee "communication.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

communication.elf.elfcheck: communication.elf
	@echo 'Invoking: Xilinx ELF Check'
	elfcheck communication.elf -hw ../../communication_hwp/system.xml -pe communication  |tee "communication.elf.elfcheck"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(CC_DEPS)$(CPP_DEPS)$(EXECUTABLES)$(ELFSIZE)$(CXX_DEPS)$(C_UPPER_DEPS)$(ELFCHECK)$(S_UPPER_DEPS) communication.elf
	-@echo ' '

secondary-outputs: $(ELFSIZE) $(ELFCHECK)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
