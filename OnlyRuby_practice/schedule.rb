# 과제 : 공동 시간표
# 같이 팀플을 할 수 있는 시간표를 계산해주는 프로그램을 만들어보자.
# 수업은 월-금요일에만 존재한다. 수업은 1교시가 오전 9시부터 1시간 간격으로 10교시 오후 6시까지 존재한다.
# 시간표 정보는 이중배열 형태( arr = [[1,2,3,4,5,6,7,8,9,10],[1,2,3,4,5,6,7,8,9,10], [1,2,3,4,5,6,7,8,9,10], [1,2,3,4,5,6,7,8,9,10],[1,2,3,4,5,6,7,8,9,10]] )로 존재한다. 유저의 시간표도 이중배열로 이루어져 있다.
# 유저1과 유저2의 시간표 정보를 입력하는 기능을 만들고
# 유저1과 유저2가 공동으로 비어있는 시간을 출력하는 프로그램을 만들어보자.

# 시간표 정보 배열
$default = [[1,2,3,4,5,6,7,8,9,10],[1,2,3,4,5,6,7,8,9,10],[1,2,3,4,5,6,7,8,9,10],[1,2,3,4,5,6,7,8,9,10],[1,2,3,4,5,6,7,8,9,10]]
$arr_user1 = [[],[],[],[],[]]
$arr_user2 = [[],[],[],[],[]]

# 사용자 번호 받아오기
def input_number
    print ("1:시간표 입력, 2:공통공강 보기\n")
    numb = gets.to_i
    
    if numb == 1
        input_usernumber()
    end
    if numb == 2
        mutual_empty_time()
    end
end

# 메뉴 선택
def input_usernumber
    print ("1:사용자 1, 2:사용자 2\n")
    menu = gets.to_i
    
    if menu == 1
        input_day_user1()
    end
    if menu == 2
        input_day_user2()
    end
end

# 사용자 1의 수업을 입력하는 메소드
def input_day_user1
    print ("요일을 골라주세요.\n1:월요일, 2:화요일, 3:수요일, 4:목요일, 5:금요일\n입력을 종료하려면 0을 입력하세요.\n")
    #요일을 입력받음
    day = gets.to_i
    if day >= 1 and day <= 5
        day_arr_num = day-1
        # 배열 자리번호 고려해서 -1
    end
    if day == 0
        return input_number()
        # 입력 종료
    end
    print ("수업은 1교시가 오전 9시부터 1시간 간격으로 10교시 오후 6시까지입니다. 수업이 있는 교시를 모두 ,(쉼표)로 구분해서 입력해주세요.\n")
    time = gets.chomp
    # 수업 입력받음
    time_s = time.split(',').map { |element| element.to_i }
    # 쉼표를 기준으로 구분해서 나누어줌
    $arr_user1.insert(day_arr_num,time_s)
    # 요일을 구분해서 넣어야하므로 day_arr_num번째 자리에 time_s를 넣어주어야 함
    return input_day_user1()
end

#사용자 2의 수업을 입력받는 메소드 - 사용자 1 수업 입력과 방법은 동일
def input_day_user2
    print ("요일을 골라주세요.\n1:월요일, 2:화요일, 3:수요일, 4:목요일, 5:금요일\n입력을 종료하려면 0을 입력하세요.\n")
    day = gets.to_i
    if day >= 1 and day <= 5
        day_arr_num = day-1
    end
    if day == 0
        return input_number()
    end
    print ("수업은 1교시가 오전 9시부터 1시간 간격으로 10교시 오후 6시까지입니다. 수업이 있는 교시를 모두 ,(쉼표)로 구분해서 입력해주세요.\n")
    time = gets.chomp
    time_s = time.split(',').map { |element| element.to_i }
    $arr_user2.insert(day_arr_num,time_s)
    return input_day_user2()
end


def mutual_empty_time
    empty = []
    # 두 사용자의 공강의 교집합을 구하기 위해 빈 배열 생성
    for i in 0..4
    # 0(월요일)부터 4(금요일)까지
        mutual = ($default[i]-$arr_user1[i])&($default[i]-$arr_user2[i])
        # 모든 교시가 입력된 default 배열에서 각 사용자가 입력한 수업의 배열을 제외시키고 교집합을 구함
        empty.insert(i,mutual)
        # 빈 배열에 교집합 배열을 입력시킴
    end
    print ("1번 사용자와 2번 사용자가 공강인 시간은\n월요일 #{empty[0].map { |element| element.to_s }.join(", ")}교시\n화요일 #{empty[1].map { |element| element.to_s }.join(", ")}교시\n수요일 #{empty[2].map { |element| element.to_s }.join(", ")}교시\n목요일 #{empty[3].map { |element| element.to_s }.join(", ")}교시\n금요일 #{empty[4].map { |element| element.to_s }.join(", ")}교시입니다.\n")
    #결과값 출력
end

input_number()