A reproduction scenario for https://github.com/ziglang/zig/issues/17882,
for Zig 0.11.0 and currently-latest microzig and stmicro-stm32.

Using Zig 0.11.0, `zig build flash`,
with `st-flash` installed and an STM32F3DISCOVERY board connected,
results in a debug mode .bin file which correctly
sends the text "Hello, serial port!" to the STM32F303VCT6's UART1 serial port
(460800-8-N-1).

Doing `zig build flash -Drelease=true`
results in a releaseSmall mode .bin file, which does not work but instead
only sends the first "H", and then the board appears to hang.

The .bin files can be recreated doing just `zig build` or `zig build -Drelease=true`,
no board or flashing needed for that.

And a copy of the .bin files is in the 'output' directory.
