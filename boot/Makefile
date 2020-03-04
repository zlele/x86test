BOOT_SRC=boot.S
BOOT_ELF=boot.elf
BOOT_BIN=msr.bin

$(BOOT_BIN):$(BOOT_ELF)
	@echo "[BIN] $<"
	cp $< $@
	objcopy $@ -O binary
	#qemu-system-x86_64 -m 64M -serial stdio -monitor null -nographic -vnc :100 -drive file=msr.bin,if=ide  -gdb tcp::5070

$(BOOT_ELF):$(BOOT_SRC)
	@echo "[AS] $<"
	gcc -m32 -I . -o $@ -c $<

.PHONY:clean
clean:
	rm $(BOOT_ELF) $(BOOT_BIN)
