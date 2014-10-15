import re, os

def getusr(acct):
    return os.popen("pass user/" + acct).read().rstrip('\n')

def getpwd(acct):
    return os.popen("pass mail/" + acct).read().rstrip('\n')
