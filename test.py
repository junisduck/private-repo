def divide(a, b):
    # 0으로 나누는 오류
    if b == 0:
        print("Error: Division by zero")
        return None
    result = a / b
    return result

# 사용하지 않는 변수
unused_variable = 42

# 함수 정의가 없는 코드
print("Hello, world!")

# 정적 분석에서 발견되는 다양한 문제들
a = 1  # 변수 'a'가 한 번만 사용됨
print(a)

# 사용하지 않는 인자
def foo(x):
    return 42

foo(10)  # 함수에 인자가 필요하지 않음

# 문자열 포맷 오류 수정
name = "Alice"
print(f"Hello, {name}")  # 중괄호가 한 번만 들어감
