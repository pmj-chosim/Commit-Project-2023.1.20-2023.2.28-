#개강이 싫어서 개강을 미루고 싶은 마음에 알파벳을 미루는 카이사르 암호화 프로그램 만듦

def caesar_cipher(text, shift):

    result = "" # 결과를 저장할 문자열 변수 초기화

    for char in text:

        # 알파벳인 경우에만 밀어서 변환해줍니다.

        if char.isalpha():

            # 대문자 알파벳인 경우

            if char.isupper():

                result += chr((ord(char) + shift - 65) % 26 + 65)

            # 소문자 알파벳인 경우

            else:

                result += chr((ord(char) + shift - 97) % 26 + 97)

        else:

            result += char # 알파벳이 아닌 경우는 그대로 저장합니다.

    return result

#본문

text = input("암호화할 문자열을 입력하세요: ")

shift = int(input("밀어낼 거리를 입력하세요: "))

ciphered_text = caesar_cipher(text, shift)

print("암호화된 결과: " + ciphered_text)


text ="idontwanttofinishvacation

shift = 8 #555는 악마의 숫자라 일컷는데 5가 3개이고 5+3은 8이라서ㅎ

ciphered_text = caesar_cipher(text, shift)

print("암호화된 결과: " + ciphered_text)
