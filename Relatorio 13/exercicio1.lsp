(defstruct erva nome preco-por-grama toxicidade)

(defun classifica-erva (erva)
  (cond ((>= (erva-toxicidade erva) 7) "veneno")
        ((>= (erva-toxicidade erva) 4) "use com cuidado")
        (t "segura")))

(defun preco-da-dose (erva gramas)
  (* (erva-preco-por-grama erva) gramas))

(defun descreve-erva (erva)
  (format nil "~a | preco por grama: ~,2f | classificacao: ~a"
          (erva-nome erva)
          (erva-preco-por-grama erva)
          (classifica-erva erva)))

(defun aviso (erva)
  (if (>= (erva-toxicidade erva) 7)
      (format nil "- Maomao vai testar ~a em si mesma antes" (erva-nome erva))
      (format nil "- ~a esta liberada para o paciente" (erva-nome erva))))

(defun main ()
  (let ((ervas (list (make-erva :nome "Alfavaca" :preco-por-grama 0.5 :toxicidade 1)
                     (make-erva :nome "Dedaleira" :preco-por-grama 2.75 :toxicidade 5)
                     (make-erva :nome "Mamona" :preco-por-grama 8.4 :toxicidade 9))))
    (dolist (e ervas)
      (format t "~a~%" (descreve-erva e))
      (format t "~a~%" (aviso e)))
    (format t "Preco de 15 gramas de ~a: ~,2f~%"
            (erva-nome (second ervas))
            (preco-da-dose (second ervas) 15))))

(main)
