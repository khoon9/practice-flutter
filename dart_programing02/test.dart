void main(){
  // // async / await / Future : 1회만 응답을 돌려받는 경우
  //
  //
  // Future<void> todo(int second) async{
  //   await Future.delayed(Duration(seconds: second));
  //   print('TODO Done in Second seconds');
  // }
  //
  // todo(3);
  // todo(1);
  // todo(5);

  // async* / yield / Stream : 지속적으로 응답을 돌려받는 경우
  Stream<int> todo() async* {
    int counter = 0;

    while(counter <= 10){
      counter++;
      await Future.delayed(Duration(seconds: 1));
      print("TODO is Running $counter");
      yield counter;
    }

    print("TODO is Done");
  }

   todo().listen((event) {});

}