(defstruct dominio nome elemento dificuldade mora)

(defun bonus-elemental (elemento)
  (case elemento
    (:electro 1.5)
    (:hydro 1.2)
    (otherwise 1)))

(defun recompensa-final (d)
  (* (dominio-mora d) (bonus-elemental (dominio-elemento d))))

(defun rota (lista dificuldade-maxima)
  (let* ((possiveis (remove-if-not
                     (lambda (d) (<= (dominio-dificuldade d) dificuldade-maxima))
                     lista))
         (textos (mapcar
                  (lambda (d)
                    (format nil "~a | recompensa: ~,1f mora"
                            (dominio-nome d) (recompensa-final d)))
                  possiveis)))
    textos))

(defun main ()
  (let ((dominios (list (make-dominio :nome "Domain of Guyun" :elemento :electro :dificuldade 1 :mora 900)
                        (make-dominio :nome "Midsummer Courtyard" :elemento :pyro :dificuldade 2 :mora 1200)
                        (make-dominio :nome "Valley of Remembrance" :elemento :hydro :dificuldade 3 :mora 1800)
                        (make-dominio :nome "City of Gold" :elemento :ameno :dificuldade 4 :mora 2400)
                        (make-dominio :nome "Clear Pool and Mountain Cavern" :elemento :geo :dificuldade 5 :mora 3200))))
    (format t "Rota para dificuldade maxima 3:~%")
    (dolist (texto (rota dominios 3))
      (format t "~a~%" texto))
    (format t "Total de mora da lista: ~,1f~%"
            (reduce #'+ (mapcar #'recompensa-final dominios)))
    (let ((copia (copy-dominio (third dominios))))
      (setf (dominio-mora copia) 9999)
      (format t "Mora da copia: ~a~%" (dominio-mora copia))
      (format t "Mora do original: ~a~%" (dominio-mora (third dominios))))))

(main)
