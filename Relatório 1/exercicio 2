DIM PIN AS INTEGER = 4829                       'pin fixo'
DIM SENHA AS INTEGER                            'pin para ser digitado'
DIM CORRETO AS BOOLEAN = FALSE                  'variavel bool para o while'
INPUT SENHA                                     'digitar pin'
WHILE CORRETO = FALSE                           'while ate acertar o pin'
    IF SENHA = PIN THEN                         'caso acerte'
        PRINT "Transacao autorizada!"
        CORRETO = TRUE
    ELSE 
        PRINT "Pin invalido. Tente novamente!"  'caso erre'
        CORRETO = FALSE
        INPUT SENHA                             'digitar pin novamente'
    END IF
WEND
SLEEP
