import 'package:get/get.dart';

class HomeController extends GetxController {

  //FORMA QUE UTILIZA A PROGRAMAÇÃO REATIVA, ONDE SOMENTE O WIDGET QUE ESTÁ ENVOLVIDO POR OBX
  //SERÁ OBSERVADO E ATUALIZADO, E NESSA FORMA NÃO SERÁ A TELA TODA QUE SERÁ ATUALIZADA
  //E TAMBÉM NÃO É NECESSÁRIO UTILIZAR O UPDATE(); DO GET.

  //NESSE EXEMPLO TEMOS O PRIMEIRO WIDGET TEXT QUE ESTÁ SEM O OBX E POR ISSO NÃO SE ATUALIZA
  //E O SEGUNDO WIDGET QUE ESTÁ ENVOLVIDO POR OBX E SEMPRE QUE HÁ UMA MUDANÇA ELE ALTERA O SEU VALOR
  RxInt counter = 0.obs;

  //Aparentemente nao precisa mais de utilizar esse .value, mas por via das dúvidas e pra deixar
  //o exemplo mais completo vamos deixar o .value mesmo
  void increment () {
    counter.value++;
  }

  void decrement () {
    counter.value--;
  }

  void clear () {
    counter.value = 0;
  }

  void mais10 () {
    counter.value+=10;
  }

  void menos10 () {
    counter.value-=10;
  }








  //FORMA QUE NAO UTILIZA A PROGRAMAÇAO REATIVA E AO DAR O UPDATE TODA A TELA É ATUALIZADA
  /*int counter = 0;

  void increment () {
    counter++;
    update();
  }

  void decrement () {
    counter--;
    update();
  }

  void clear () {
    counter = 0;
    update();
  }

  void mais10 () {
    counter+=10;
    update();
  }

  void menos10 () {
    counter-=10;
    update();
  }*/




}