void main(){

  // 플러터 동기 비동기

  // async / await / Future : 1회만 응답을 돌려받는 경우
  // async* / yield / Stream : 지속적으로 응답을 돌려받는 경우

  Future<void> todo(int second) async{
    await Future.delayed(Duration(seconds: second));
  }

}