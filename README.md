# Propósito

App desenvolvido durante o corujão de Ruby on Rails promovido pela [CaravanaWeb](https://www.facebook.com/caravanaweb "CaravanaWeb") em conjunto com a comunidade [GURU-AL](https://www.facebook.com/groups/gurual/).

# Como rodar

Para rodar, é preciso ter o Ruby 1.9.3 instalado. Clone o repositório em seu computador, acesse o diretório e rode os sequintes comandos

  bundle install
  rails server

Se você não estiver rodando o aplicativo em localhost ou deseja dar acesso ao painel em tempo real, altere o arquivo config/private_pub.yml para o seu host preferencial (ou IP local)

Abra outro terminal (ou outra aba do terminal) e rode o seguinte comando para ativar o websocket:

  rackup private_pub.ru -s thin -E production

Para maiores detalhes sobre o private_pub, acesse a [página deles](https://github.com/ryanb/private_pub)

Se você estiver rodando em um ambiente local, acesse:

  http://localhost:3000

Nessa página está o painel de pedidos em tempo real. Abra uma nova aba do seu browser e adicione novos produtos em

  http://localhost:3000/products

e depois adicione novos pedidos em

  http://localhost:3000/orders

Ao adicionar uma nova rota, automaticamente aparecerá o pedido na sua página inicial.