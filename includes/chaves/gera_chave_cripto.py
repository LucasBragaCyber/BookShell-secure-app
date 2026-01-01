import string
import random

def generate_key():
    chars = string.ascii_letters + string.digits
    return ''.join(random.choice(chars) for _ in range(32))
print(generate_key())

