; Testing using CLIPS

; Initial-fact

(defglobal ?*three* = 3)

(defrule hello-world
    =>
    (println "Hello World")
    (assert (color red))
    (assert (color blue))
)

(defrule color-is-red
    ;(declare (salience 10))
    ?RED <- (color red)
    =>
    (println "It's Red!")
    (retract ?RED) ; Remove "red" from the fact list
)

(defrule color-is-blue
    ?BLUE <- (color blue)
    =>
    (println "Color is blue")
    (println ?*three*)
    (assert (color green))
)

