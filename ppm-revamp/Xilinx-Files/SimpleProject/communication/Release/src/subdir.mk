################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/simpleproject.cpp 

C_SRCS += \
../src/platform.c 

LD_SRCS += \
../src/lscript.ld 

OBJS += \
./src/platform.o \
./src/simpleproject.o 

C_DEPS += \
./src/platform.d 

CPP_DEPS += \
./src/simpleproject.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O3 -c -fmessage-length=0 -I../../communication_bsp/communication/include -mno-xl-reorder -mlittle-endian -mcpu=v8.40.a -mxl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O3 -c -fmessage-length=0 -I../../communication_bsp/communication/include -mno-xl-reorder -mlittle-endian -mcpu=v8.40.a -mxl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


