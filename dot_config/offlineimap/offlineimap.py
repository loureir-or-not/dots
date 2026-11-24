import subprocess


def get_freedesktop_secret(attr, val):
    cmd = subprocess.run(
        ["secret-tool", "lookup", attr, val],
        check=True,
        capture_output=True
    )
    return cmd.stdout.decode().strip()
