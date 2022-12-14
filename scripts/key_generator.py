# Django의 secrete key 생성을 위한 파이썬 스크립트

import string
import random


# Get ascii Characters numbers and punctuation (minus quote characters as they could terminate string).
chars = ''.join([string.ascii_letters, string.digits, string.punctuation]).replace(
    '\'', '').replace('"', '').replace('\\', '')

SECRET_KEY = ''.join([random.SystemRandom().choice(chars) for i in range(50)])

print(SECRET_KEY)
