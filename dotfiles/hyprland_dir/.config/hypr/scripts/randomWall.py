from pathlib import Path
import secrets
import subprocess


def reload_kitty() -> None:
    result = subprocess.run(["pidof", "kitty"], capture_output=True, text=True)
    if result.returncode == 0:
        subprocess.run(["kill", "-SIGUSR1", result.stdout.strip()], check=True)


def change_wall(wall: str, coords: str) -> None:
    cmd = [
        "swww",
        "img",
        wall,
        "--transition-type",
        "grow",
        "--transition-pos",
        coords,
        "--transition-duration",
        "5",
        "--transition-fps",
        "60",
        "--transition-bezier",
        "0.25,0.10,0.25,1.0",
    ]
    notify = ["notify-send", "Changed Wallpaper", wall, "-i", wall]
    matugen = ["matugen", "image", wall]
    commands = [cmd, matugen, notify]

    for command in commands:
        _run_subprocess(command)


def _run_subprocess(cmd: list[str]) -> None:
    subprocess.run(cmd, check=True)


def main() -> None:
    WALL_PATH = Path.home() / "Pictures" / "Walls"
    RANDOM_X = secrets.randbelow(1920)
    RANDOM_Y = secrets.randbelow(1080)
    random_coords = f"{str(RANDOM_X)},{str(RANDOM_Y)}"

    wall_list = [str(wall) for wall in WALL_PATH.iterdir()]
    selected_wall = secrets.choice(wall_list)

    change_wall(selected_wall, random_coords)

    reload_kitty()


if __name__ == "__main__":
    main()
