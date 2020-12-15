import 'package:flutter/material.dart';

import '../models/category.dart';
import '../utils/app_routes.dart';

class CategoryItem extends StatelessWidget {

  final Category category;

  const CategoryItem(this.category);

  void _selectCategory(BuildContext context) {
    // esse push é para abrir, navegar de uma tela para outra
    // ela coloca essa tela que esta sendo chamada no topo da pilha
    // para remover (fechar) a tela, tem que usar o pop

    // 1 forma de fazer a navegação entre telas:
    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (_) {
    //       return CategoriesMealsScreen(category);
    //     },
    //   ),
    // );

    // Segunda forma de fazer a navegação
    Navigator.of(context).pushNamed(
      AppRoutes.CATEGORIES_MEALS,
      // aqui em arguments pode ser passado qualquer coisa: lista, objeto, string ...
      arguments: category,
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12), // borda do clique
      splashColor: Theme.of(context).primaryColor, // cor do clique no card
      onTap: () => _selectCategory(context),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), // coloca borda nas pontas do Container
          gradient: LinearGradient( // deixa em gradiente a cor, do mais claro para o mais escuro, no caso
            colors: [
              category.color.withOpacity(0.5),
              category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}