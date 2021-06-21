## DICIONÁRIO DO DATA WAREHOUSE

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
