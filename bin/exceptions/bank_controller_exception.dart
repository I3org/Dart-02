class SenderIdInvalidException implements Exception{
  String report = 'SenderIdInvalidException';
   String  idSender;
   SenderIdInvalidException({required this.idSender});

   @override
  String toString(){
     return
       "$report\n"
           "ID Sender: $idSender";
   }
}
class ReceiverIdInvalidException implements Exception{
  String report = 'ReceiverIdInvalidException';
  String idReceiver;
  ReceiverIdInvalidException({required this.idReceiver});

  @override
  String toString(){
    return
      "$report\n"
          "ID Reciever: $idReceiver";
  }
}
class SenderNotAuthenticatedException implements Exception{
  String report = 'SenderNotAuthenticatedException';
  String idSender;
SenderNotAuthenticatedException({required this.idSender});

  @override
  String toString(){
    return
      "$report\n"
          "ID Sender: $idSender";
  }
}
class ReceiverNotAuthenticatedException implements Exception{
  String report = 'ReceiverNotAuthenticatedException';
  String idReceiver;
  ReceiverNotAuthenticatedException ({required this.idReceiver});

  @override
  String toString(){
    return
      "$report\n"
          "ID Receiver: $idReceiver";
  }
}
class SenderBalanceLowerAmountException implements Exception{
  String report = 'SenderBalanceLowerAmountException';
  String idSender;
  SenderBalanceLowerAmountException({required this.idSender});

  @override
  String toString(){
    return
      "$report\n"
          "ID Sender: $idSender";
  }
}
