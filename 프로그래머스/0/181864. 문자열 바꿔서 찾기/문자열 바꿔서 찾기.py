def solution(myString, pat):
    mystr = ''
    for m in myString:
        mystr += 'B' if m == 'A' else 'A'
    
    mystr = mystr.replace(pat, 'P')
            
    return 1 if 'P' in mystr else 0