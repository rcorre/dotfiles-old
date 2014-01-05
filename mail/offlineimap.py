import re, os

def getpwd(acct):
    return os.popen("pass mail/" + acct).read().rstrip('\n')
