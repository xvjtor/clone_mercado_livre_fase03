# app_clone_mercado_livre

Funcionalidades:
Barra de pesquisa na parte superior
Ícone de carrinho com contador de produtos
Lista de produtos dinâmica
Adicionar produto ao carrinho
Simulação de carregamento de dados (loading)
Avaliação de produtos com estrelas
Snackbar ao adicionar produto ao carrinho

A estrutura foi organizada para separar responsabilidades entre dados, interface e lógica.

LIB
│   main.dart
│   
├───database
│       products_database.dart
│       
├───models
│       product_model.dart
│
├───pages
│       cart_page.dart
│       product_page.dart
│
├───stores
│       cart_store.dart
│       cart_store.g.dart
│       stores.dart
│
└───widgets
        add_cart_button_widget.dart
        cart_icon_widget.dart
        cart_list_widget.dart
        product_list_widget.dart
        rating_widget.dart
        search_widget.dart
