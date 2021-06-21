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
[Bruno Ferreira](github.com/brunof23)

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
- [Código de criação do banco] 
- [Povoamento do banco]

### Banco de dados multidimensional
- [Código de criação do DW]
- [Código de criação da dimensão de Datas]
- [Dicionário de dados do DW]
### [Notebook Python] 

-----------------------------------------------------------

## TABELAS DO DATA WAREHOUSE

### FACT_RESULTS

RESULT_ID                     = Identificador único da tabela (SK)<br>
DRIVER_ID                     = Identificador do piloto (FK DIM_DRIVERS)<br>
CONSTRUCTOR_ID                = Identificador da construtora (FK DIM_CONSTRUCTORS)<br>
RACE_ID                       = Identificador da corrida (FK DIM_RACES)<br>
CIRCUIT_ID                    = Identificador do circuito (FK DIM_CIRCUITS)<br>
DATE_ID                       = Identificador de data (FK DIM_DATE)<br>
CONSTRUCTOR_RESULTS_POINTS    = Pontuação da construtora por corrida<br>
GRID_POSITION                 = Posição do piloto no grid de largada<br>
DRIVER_FINISH_POSITION        = Posição do piloto ao fim da corrida<br>
RACE_DRIVER_POINTS            = Pontuação do piloto por corrida<br>
FASTEST_LAP_RANK              = Posição do piloto em relação à volta mais rápida (Ex: Piloto X teve a 1ª volta mais rápida, o FASTEST_LAP_RANK = 1)
FASTEST_LAP_SPEED             = Velocidade da volta mais rápida do piloto na corrida<br>

### DIM_RACES

RACE_ID = Identificador único da corrida (SK)<br>
RACE_NAME = Nome da corrida (EX: Brazilian Gran Prix 2020)<br>

### DIM_CIRCUIT 

CIRCUIT_ID = Identificador único do circuito (SK)<br>
CIRCUIT_NAME = Nome do circuito/pista<br>
CIRCUIT_LOCATION = Cidade em que se localiza o circuito<br>
CIRCUIT_COUNTRY = País em que se localiza o circuito<br>
CIRCUIT_LAT = Latitude em que se localiza o circuito<br>
CIRCUIT_LNG = Longitude em que se localiza o circuito<br>
CIRCUIT_ALT = Altitude em que se localiza o circuito<br>

### DIM_CONSTRUCTORS

CONSTRUCTOR_ID = Identificador único da construtora (SK)<br>
CONSTRUCTOR_NAME = Nome da construtora/equipe<br>
CONSTRUCTOR_NATIONALITY = Nacionalidade da construtora<br>

### DIM_DRIVERS

DRIVER_ID = Identificador único do piloto (SK)<br>
DRIVER_NAME = Nome completo do piloto<br>
DRIVER_NATIONALITY = Nacionalidade do piloto<br>

### DIM_DATE

DATE_ID = Identificador único do data (SK)<br>
DATE = Data em formato YYYY/MM/DD<br>
WEEK_DAY = Nome do dia da semana<br>
TEN_DAYS = Dezena do ano<br>
FORTNIGHT = Quinzena do ano<br>
MONTH_NUMBER = Número do mês do ano<br>
MONTH = Nome do mês do ano<br>
BIMESTER = Número do bimestre do ano<br>
QUARTER = Número do trimestre do ano<br>
SEMESTER = Número do semestre do ano<br>
YEAR = Número do ano<br>
