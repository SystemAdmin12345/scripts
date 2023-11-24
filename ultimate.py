table = {"One","Two","Three"}
tablelist = list(table)
length = len(tablelist)-1
index = 0


def check(item):
    index = 0
    while index <= length:
        if item == tablelist[index]:
            return(0)
        else:
            index += 1
    return(1)


print(check("One"))
print(check("Five"))
print(check("Two"))
