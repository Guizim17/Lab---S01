DIM DISTANCIA AS INTEGER                    'distancia percorrida'
INPUT DISTANCIA                             'digitar distancia'
DIM TEMPO AS INTEGER                        'tempo gasto'
INPUT TEMPO                                 'digitar tempo'
DIM PACE AS SINGLE = TEMPO / DISTANCIA      'calcular pace medio'
PRINT PACE, "min/Km"                        'imprimir pace medio'
SLEEP
