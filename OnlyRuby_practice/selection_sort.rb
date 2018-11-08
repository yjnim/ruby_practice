# 선택정렬 Selection sort
age = [25,23,30,22,24]
# 주어진 배열은 [25,23,30,22,24]
# z는 배열 자리번호의 시작인 0, n은 배열의 자리번호가 0부터 시작하는 것을 감안하여 1을 빼줌
z = 0
n = age.size - 1
  def selection_sort(age, z, n)
    smaller = 0;
    #z가 1씩 많아지도록 설정해두었기 때문에 z가 n보다 많아지면 반복을 멈춤
    if z < n
      smaller = z
      for j in z..n
      # age[0]인 25보다 적은 값이 배열의 1, 2, 3, 4번 자리 중 어디에 있는지 반복 비교하여 찾아내야 함. 
        if age[j] > age[smaller]
          #age[j]가 더 많으면 smaller의 값이 j로 바뀜
          smaller = j
          #계속 반복하면서 제일 큰 값을 찾음
        end
      end
    age[z], age[smaller] = age[smaller], age[z]
    # 큰 값이 앞으로 오게 됨
    selection_sort(age, z+1, n)
    # 0번의 자리가 정해지고 나면 age[1]과 배열의 2, 3, 4번 자리를 비교해야 하므로, 다음 루프에서는 z가 1씩 커져야 함
    end
  end
selection_sort(age, z, n)
  #출력
  print "운영진의 나이를 순서대로 배열하면 ", age, "입니다."