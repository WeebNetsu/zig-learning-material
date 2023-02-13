//! this is a top level doc comment
//! this documents the module and what it does

// running with zig v0.10.0
// zig build-exe main.zig
const std = @import("std");
// below is for 2nd printing method
const print = @import("std").debug.print;

/// this is a doc comment
/// it is used to write documentation
pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Hello, {s}!\n", .{"world"});

    // note that there are NO multiline comments in Zig, only single

    // In Zig, the standard output writer's print function is allowed to fail because it is actually a function defined as part of a generic Writer. Consider a generic Writer that represents writing data to a file. When the disk is full, a write to the file will fail. However, we typically do not expect writing text to the standard output to fail
    // what we could do instead is use debug print:
    print("Hello, world!\n", .{});
    // now we don't have to use 'try'
}

// Ended https://ziglang.org/documentation/0.10.0/#Doc-comments
