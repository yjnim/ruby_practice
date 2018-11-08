# 방 예약하기

# 전역변수 $를 붙여 방 5개를 hash로 지정하고 예약상태를 value값으로 지정
$room = {101 => "예약안됨", 102 => "예약안됨", 103 => "예약안됨", 104 => "예약안됨", 105 => "예약안됨"}

# 메뉴 이동 숫자입력 메소드
def input_number
    print ("1:예약하기, 2:예약확인, 3:예약취소, 4:종료\n")
    numb = gets.to_i
    return numb
end

# 방번호 숫자입력 메소드
def room_number
    print("방번호를 입력해주세요.\n")
    room_number = gets.to_i
    return room_number
end

# 예약 메뉴로 이동했을 시 해당 방 번호의 value값이 예약됨으로 변경
def reservation(num)
    $room[num] = "예약됨"
end

# 해당 방 번호의 value값을 조사해서 예약상태를 출력
def status(num)
    if $room[num] == "예약됨"
        print("예약됨\n")
    end
    if $room[num] == "예약안됨"
        print("예약안됨\n")
    end
end

# 예약취소 메뉴로 이동했을 시 해당 방 번호의 value값이 예약안됨으로 변경
def reservation_cancel(num)
    $room[num] = "예약안됨"
end

# 메뉴 고르기 메소드
def main

    while TRUE
        choose = input_number()
        
        if choose == 1
            reservation(room_number)
        end
        if choose == 2
            status(room_number)
        end
        if choose == 3
            reservation_cancel(room_number)
        end
        if choose == 4
            break
        end
    end
end

main()