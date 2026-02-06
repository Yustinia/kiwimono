from pathlib import Path
import random
import subprocess


def wallpaper_select(wallpaper) -> list[str]:
    random_x = random.randint(0, 1919)
    random_y = random.randint(0, 1079)
    random_pos = f"{random_x},{random_y}"

    cmd = [
        "swww",
        "img",
        str(wallpaper),
        "--transition-type",
        "grow",
        "--transition-pos",
        random_pos,
        "--transition-duration",
        "5",
        "--transition-fps",
        "60",
        "--transition-bezier",
        "0.25,0.1,0.25,1.0",
    ]

    return cmd


def notification(wallpaper) -> list[str]:
    notify = [
        "notify-send",
        "Wallpaper changed",
        Path(wallpaper).name,
        "-i",
        wallpaper,
    ]

    return notify


def main() -> None:
    runner = lambda cmd: subprocess.run(cmd, check=True)

    WALL_DIR = Path.home() / "Pictures" / "Walls"
    wallpapers = [wall for wall in WALL_DIR.iterdir()]

    random_wall = random.choice(wallpapers)

    tasks = {
        "selected_wall": wallpaper_select(random_wall),
        "notify": notification(random_wall),
    }

    for cmd in tasks.values():
        runner(cmd)


main()
