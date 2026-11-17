(defstruct garota-magica nome escuridao bruxas)

(defun escuridao-total (grupo)
  (if (null grupo)
      0
      (+ (garota-magica-escuridao (car grupo))
         (escuridao-total (cdr grupo)))))

(defun total-de-bruxas (grupo)
  (reduce #'+ (mapcar #'garota-magica-bruxas grupo)))

(defun purifica (g quantidade)
  (make-garota-magica
   :nome (garota-magica-nome g)
   :escuridao (if (>= quantidade (garota-magica-escuridao g))
                  0
                  (- (garota-magica-escuridao g) quantidade))
   :bruxas (garota-magica-bruxas g)))

(defun main ()
  (let* ((grupo (list (make-garota-magica :nome "Madoka" :escuridao 10 :bruxas 3)
                      (make-garota-magica :nome "Sayaka" :escuridao 75 :bruxas 6)
                      (make-garota-magica :nome "Mami" :escuridao 30 :bruxas 20)))
         (homura (make-garota-magica :nome "Homura" :escuridao 45 :bruxas 12))
         (grupo-novo (cons homura grupo)))
    (format t "Escuridao total do grupo: ~a~%" (escuridao-total grupo))
    (format t "Total de bruxas derrotadas: ~a~%" (total-de-bruxas grupo))
    (format t "~a fez o contrato~%" (garota-magica-nome homura))
    (format t "Escuridao total do grupo original: ~a~%" (escuridao-total grupo))
    (format t "Escuridao total do grupo novo: ~a~%" (escuridao-total grupo-novo))
    (let* ((original (second grupo))
           (nova (purifica original 50)))
      (format t "Escuridao de ~a original: ~a~%"
              (garota-magica-nome original) (garota-magica-escuridao original))
      (format t "Escuridao de ~a purificada: ~a~%"
              (garota-magica-nome nova) (garota-magica-escuridao nova)))))

(main)
