const std = @import("std");
const rl = @cImport(@cInclude("raylib.h"));

const screen_width = 800;
const screen_height = 450;

pub fn main() anyerror!void {
    rl.InitWindow(screen_width, screen_height, "ZigGame");
    defer rl.CloseWindow();

    rl.SetTargetFPS(60);
    //--------------------------------------------------------------------------------------

    // Main game loop
    while (!rl.WindowShouldClose()) {
        rl.BeginDrawing();
        defer rl.EndDrawing();

        rl.ClearBackground(rl.WHITE);
        rl.DrawText("Congrats! You created your first window!", 190, 200, 20, rl.LIGHTGRAY);
    }
}
