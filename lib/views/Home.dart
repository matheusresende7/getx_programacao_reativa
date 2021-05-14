import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_programacao_reativa/controllers/HomeController.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) {

          return Scaffold(

            appBar: AppBar(
              title: Text('GetX ProgReact'),
            ),

            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text('Sem programação reativa:',),

                  Text(
                    '${_.counter.value}',
                    style: Theme.of(context).textTheme.headline4,
                  ),

                  SizedBox(height: 20,),

                  Text('Com programação reativa:',),

                  //Aparentemente nao precisa mais de utilizar esse .value, mas por via das
                  //dúvidas e pra deixar o exemplo mais completo vamos deixar o .value mesmo
                  Obx(() {
                    return Text(
                      '${_.counter.value}',
                      style: Theme.of(context).textTheme.headline4,
                    );
                  }),

                  SizedBox(height: 20,),

                  ElevatedButton.icon(
                      icon: Icon(Icons.add),
                      label: Text('Adicionar'),
                      onPressed: () {_.increment();},
                  ),

                  SizedBox(height: 10,),

                  ElevatedButton.icon(
                    icon: Icon(Icons.remove),
                    label: Text('Remover'),
                    onPressed: () {_.decrement();},
                  ),

                  SizedBox(height: 10,),

                  ElevatedButton.icon(
                    icon: Icon(Icons.clear),
                    label: Text('Zerar'),
                    onPressed: () {_.clear();},
                  ),

                  SizedBox(height: 10,),

                  ElevatedButton.icon(
                    icon: Icon(Icons.forward_10),
                    label: Text('Mais 10'),
                    onPressed: () {_.mais10();},
                  ),

                  SizedBox(height: 10,),

                  ElevatedButton.icon(
                    icon: Icon(Icons.replay_10),
                    label: Text('Menos 10'),
                    onPressed: () {_.menos10();},
                  ),

                ],
              ),
            ),

            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              tooltip: 'Increment',
              onPressed: _.increment,
            ),

          );

        }
    );

  }
}
