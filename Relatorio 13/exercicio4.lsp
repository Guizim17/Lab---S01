(defstruct criatura nome bioma profundidade perigo)

(defun texto-do-perigo (perigo)
  (case perigo
    (:inofensiva "Inofensiva")
    (:agressiva "Agressiva")
    (:leviata "Leviata: mantenha distancia")
    (otherwise "Desconhecido")))

(defun descreve-criatura (c)
  (format nil "~a | bioma: ~a | profundidade: ~a m | perigo: ~a"
          (criatura-nome c)
          (criatura-bioma c)
          (criatura-profundidade c)
          (texto-do-perigo (criatura-perigo c))))

(defun abaixo-de (metros catalogo)
  (remove-if-not (lambda (c) (> (criatura-profundidade c) metros)) catalogo))

(defparameter *catalogo*
  (list (make-criatura :nome "Peeper" :bioma "Zona Segura Rasa" :profundidade 10 :perigo :inofensiva)
        (make-criatura :nome "Stalker" :bioma "Floresta de Algas" :profundidade 50 :perigo :agressiva)
        (make-criatura :nome "Crabsquid" :bioma "Floresta Perdida" :profundidade 600 :perigo :agressiva)
        (make-criatura :nome "Reaper Leviathan" :bioma "Ilha da Aurora" :profundidade 200 :perigo :leviata)
        (make-criatura :nome "Ghost Leviathan" :bioma "Zona Morta" :profundidade 900 :perigo :leviata)))

(defun main ()
  (format t "Catalogo completo:~%")
  (dolist (texto (mapcar #'descreve-criatura *catalogo*))
    (format t "~a~%" texto))
  (let ((fundas (abaixo-de 150 *catalogo*)))
    (format t "~%Criaturas abaixo de 150 m:~%")
    (dolist (texto (mapcar #'descreve-criatura fundas))
      (format t "~a~%" texto))
    (format t "Quantidade: ~a~%" (length fundas))))

(main)
