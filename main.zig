const microzig = @import("microzig");

pub fn main() !void {
    const uart1 = try microzig.core.experimental.uart.Uart(1, .{}).init(.{ .baud_rate = 460800 });
    try uart1.writer().writeAll("Hello, serial port!\r\n");
}
