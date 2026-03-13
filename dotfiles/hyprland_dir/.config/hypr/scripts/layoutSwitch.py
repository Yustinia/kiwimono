import subprocess


def get_layout() -> str:
    output = subprocess.run(
        ["hyprctl", "getoption", "general:layout"],
        check=True,
        text=True,
        capture_output=True,
    )

    return next(
        line.split(": ", 1)[1].strip()
        for line in output.stdout.splitlines()
        if line.startswith("str:")
    )


def set_layout(layout: str) -> None:
    for command in [
        ["hyprctl", "keyword", "general:layout", layout],
        ["notify-send", "--icon=preferences-system", "Layout Changed", layout],
    ]:
        subprocess.run(command, check=True)


def main() -> None:
    layout = get_layout()
    set_layout("scrolling" if layout == "dwindle" else "dwindle")


if __name__ == "__main__":
    main()
