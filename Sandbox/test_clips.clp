; Testing using CLIPS

; Initial-fact
(defrule hello-world
    =>
    (println "Hello World")
    (assert (color red))
)

(defrule color-is-red
    ?RED <- (color red)
    =>
    (println "It's Red!")
    ;(retract ?RED)
)