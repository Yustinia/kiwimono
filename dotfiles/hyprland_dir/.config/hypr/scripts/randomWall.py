from pathlib import Path
import random
import subprocess


WALL_PATH = Path.home() / "Pictures" / "Walls"
SCREEN_WIDTH = 1920
SCREEN_HEIGHT = 1080


def _run(cmd: list[str]) -> None:
    subprocess.run(cmd, check=True)


def _pidof(process: str) -> str | None:
    result = subprocess.run(["pidof", process], capture_output=True, text=True)
    return result.stdout.strip() if result.returncode == 0 else None


def reload_kitty() -> None:
    result = subprocess.run(["pidof", "kitty"], capture_output=True, text=True)
    if result.returncode != 0:
        return
    for pid in result.stdout.strip().split():
        _run(["kill", "-SIGUSR1", pid])


def reload_mako() -> None:
    if _pidof("mako"):
        _run(["makoctl", "reload"])


def change_wall(wall: Path, coords: str) -> None:
    wall_str = str(wall)

    _run(
        [
            "swww",
            "img",
            wall_str,
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
    )
    _run(
        [
            "matugen",
            "image",
            "--type",
            "scheme-neutral",
            "--mode",
            "dark",
            "--contrast",
            "-0.8",
            wall_str,
        ]
    )

    reload_kitty()
    reload_mako()

    _run(["notify-send", "Changed Wallpaper", wall_str, "-i", wall_str])


def random_coords() -> str:
    x = random.randint(0, SCREEN_WIDTH)
    y = random.randint(0, SCREEN_HEIGHT)
    return f"{x},{y}"


def main() -> None:
    walls = list(WALL_PATH.iterdir())
    random.shuffle(walls)
    if not walls:
        raise FileNotFoundError(f"No wallpapers found in {WALL_PATH}")

    change_wall(random.choice(walls), random_coords())


if __name__ == "__main__":
    main()
