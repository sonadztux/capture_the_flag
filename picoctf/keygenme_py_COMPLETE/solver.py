import hashlib
import base64

bUsername_trial = b"GOUGH"

key_part_static1 = "picoCTF{1n_7h3_|<3y_of_"
key_part_dynamic1 = ""
key_part_static2 = "}"


idx_hexdigest = [4,5,3,6,2,7,1,8]

for idx in idx_hexdigest:
    key_part_dynamic1 += hashlib.sha256(bUsername_trial).hexdigest()[idx]

key = key_part_static1 + key_part_dynamic1 + key_part_static2
print(key)