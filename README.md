# Informações importantes
Esta API foi desenvolvida na linguagem java através do framework Spring Boot.
Para a atualização de dados da mesma, foi-se criado um minerador de dados em Python

O minerador de dados poderá ser localizado [neste diretório](minerador/covid19_api_mine.py)
O banco de dados poderá ser localizado [neste diretório](db/status.sql)

- Antes de iniciar o minerador, lembre-se de importar o banco de dados e todas as bibliotecas informadas abaixo.

Bibliotecas requeridas para o uso do minerador:
- Mysql Connector: https://pypi.org/project/mysql-connector/ ou pip install mysql-connector
- Requests: https://pypi.org/project/requests/ ou pip install requests
- BS4(BeautifulSoup): https://pypi.org/project/bs4/ ou pip install bs4

# Rotas da API

- Para acessar todas os países: http://localhost:8080/paises
- Para acessar um país: http://localhost:8080/país/{nome_do_pais}
  #### As urls foram exemplos de um ambiente local.

# Screenshots
[![minerador.jpg](https://i.postimg.cc/Y9zpDdns/minerador.jpg)](https://postimg.cc/S2jFJfp6)
[![Response.jpg](https://i.postimg.cc/vH2bggxC/Response.jpg)](https://postimg.cc/cr3VPJmc)
