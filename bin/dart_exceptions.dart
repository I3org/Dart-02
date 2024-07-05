import 'controllers/bank_controller.dart';
import 'models/account.dart';
import 'exceptions/bank_controller_exception.dart';

void main() {
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));
  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  // Fazendo transferência

  try{
    bool result = bankController.makeTransfer(
        idSender: "Kako", idReceiver: "Ricarth", amount: 600);

    // Observando resultado
   if(result){
     print('Transação efetuada com sucesso');
   }
  } on SenderIdInvalidException catch(e){
    print(e);
    print("O ID ${e.idSender} do remetente não é um ID valido.");
  } on ReceiverIdInvalidException catch(e){
    print(e);
    print("O ID ${e.idReceiver} do destinatario não é um ID valido.");
  }on SenderNotAuthenticatedException catch(e){
    print(e);
    print("O usuario com ID ${e.idSender} não está autenticado.");
  }on ReceiverNotAuthenticatedException catch(e){
    print(e);
    print("O usuario com ID ${e.idReceiver} não está autenticado.");
  }on SenderBalanceLowerAmountException catch(e){
    print(e);
    print("O usuario de ${e.idSender} não possui saldo suficiente para efetuar a transação.");
  }on Exception{
  print('Algo deu errado');
  }
}