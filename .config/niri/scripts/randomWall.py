from pathlib import Path
import random
import subprocess


def shell_runner(wallpaper) -> None:
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

    subprocess.run(cmd, check=True)


def main() -> None:
    WALL_DIR = Path.home() / "Pictures" / "Walls"
    wallpapers = [wall for wall in WALL_DIR.iterdir()]
    random_wall = random.choice(wallpapers)

    shell_runner(random_wall)


main()
