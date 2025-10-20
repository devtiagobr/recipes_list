# 📚 recipes_list

Este é um projeto, desenvolvido durante o bootcamp **Brasil l Sui Move Bootcamp - Outubro**, para gerenciamento de receitas utilizando a linguagem [Move](https://move-language.github.io/move/), voltado para a blockchain [Sui](https://docs.sui.io/). O objetivo é permitir o cadastro, remoção de receitas culinárias, com suporte a imagens armazenadas externamente.

## 🚀 Funcionalidades

- ✅ Cadastro de receitas com nome, descrição e imagem;
- 📄 Listagem de todas as receitas registradas;
- ❌ Remoção de receitas por index.

## 📦 Estrutura do Projeto

```bash
recipes_list/
├── sources/
│   └── img/                 # Imagens das receitas
│       └── image.png
├── sources/                 # Código fonte em Move
│   └── recipes_list.move    # Módulo principal com lógica de receitas
├── Move.toml                # Configuração do projeto Move
├── Move.lock                # Lockfile gerado pelo Move
└── README.md                # Documentação do projeto
```

## 🛠️ Como Construir o Projeto

1. **Clone o repositório:**

  ```bash
   git clone https://github.com/devtiagobr/recipes_list.git
   cd recipes_list
  ```

2. **Instale o Move CLI:**

   Siga as instruções oficiais para instalar o [Move CLI](https://move-book.com/before-we-begin/).

3. **Compile o projeto:**

  ```bash
sui move build
  ```

## ✍ Utilizando

Após compilar o projeto, você pode interagir com o módulo `recipes_list` utilizando um ambiente [Sui](https://docs.sui.io/).

#### Publique o pacote para a rede Sui

```bash
sui client publish 
```

#### Para cadastrar um receita chame a função `create_recipe`

```bash
sui client call --package <PACKAGE_ID> --module recipes_list --function create_recipe
```

#### Para adicionar uma receita chame a função `add_recipe`

```bash
sui client call --package <PACKAGE_ID> --module recipes_list --function add_recipe --args <OBJECT_ID> '<RECIPE_NAME>' '<RECIPE_DESCRIPTION>' '<IMAGE_REF>'
```

#### Para remover uma receita chame a função `remove_recipe`

```bash
sui client call --package <PACKAGE_ID> --module recipes_list --function remove_recipe --args <OBJECT_ID> <RECIPE_ID>
```

## 🖼️ Armazenamento de Imagens com Waruls

Utilizamos nesse projeto o serviço [Walrus](https://www.walrus.xyz) para armazenar as imagens das receitas. As imagens disponíveis na pasta `assets/img/` foram armazenadas no Walrus, mas é possível utilizar o link de uma imagem armazenada em outro local.

## 📄 Licença

Este projeto está licenciado sob a Licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.
