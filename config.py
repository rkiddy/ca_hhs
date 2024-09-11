"""
Read configuration values from .env files. This does not seem
very useful at the moment, but it costs nothing and we may
do something smarter in the future.
"""
import os

from dotenv import dotenv_values

# We do not hard-code the top directory here, though that would be convenient. -rrk

def cfg() -> dict:
    if os.path.exists(f"{os.getcwd()}/.env"):
        env = f"{os.getcwd()}/.env"
    else:
        env = f"{os.getcwd()}/../.env"
    d = dotenv_values(env)
    return d
