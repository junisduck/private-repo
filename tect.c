1: int main(int argc, const char *argv[]) {
2: char *temp;
3: temp = (char *)malloc(BUFFER_SIZE);
4: ……
5: free(temp);
6: //해제한 자원을 사용하고 있어 의도하지 않은 결과가 발생하게 된다.
7: stmcpy(temp, argv[1], BUFFER_SIZE-1);
8: }
