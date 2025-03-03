def solution(babbling):
    able = ["aya", "ye", "woo", "ma"]
    answer = 0
    
    for babble in babbling:
        word = ''
        
        for b in babble:
            word += b
            
            if word in able:
                word = ''
                
        if word == '':
            answer += 1
    return answer