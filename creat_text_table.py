import string
import glob
import json
abc = string.ascii_lowercase + string.digits + " "


def is_word_valid(w):
    for l in w:
        if l not in abc:
            return False
    return True


anagram_3_array = []

anagram_3_dict = {}

# file_name = "William_Shakespeare__Hamlet.txt"
# author = file_name.split("__")[0].replace("_", " ")
# src = file_name.split("__")[1].replace("_", " ").replace(".txt","")

file_id = 0
for filename in glob.glob('*.txt'):
    file_id += 1
    with open(filename, encoding="utf8") as f:

        file_content = f.readlines()
        file_content = [line.strip().lower() for line in file_content if line != "\n"]

    for l in range(len(file_content)):
        line = file_content[l]
        for i in range(len(line) - 3):
            word = line[i:i + 3].strip(" ")
            if is_word_valid(word):
                try:
                    anagram_3_dict[word].append([line, l, file_id])
                except KeyError:
                    anagram_3_dict[word] = [[line, l, file_id]]

batter_3_dict={}
for item in anagram_3_dict:
    batter_3_dict[item]=[]
    values = anagram_3_dict[item]
    values = sorted(values)
    if len(values) > 5:
        values = [values[0],values[1],values[2],values[3],values[4]]
    new_values =[]
    for v in values:
        new_values.append([v[1], v[2]])
    batter_3_dict[item] = new_values

print("done")

with open("anagram_3.json","w") as f:
    json.dump(batter_3_dict, f)



for i in range(20):
    print(batter_3_dict.popitem())


# for item in anagram_3_dict:
#     print(item, )
#     val= anagram_3_dict[item]
#     for i in range(len(val)):
#         print(val[i][1],val[i][2],)
#
