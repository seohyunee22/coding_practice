import heapq

def solution(operations):
    """
    4, 1, 7, 3 -heappush-> [1, 3, 4, 7] 최소값이 루트에~
    [1, 3, 4, 7] -heappop-> 1, 3, 4, 7
    I       : 삽입
    D -1    : 최솟값 삭제
    D 1     : 최댓값 삭제
    cmd : command(I, D)
    num : number(int)
    max_heap, min_heap : 시간복잡도 줄이기 위한 heap -> O(1)
    """
    max_heap = []  # 무조건 부호 반대로 저장
    min_heap = []  # 숫자 그대로

    for operation in operations:
        cmd, num = operation.split()
        num = int(num)

        if cmd == "I":
            heapq.heappush(max_heap, -num)  
            heapq.heappush(min_heap, num)  
        elif cmd == "D" and num == 1:
            if max_heap:
                max_value = -heapq.heappop(max_heap)
                min_heap.remove(max_value)
        elif cmd == "D" and num == -1:
            if min_heap:
                min_value = heapq.heappop(min_heap)
                max_heap.remove(-min_value)
       # print("max_heap: ",max_heap)
       # print("min_heap: ",min_heap)
    if not max_heap or not min_heap:
        return [0, 0]
    else:
        return [-max_heap[0], min_heap[0]]