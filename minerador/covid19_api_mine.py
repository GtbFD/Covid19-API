import mysql.connector
import requests
from bs4 import BeautifulSoup
from time import sleep
print('+----------------------------------------------------------+')
print('''         _____                _      _  __   _____ 
        /  __ \              (_)    | |/  | |  _  |
        | /  \/  ___  __   __ _   __| |`| | | |_| |
        | |     / _ \ \ \ / /| | / _` | | | \____ |
        | \__/\| (_) | \ V / | || (_| |_| |_.___/ /
         \____/ \___/   \_/  |_| \__,_|\___/\____/ ''')
print('+----------------------------------------------------------+')
print('+ [#]: Minerador de dados para atualização da API - Covid19')
print('+ [#]: Desenvolvido por: Gutemberg Ferreira Dantas')
print('+ [#]: Github: https://github.com/DantasGF/Covid19-API')
print('+----------------------------------------------------------+')
print('+ [!]: Estabelecendo conexão com o banco de dados...')
mydb = mysql.connector.connect(
    host='localhost',
    user='root',
    passwd='',
    database='covid19'
)
print('+ [OK]: Banco de dados conectado')
print('+----------------------------------------------------------+')
mycursor = mydb.cursor()

while True:
    print('\n+----------------------------------------------------------+')
    print('+ [!]: Inicializando mineração...')
    print('+----------------------------------------------------------+')
    print('+ [!]: Obtendo dados da internet...')
    page = requests.get('https://virusncov.com/')
    soup = BeautifulSoup(page.content, 'html.parser')
    container = soup.find('div', {'class': 'total-count'})
    info_world = container.findAll('h2')

    list_info_world = []
    for info in info_world:
        info = info.find('span').get_text()
        list_info_world.append(info.replace(',', ''))

    curados = list_info_world[2]
    total_casos = list_info_world[0]
    total_mortes = list_info_world[1]
    print('+ [OK]: Dados obtidos com sucesso.')
    print('+----------------------------------------------------------+')
    print('+ [!]: Atualizando banco de dados...')
    sql = "UPDATE status SET curados = %s, total_casos = %s, total_mortes = %s WHERE pais = %s"
    val = (curados, total_casos, total_mortes, "World")
    
    mycursor.execute(sql, val)
    mydb.commit()
    print('+ [OK]: Banco de dados atualizado com sucesso.')
    print('+----------------------------------------------------------+')

    print('+ [!]: Obtendo novos dados da internet...')
    table = soup.find('tbody')
    elements = table.find_all('tr')
    
    paises = []
    for info in elements:
        data = info.find_all('td')
        paises.append([data[1].get_text().replace('\n', ''), data[2].get_text(), data[4].get_text(), data[7].get_text(), data[6].get_text(), data[11].get_text()])
    print('+ [OK]: Novos dados obtidos com sucesso.')
    print('+----------------------------------------------------------+')
    print('+ [!]: Atualizando banco de dados...')
    sql = "UPDATE status SET curados = %s, total_casos = %s, total_mortes = %s, casos_ativos = %s, testes = %s WHERE pais = %s"
    for i in range(len(paises)):
        for j in range(len(paises[i])):
            pass
        val = (paises[i][3].replace(',', ''), paises[i][1].replace(',', ''), paises[i][2].replace(',', ''), paises[i][4].replace(',', ''), paises[i][5].replace(',', ''), paises[i][0])
        mycursor.execute(sql, val)
        mydb.commit()
    print('+ [OK]: Banco de dados atualizado com sucesso.')
    print('+----------------------------------------------------------+')
    print("+ [OK]: Mineração finalizada.")
    print('+----------------------------------------------------------+')
    print('+ [!]: Aguardando 20 minutos para a próxima mineração...')
    print('+----------------------------------------------------------+')
    sleep(20 * 60)