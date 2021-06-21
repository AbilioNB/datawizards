# datawizards
Projeto do treinamento da academia de Engenharia de Dados ofertada pela Gama Academy/Accenture.

## Desafio 

A FIA (Federação Internacional de Automobilismo) deseja construir um banco de dados sobre o campeonato de Fórmula 1.
Para isso contratou uma consultoria de software e você foi alocado no projeto como analista de sistemas responsável pelo projeto conceitual do banco de dados.
Após um levantamento de requisitos você identificou as informações relevantes abaixo:
* Os contrutores contratam pilotos
* Os construtores contratam fabricantes de motores
* Os circuitos recebem os grandes prêmios
* Os grandes prêmios possuem a seguinte pontuação:
* 1°	2°	3°	4°	5°	6°	7°	8°	9°	10°
* 25	18	15	12	10	8	6	4	2	1
* Caso o piloto faça a volta mais rápida e termine entre os 10 primeiros, o mesmo ganha um ponto adicional.
* O pódio é formado pelos 3 primeiros colocados.
* Cada grande prêmio possui um treino classificatório, que decide o Grid de largada.

Os requisitos de informação solicitados pelos usuários foram:

* Classificação do campeonado de pilotos
* Classificação do campeonado de contrutores
* Pilotos com mais pódios
* Pilotos com mais poles (primeiro lugar no treino classificatório)



Após a **modelagem do banco de dados relacional**, você deve modelar um **Data Warehouse** para este projeto.
Baseando no Data Warehouse, faça **explorações de dados com Python**,gerando insights sobre a massa de dados à sua escolha.

## Time Datawizards

[Abílio Nogueira](https://github.com/AbilioNB)<br>
[Alana Vieira](https://github.com/alanav120)<br>
[Alano Menezes](https://github.com/alanomenezes)<br>
[Antônio Carlos](https://github.com/Sandoque)<br>
[Breno Jones](https://github.com/bjagrelliB)<br>
[Bruno Ferreira](https://github.com/brunof23)

## Tarefas do projeto
### Modelagem relacional 
- [x] Modelar o banco 
- [x] Criar o banco 
- [x] Popular o banco 
### Modelagem multidimensional
- [x] Modelar o banco 
- [x] Criar o banco 
- [x] Processar dados do banco relacional
### Exploração dos dados com python
- [x] Jupyter Notebook com a análise inicial
### Análise dos dados com python
- [x] Jupyter Notebook com as informações extraídas 

## Arquivos desenvolvidos 

### Banco de dados transacional
- [Código de criação do banco](https://github.com/AbilioNB/datawizards/blob/main/Scripts%20transacional/FIA_DDL.sql) 
- [Povoamento do banco](https://github.com/AbilioNB/datawizards/blob/main/Scripts%20transacional/FIA_DML.SQL)

### Banco de dados multidimensional
- [Código de criação do DW](https://github.com/AbilioNB/datawizards/blob/main/Scripts%20DW/DML_DIM_DATE.sql)
- [Código de criação da dimensão de Datas](https://github.com/AbilioNB/datawizards/blob/main/Scripts%20DW/DML_DIM_DATE.sql)
- [Dicionário de dados do DW](https://github.com/AbilioNB/datawizards/blob/main/DW/dicionario-DW.md)
### [Notebook Python](https://github.com/AbilioNB/datawizards/blob/main/FIA_ACCENTURE_DATAWIZARDS.ipynb)

