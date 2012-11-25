(defvar *23matches*
  '(((:line 20 (:print (:apply tab (:icon 31)) :semi (:scon "23 matches")))
     (:line 30
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 40 (:print) (:print) (:print))
     (:line 80 (:print (:scon " this is a game called '23 matches'.")))
     (:line 90 (:print))
     (:line 100
      (:print (:scon "when it is your turn, you may take one, two, or three")))
     (:line 110
      (:print
       (:scon "matches. the object of the game is not to have to take")))
     (:line 120 (:print (:scon "the last match."))) (:line 130 (:print))
     (:line 140 (:print (:scon "let's flip a coin to see who goes first.")))
     (:line 150 (:print (:scon "if it comes up heads, i will win the toss.")))
     (:line 155 (:print)) (:line 160 (:rem "
"))
     (:line 165 (:let (:var n) (:icon 23)))
     (:line 170
      (:let (:var q)
       (:apply int (:binary :mul (:icon 2) (:apply rnd (:icon 5))))))
     (:line 180 (:if (:binary :eq (:var q) (:icon 1))) (:goto 210))
     (:line 190 (:print (:scon "tails! you go first. "))) (:line 195 (:print))
     (:line 200 (:goto 300))
     (:line 210 (:print (:scon "heads! i win! ha! ha!")))
     (:line 220 (:print (:scon "prepare to lose, meatball-nose!!")))
     (:line 230 (:print)) (:line 250 (:print (:scon "i take 2 matches")))
     (:line 260 (:let (:var n) (:binary :minus (:var n) (:icon 2))))
     (:line 270 (:print (:scon "the number of matches is now") (:var n)))
     (:line 280 (:print))
     (:line 290
      (:print (:scon "your turn -- you may take 1, 2 or 3 matches.")))
     (:line 300 (:print (:scon "how many do you wish to remove") :comma))
     (:line 310 (:input nil ((:var k))))
     (:line 320 (:if (:binary :gt (:var k) (:icon 3))) (:goto 430))
     (:line 330 (:if (:binary :le (:var k) (:icon 0))) (:goto 430))
     (:line 340 (:let (:var n) (:binary :minus (:var n) (:var k))))
     (:line 350
      (:print (:scon "there are now") :semi (:var n) :semi
       (:scon "matches remaining.")))
     (:line 351 (:if (:binary :eq (:var n) (:icon 4))) (:goto 381))
     (:line 352 (:if (:binary :eq (:var n) (:icon 3))) (:goto 383))
     (:line 353 (:if (:binary :eq (:var n) (:icon 2))) (:goto 385))
     (:line 360 (:if (:binary :le (:var n) (:icon 1))) (:goto 530))
     (:line 370 (:let (:var z) (:binary :minus (:icon 4) (:var k))))
     (:line 372 (:goto 390)) (:line 380 (:print))
     (:line 381 (:let (:var z) (:icon 3))) (:line 382 (:goto 390))
     (:line 383 (:let (:var z) (:icon 2))) (:line 384 (:goto 390))
     (:line 385 (:let (:var z) (:icon 1)))
     (:line 390
      (:print (:scon "my turn ! i remove") (:var z) (:scon "matches")))
     (:line 400 (:let (:var n) (:binary :minus (:var n) (:var z))))
     (:line 410 (:if (:binary :le (:var n) (:icon 1))) (:goto 470))
     (:line 420 (:goto 270)) (:line 430 (:print (:scon "very funny! dummy!")))
     (:line 440 (:print (:scon "do you want to play or goof around?")))
     (:line 450 (:print (:scon "now, how many matches do you want") :comma))
     (:line 460 (:goto 310)) (:line 470 (:print))
     (:line 480
      (:print (:scon "you poor boob! you took the last match! i gotcha!!")))
     (:line 490 (:print (:scon "ha ! ha ! i beat you !!!")))
     (:line 500 (:print)) (:line 510 (:print (:scon "good bye loser!")))
     (:line 520 (:goto 560))
     (:line 530 (:print (:scon "you won, floppy ears !")))
     (:line 540 (:print (:scon "think you're pretty smart !")))
     (:line 550
      (:print (:scon "lets play again and i'll blow your shoes off !!")))
     (:line 560 (:stop)) (:line 570 (:end)))))



(defvar *3dplot*
  '(((:line 1 (:print (:apply tab (:icon 32)) :semi (:scon "3d plot")))
     (:line 2
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 3 (:print) (:print) (:print))
     (:line 5
      (:def fna z
       (:binary :mul (:icon 30)
        (:apply exp
         (:binary :div (:binary :mul (:uminus (:var z)) (:var z))
          (:icon 100))))))
     (:line 100 (:print))
     (:line 110 (:for x (:uminus (:icon 30)) (:icon 30) (:fcon 1.5)))
     (:line 120 (:let (:var l) (:icon 0)))
     (:line 130
      (:let (:var y1)
       (:binary :mul (:icon 5)
        (:apply int
         (:binary :div
          (:apply sqr
           (:binary :minus (:icon 900)
            (:binary :mul (:var x) (:var x))))
          (:icon 5))))))
     (:line 140
      (:for y (:var y1) (:uminus (:var y1)) (:uminus (:icon 5))))
     (:line 150
      (:let (:var z)
       (:apply int
        (:binary :minus
         (:binary :plus (:icon 25)
          (:apply fna
           (:apply sqr
            (:binary :plus (:binary :mul (:var x) (:var x))
             (:binary :mul (:var y) (:var y))))))
         (:binary :mul (:fcon 0.7) (:var y))))))
     (:line 160 (:if (:binary :le (:var z) (:var l))) (:goto 190))
     (:line 170 (:let (:var l) (:var z)))
     (:line 180 (:print (:apply tab (:var z)) :semi (:scon "*") :semi))
     (:line 190 (:next y)) (:line 200 (:print)) (:line 210 (:next x))
     (:line 300 (:end)))))



(defvar *aceyducey*
  '(((:line 10
      (:print (:apply tab (:icon 26)) :semi
       (:scon "acey ducey card game")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 21 (:print)) (:line 22 (:print))
     (:line 30
      (:print (:scon "acey-ducey is played in the following manner ")))
     (:line 40
      (:print (:scon "the dealer (computer) deals two cards face up")))
     (:line 50
      (:print (:scon "you have an option to bet or not bet depending")))
     (:line 60
      (:print (:scon "on whether or not you feel the card will have")))
     (:line 70 (:print (:scon "a value between the first two.")))
     (:line 80 (:print (:scon "if you do not want to bet, input a 0")))
     (:line 100 (:let (:var n) (:icon 100)))
     (:line 110 (:let (:var q) (:icon 100)))
     (:line 120
      (:print (:scon "you now have") :semi (:var q) :semi
       (:scon "dollars.")))
     (:line 130 (:print)) (:line 140 (:goto 260))
     (:line 210 (:let (:var q) (:binary :plus (:var q) (:var m))))
     (:line 220 (:goto 120))
     (:line 240 (:let (:var q) (:binary :minus (:var q) (:var m))))
     (:line 250 (:goto 120))
     (:line 260 (:print (:scon "here are your next two cards: ")))
     (:line 270
      (:let (:var a)
       (:binary :plus
        (:apply int (:binary :mul (:icon 14) (:apply rnd (:icon 1))))
        (:icon 2))))
     (:line 280 (:if (:binary :lt (:var a) (:icon 2))) (:goto 270))
     (:line 290 (:if (:binary :gt (:var a) (:icon 14))) (:goto 270))
     (:line 300
      (:let (:var b)
       (:binary :plus
        (:apply int (:binary :mul (:icon 14) (:apply rnd (:icon 1))))
        (:icon 2))))
     (:line 310 (:if (:binary :lt (:var b) (:icon 2))) (:goto 300))
     (:line 320 (:if (:binary :gt (:var b) (:icon 14))) (:goto 300))
     (:line 330 (:if (:binary :ge (:var a) (:var b))) (:goto 270))
     (:line 350 (:if (:binary :lt (:var a) (:icon 11))) (:goto 400))
     (:line 360 (:if (:binary :eq (:var a) (:icon 11))) (:goto 420))
     (:line 370 (:if (:binary :eq (:var a) (:icon 12))) (:goto 440))
     (:line 380 (:if (:binary :eq (:var a) (:icon 13))) (:goto 460))
     (:line 390 (:if (:binary :eq (:var a) (:icon 14))) (:goto 480))
     (:line 400 (:print (:var a))) (:line 410 (:goto 500))
     (:line 420 (:print (:scon "jack"))) (:line 430 (:goto 500))
     (:line 440 (:print (:scon "queen"))) (:line 450 (:goto 500))
     (:line 460 (:print (:scon "king"))) (:line 470 (:goto 500))
     (:line 480 (:print (:scon "ace")))
     (:line 500 (:if (:binary :lt (:var b) (:icon 11))) (:goto 550))
     (:line 510 (:if (:binary :eq (:var b) (:icon 11))) (:goto 570))
     (:line 520 (:if (:binary :eq (:var b) (:icon 12))) (:goto 590))
     (:line 530 (:if (:binary :eq (:var b) (:icon 13))) (:goto 610))
     (:line 540 (:if (:binary :eq (:var b) (:icon 14))) (:goto 630))
     (:line 550 (:print (:var b))) (:line 560 (:goto 650))
     (:line 570 (:print (:scon "jack"))) (:line 580 (:goto 650))
     (:line 590 (:print (:scon "queen"))) (:line 600 (:goto 650))
     (:line 610 (:print (:scon "king"))) (:line 620 (:goto 650))
     (:line 630 (:print (:scon "ace"))) (:line 640 (:print))
     (:line 650 (:print))
     (:line 660 (:input "what is your bet" ((:var m))))
     (:line 670 (:if (:binary :ne (:var m) (:icon 0))) (:goto 680))
     (:line 675 (:print (:scon "chicken!!"))) (:line 676 (:print))
     (:line 677 (:goto 260))
     (:line 680 (:if (:binary :le (:var m) (:var q))) (:goto 730))
     (:line 690 (:print (:scon "sorry, my friend, but you bet too much.")))
     (:line 700
      (:print (:scon "you have only ") :semi (:var q) :semi
       (:scon " dollars to bet.")))
     (:line 710 (:goto 650))
     (:line 730
      (:let (:var c)
       (:binary :plus
        (:apply int (:binary :mul (:icon 14) (:apply rnd (:icon 1))))
        (:icon 2))))
     (:line 740 (:if (:binary :lt (:var c) (:icon 2))) (:goto 730))
     (:line 750 (:if (:binary :gt (:var c) (:icon 14))) (:goto 730))
     (:line 760 (:if (:binary :lt (:var c) (:icon 11))) (:goto 810))
     (:line 770 (:if (:binary :eq (:var c) (:icon 11))) (:goto 830))
     (:line 780 (:if (:binary :eq (:var c) (:icon 12))) (:goto 850))
     (:line 790 (:if (:binary :eq (:var c) (:icon 13))) (:goto 870))
     (:line 800 (:if (:binary :eq (:var c) (:icon 14))) (:goto 890))
     (:line 810 (:print (:var c))) (:line 820 (:goto 910))
     (:line 830 (:print (:scon "jack"))) (:line 840 (:goto 910))
     (:line 850 (:print (:scon "queen"))) (:line 860 (:goto 910))
     (:line 870 (:print (:scon "king"))) (:line 880 (:goto 910))
     (:line 890 (:print (:scon "ace"))) (:line 900 (:print))
     (:line 910 (:if (:binary :gt (:var c) (:var a))) (:goto 930))
     (:line 920 (:goto 970))
     (:line 930 (:if (:binary :ge (:var c) (:var b))) (:goto 970))
     (:line 950 (:print (:scon "you win!!!"))) (:line 960 (:goto 210))
     (:line 970 (:print (:scon "sorry, you lose")))
     (:line 980 (:if (:binary :lt (:var m) (:var q))) (:goto 240))
     (:line 990 (:print)) (:line 1000 (:print))
     (:line 1010 (:print (:scon "sorry, friend, but you blew your wad.")))
     (:line 1015 (:print) (:print))
     (:line 1020 (:input "try again (yes or no)" ((:var a$))))
     (:line 1025 (:print) (:print))
     (:line 1030 (:if (:binary :eq (:var a$) (:scon "yes"))) (:goto 110))
     (:line 1040 (:print (:scon "o.k., hope you had fun!")))
     (:line 1050 (:end)))))



(defvar *amazing*
  '(((:line 10
      (:print (:apply tab (:icon 28)) :semi (:scon "amazing program")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print) (:print))
     (:line 100
      (:input "what are your width and length" ((:var h) (:var v))))
     (:line 102
      (:if
       (:lazy-binary :and (:binary :ne (:var h) (:icon 1))
        (:binary :ne (:var v) (:icon 1))))
      (:goto 110))
     (:line 104 (:print (:scon "meaningless dimensions.  try again."))
      (:goto 100))
     (:line 110
      (:dim
       ((:dimd2 w (:var h) (:var v))
        (:dimd2 v (:var h) (:var v)))))
     (:line 120 (:print)) (:line 130 (:print)) (:line 140 (:print))
     (:line 150 (:print))
     (:line 160 (:let (:var q) (:icon 0)) (:let (:var z) (:icon 0))
      (:let (:var x)
       (:apply int
        (:binary :plus (:binary :mul (:apply rnd (:icon 1)) (:var h))
         (:icon 1)))))
     (:line 165 (:for i (:icon 1) (:var h) nil))
     (:line 170 (:if (:binary :eq (:var i) (:var x))) (:goto 173))
     (:line 171 (:print (:scon ".--") :semi) (:goto 180))
     (:line 173 (:print (:scon ".  ") :semi)) (:line 180 (:next i))
     (:line 190 (:print (:scon ".")))
     (:line 195 (:let (:var c) (:icon 1))
      (:let (:apply w (:var x) (:icon 1)) (:var c))
      (:let (:var c) (:binary :plus (:var c) (:icon 1))))
     (:line 200 (:let (:var r) (:var x)) (:let (:var s) (:icon 1))
      (:goto 260))
     (:line 210 (:if (:binary :ne (:var r) (:var h))) (:goto 240))
     (:line 215 (:if (:binary :ne (:var s) (:var v))) (:goto 230))
     (:line 220 (:let (:var r) (:icon 1)) (:let (:var s) (:icon 1))
      (:goto 250))
     (:line 230 (:let (:var r) (:icon 1))
      (:let (:var s) (:binary :plus (:var s) (:icon 1))) (:goto 250))
     (:line 240 (:let (:var r) (:binary :plus (:var r) (:icon 1))))
     (:line 250
      (:if (:binary :eq (:apply w (:var r) (:var s)) (:icon 0)))
      (:goto 210))
     (:line 260
      (:if (:binary :eq (:binary :minus (:var r) (:icon 1)) (:icon 0)))
      (:goto 530))
     (:line 265
      (:if
       (:binary :ne
        (:apply w (:binary :minus (:var r) (:icon 1)) (:var s))
        (:icon 0)))
      (:goto 530))
     (:line 270
      (:if (:binary :eq (:binary :minus (:var s) (:icon 1)) (:icon 0)))
      (:goto 390))
     (:line 280
      (:if
       (:binary :ne
        (:apply w (:var r) (:binary :minus (:var s) (:icon 1)))
        (:icon 0)))
      (:goto 390))
     (:line 290 (:if (:binary :eq (:var r) (:var h))) (:goto 330))
     (:line 300
      (:if
       (:binary :ne
        (:apply w (:binary :plus (:var r) (:icon 1)) (:var s))
        (:icon 0)))
      (:goto 330))
     (:line 310
      (:let (:var x)
       (:apply int
        (:binary :plus (:binary :mul (:apply rnd (:icon 1)) (:icon 3))
         (:icon 1)))))
     (:line 320 (:on-goto (:var x) (790 820 860)))
     (:line 330 (:if (:binary :ne (:var s) (:var v))) (:goto 340))
     (:line 334 (:if (:binary :eq (:var z) (:icon 1))) (:goto 370))
     (:line 338 (:let (:var q) (:icon 1)) (:goto 350))
     (:line 340
      (:if
       (:binary :ne
        (:apply w (:var r) (:binary :plus (:var s) (:icon 1)))
        (:icon 0)))
      (:goto 370))
     (:line 350
      (:let (:var x)
       (:apply int
        (:binary :plus (:binary :mul (:apply rnd (:icon 1)) (:icon 3))
         (:icon 1)))))
     (:line 360 (:on-goto (:var x) (790 820 910)))
     (:line 370
      (:let (:var x)
       (:apply int
        (:binary :plus (:binary :mul (:apply rnd (:icon 1)) (:icon 2))
         (:icon 1)))))
     (:line 380 (:on-goto (:var x) (790 820)))
     (:line 390 (:if (:binary :eq (:var r) (:var h))) (:goto 470))
     (:line 400
      (:if
       (:binary :ne
        (:apply w (:binary :plus (:var r) (:icon 1)) (:var s))
        (:icon 0)))
      (:goto 470))
     (:line 405 (:if (:binary :ne (:var s) (:var v))) (:goto 420))
     (:line 410 (:if (:binary :eq (:var z) (:icon 1))) (:goto 450))
     (:line 415 (:let (:var q) (:icon 1)) (:goto 430))
     (:line 420
      (:if
       (:binary :ne
        (:apply w (:var r) (:binary :plus (:var s) (:icon 1)))
        (:icon 0)))
      (:goto 450))
     (:line 430
      (:let (:var x)
       (:apply int
        (:binary :plus (:binary :mul (:apply rnd (:icon 1)) (:icon 3))
         (:icon 1)))))
     (:line 440 (:on-goto (:var x) (790 860 910)))
     (:line 450
      (:let (:var x)
       (:apply int
        (:binary :plus (:binary :mul (:apply rnd (:icon 1)) (:icon 2))
         (:icon 1)))))
     (:line 460 (:on-goto (:var x) (790 860)))
     (:line 470 (:if (:binary :ne (:var s) (:var v))) (:goto 490))
     (:line 480 (:if (:binary :eq (:var z) (:icon 1))) (:goto 520))
     (:line 485 (:let (:var q) (:icon 1)) (:goto 500))
     (:line 490
      (:if
       (:binary :ne
        (:apply w (:var r) (:binary :plus (:var s) (:icon 1)))
        (:icon 0)))
      (:goto 520))
     (:line 500
      (:let (:var x)
       (:apply int
        (:binary :plus (:binary :mul (:apply rnd (:icon 1)) (:icon 2))
         (:icon 1)))))
     (:line 510 (:on-goto (:var x) (790 910))) (:line 520 (:goto 790))
     (:line 530
      (:if (:binary :eq (:binary :minus (:var s) (:icon 1)) (:icon 0)))
      (:goto 670))
     (:line 540
      (:if
       (:binary :ne
        (:apply w (:var r) (:binary :minus (:var s) (:icon 1)))
        (:icon 0)))
      (:goto 670))
     (:line 545 (:if (:binary :eq (:var r) (:var h))) (:goto 610))
     (:line 547
      (:if
       (:binary :ne
        (:apply w (:binary :plus (:var r) (:icon 1)) (:var s))
        (:icon 0)))
      (:goto 610))
     (:line 550 (:if (:binary :ne (:var s) (:var v))) (:goto 560))
     (:line 552 (:if (:binary :eq (:var z) (:icon 1))) (:goto 590))
     (:line 554 (:let (:var q) (:icon 1)) (:goto 570))
     (:line 560
      (:if
       (:binary :ne
        (:apply w (:var r) (:binary :plus (:var s) (:icon 1)))
        (:icon 0)))
      (:goto 590))
     (:line 570
      (:let (:var x)
       (:apply int
        (:binary :plus (:binary :mul (:apply rnd (:icon 1)) (:icon 3))
         (:icon 1)))))
     (:line 580 (:on-goto (:var x) (820 860 910)))
     (:line 590
      (:let (:var x)
       (:apply int
        (:binary :plus (:binary :mul (:apply rnd (:icon 1)) (:icon 2))
         (:icon 1)))))
     (:line 600 (:on-goto (:var x) (820 860)))
     (:line 610 (:if (:binary :ne (:var s) (:var v))) (:goto 630))
     (:line 620 (:if (:binary :eq (:var z) (:icon 1))) (:goto 660))
     (:line 625 (:let (:var q) (:icon 1)) (:goto 640))
     (:line 630
      (:if
       (:binary :ne
        (:apply w (:var r) (:binary :plus (:var s) (:icon 1)))
        (:icon 0)))
      (:goto 660))
     (:line 640
      (:let (:var x)
       (:apply int
        (:binary :plus (:binary :mul (:apply rnd (:icon 1)) (:icon 2))
         (:icon 1)))))
     (:line 650 (:on-goto (:var x) (820 910))) (:line 660 (:goto 820))
     (:line 670 (:if (:binary :eq (:var r) (:var h))) (:goto 740))
     (:line 680
      (:if
       (:binary :ne
        (:apply w (:binary :plus (:var r) (:icon 1)) (:var s))
        (:icon 0)))
      (:goto 740))
     (:line 685 (:if (:binary :ne (:var s) (:var v))) (:goto 700))
     (:line 690 (:if (:binary :eq (:var z) (:icon 1))) (:goto 730))
     (:line 695 (:let (:var q) (:icon 1)) (:goto 830))
     (:line 700
      (:if
       (:binary :ne
        (:apply w (:var r) (:binary :plus (:var s) (:icon 1)))
        (:icon 0)))
      (:goto 730))
     (:line 710
      (:let (:var x)
       (:apply int
        (:binary :plus (:binary :mul (:apply rnd (:icon 1)) (:icon 2))
         (:icon 1)))))
     (:line 720 (:on-goto (:var x) (860 910))) (:line 730 (:goto 860))
     (:line 740 (:if (:binary :ne (:var s) (:var v))) (:goto 760))
     (:line 750 (:if (:binary :eq (:var z) (:icon 1))) (:goto 780))
     (:line 755 (:let (:var q) (:icon 1)) (:goto 770))
     (:line 760
      (:if
       (:binary :ne
        (:apply w (:var r) (:binary :plus (:var s) (:icon 1)))
        (:icon 0)))
      (:goto 780))
     (:line 770 (:goto 910)) (:line 780 (:goto 1000))
     (:line 790
      (:let (:apply w (:binary :minus (:var r) (:icon 1)) (:var s))
       (:var c)))
     (:line 800 (:let (:var c) (:binary :plus (:var c) (:icon 1)))
      (:let (:apply v (:binary :minus (:var r) (:icon 1)) (:var s))
       (:icon 2))
      (:let (:var r) (:binary :minus (:var r) (:icon 1))))
     (:line 810
      (:if
       (:binary :eq (:var c)
        (:binary :plus (:binary :mul (:var h) (:var v)) (:icon 1))))
      (:goto 1010))
     (:line 815 (:let (:var q) (:icon 0)) (:goto 260))
     (:line 820
      (:let (:apply w (:var r) (:binary :minus (:var s) (:icon 1)))
       (:var c)))
     (:line 830 (:let (:var c) (:binary :plus (:var c) (:icon 1))))
     (:line 840
      (:let (:apply v (:var r) (:binary :minus (:var s) (:icon 1)))
       (:icon 1))
      (:let (:var s) (:binary :minus (:var s) (:icon 1)))
      (:if
       (:binary :eq (:var c)
        (:binary :plus (:binary :mul (:var h) (:var v)) (:icon 1))))
      (:goto 1010))
     (:line 850 (:let (:var q) (:icon 0)) (:goto 260))
     (:line 860
      (:let (:apply w (:binary :plus (:var r) (:icon 1)) (:var s))
       (:var c)))
     (:line 870 (:let (:var c) (:binary :plus (:var c) (:icon 1)))
      (:if (:binary :eq (:apply v (:var r) (:var s)) (:icon 0)))
      (:goto 880))
     (:line 875 (:let (:apply v (:var r) (:var s)) (:icon 3))
      (:goto 890))
     (:line 880 (:let (:apply v (:var r) (:var s)) (:icon 2)))
     (:line 890 (:let (:var r) (:binary :plus (:var r) (:icon 1))))
     (:line 900
      (:if
       (:binary :eq (:var c)
        (:binary :plus (:binary :mul (:var h) (:var v)) (:icon 1))))
      (:goto 1010))
     (:line 905 (:goto 530))
     (:line 910 (:if (:binary :eq (:var q) (:icon 1))) (:goto 960))
     (:line 920
      (:let (:apply w (:var r) (:binary :plus (:var s) (:icon 1)))
       (:var c))
      (:let (:var c) (:binary :plus (:var c) (:icon 1)))
      (:if (:binary :eq (:apply v (:var r) (:var s)) (:icon 0)))
      (:goto 940))
     (:line 930 (:let (:apply v (:var r) (:var s)) (:icon 3))
      (:goto 950))
     (:line 940 (:let (:apply v (:var r) (:var s)) (:icon 1)))
     (:line 950 (:let (:var s) (:binary :plus (:var s) (:icon 1)))
      (:if
       (:binary :eq (:var c)
        (:binary :plus (:binary :mul (:var h) (:var v)) (:icon 1))))
      (:goto 1010))
     (:line 955 (:goto 260)) (:line 960 (:let (:var z) (:icon 1)))
     (:line 970
      (:if (:binary :eq (:apply v (:var r) (:var s)) (:icon 0)))
      (:goto 980))
     (:line 975 (:let (:apply v (:var r) (:var s)) (:icon 3))
      (:let (:var q) (:icon 0)) (:goto 1000))
     (:line 980 (:let (:apply v (:var r) (:var s)) (:icon 1))
      (:let (:var q) (:icon 0)) (:let (:var r) (:icon 1))
      (:let (:var s) (:icon 1)) (:goto 250))
     (:line 1000 (:goto 210))
     (:line 1010 (:for j (:icon 1) (:var v) nil))
     (:line 1011 (:print (:scon "i") :semi))
     (:line 1012 (:for i (:icon 1) (:var h) nil))
     (:line 1013
      (:if (:binary :lt (:apply v (:var i) (:var j)) (:icon 2)))
      (:goto 1030))
     (:line 1020 (:print (:scon "   ") :semi)) (:line 1021 (:goto 1040))
     (:line 1030 (:print (:scon "  i") :semi)) (:line 1040 (:next i))
     (:line 1041 (:print)) (:line 1043 (:for i (:icon 1) (:var h) nil))
     (:line 1045
      (:if (:binary :eq (:apply v (:var i) (:var j)) (:icon 0)))
      (:goto 1060))
     (:line 1050
      (:if (:binary :eq (:apply v (:var i) (:var j)) (:icon 2)))
      (:goto 1060))
     (:line 1051 (:print (:scon ":  ") :semi)) (:line 1052 (:goto 1070))
     (:line 1060 (:print (:scon ":--") :semi)) (:line 1070 (:next i))
     (:line 1071 (:print (:scon "."))) (:line 1072 (:next j))
     (:line 1073 (:end)))))



(defvar *animal*
  '(((:line 10 (:print (:apply tab (:icon 32)) :semi (:scon "animal")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print))
     (:line 40 (:print (:scon "play 'guess the animal'"))) (:line 45 (:print))
     (:line 50
      (:print
       (:scon "think of an animal and the computer will try to guess it.")))
     (:line 60 (:print)) (:line 70 (:dim ((:dimd a$ (:icon 200)))))
     (:line 80 (:for i (:icon 0) (:icon 3) nil))
     (:line 90 (:read (:apply a$ (:var i)))) (:line 100 (:next i))
     (:line 110 (:let (:var n) (:apply val (:apply a$ (:icon 0)))))
     (:line 120 (:rem "          main control section
"))
     (:line 130 (:input "are you thinking of an animal" ((:var a$))))
     (:line 140 (:if (:binary :eq (:var a$) (:scon "list"))) (:goto 600))
     (:line 150
      (:if
       (:binary :ne (:apply left$ (:var a$) (:icon 1)) (:scon "y")))
      (:goto 120))
     (:line 160 (:let (:var k) (:icon 1))) (:line 170 (:gosub 390))
     (:line 180
      (:if
       (:binary :eq (:apply len (:apply a$ (:var k))) (:icon 0)))
      (:goto 999))
     (:line 190
      (:if
       (:binary :eq (:apply left$ (:apply a$ (:var k)) (:icon 2))
        (:scon "\\q")))
      (:goto 170))
     (:line 200
      (:print (:scon "is it a ") :semi
       (:apply right$ (:apply a$ (:var k))
        (:binary :minus (:apply len (:apply a$ (:var k)))
         (:icon 2)))
       :semi))
     (:line 210 (:input nil ((:var a$))))
     (:line 220
      (:let (:var a$) (:apply left$ (:var a$) (:icon 1))))
     (:line 230
      (:if
       (:binary :eq (:apply left$ (:var a$) (:icon 1)) (:scon "y")))
      (:print (:scon "why not try another animal?")) (:goto 120))
     (:line 240
      (:input "the animal you were thinking of was a " ((:var v$))))
     (:line 250
      (:print (:scon "please type in a question that would distinguish a")))
     (:line 260
      (:print (:var v$) :semi (:scon " from a ") :semi
       (:apply right$ (:apply a$ (:var k))
        (:binary :minus (:apply len (:apply a$ (:var k)))
         (:icon 2)))))
     (:line 270 (:input nil ((:var x$))))
     (:line 280
      (:print (:scon "for a ") :semi (:var v$) :semi
       (:scon " the answer would be ") :semi))
     (:line 290 (:input nil ((:var a$))))
     (:line 300 (:let (:var a$) (:apply left$ (:var a$) (:icon 1)))
      (:if
       (:lazy-binary :and (:binary :ne (:var a$) (:scon "y"))
        (:binary :ne (:var a$) (:scon "n"))))
      (:goto 280))
     (:line 310 (:if (:binary :eq (:var a$) (:scon "y")))
      (:let (:var b$) (:scon "n")))
     (:line 320 (:if (:binary :eq (:var a$) (:scon "n")))
      (:let (:var b$) (:scon "y")))
     (:line 330
      (:let (:var z1) (:apply val (:apply a$ (:icon 0)))))
     (:line 340
      (:let (:apply a$ (:icon 0))
       (:apply str$ (:binary :plus (:var z1) (:icon 2)))))
     (:line 350
      (:let (:apply a$ (:var z1)) (:apply a$ (:var k))))
     (:line 360
      (:let (:apply a$ (:binary :plus (:var z1) (:icon 1)))
       (:binary :plus (:scon "\\a") (:var v$))))
     (:line 370
      (:let (:apply a$ (:var k))
       (:binary :plus
        (:binary :plus
         (:binary :plus
          (:binary :plus
           (:binary :plus
            (:binary :plus
             (:binary :plus (:binary :plus (:scon "\\q") (:var x$))
              (:scon "\\"))
             (:var a$))
            (:apply str$ (:binary :plus (:var z1) (:icon 1))))
           (:scon "\\"))
          (:var b$))
         (:apply str$ (:var z1)))
        (:scon "\\"))))
     (:line 380 (:goto 120))
     (:line 390 (:rem "     subroutine to print questions
"))
     (:line 400 (:let (:var q$) (:apply a$ (:var k))))
     (:line 410 (:for z (:icon 3) (:apply len (:var q$)) nil))
     (:line 415
      (:if
       (:binary :ne (:apply mid$ (:var q$) (:var z) (:icon 1))
        (:scon "\\")))
      (:print (:apply mid$ (:var q$) (:var z) (:icon 1)) :semi)
      (:next z))
     (:line 420 (:input nil ((:var c$))))
     (:line 430
      (:let (:var c$) (:apply left$ (:var c$) (:icon 1))))
     (:line 440
      (:if
       (:lazy-binary :and (:binary :ne (:var c$) (:scon "y"))
        (:binary :ne (:var c$) (:scon "n"))))
      (:goto 410))
     (:line 450
      (:let (:var t$) (:binary :plus (:scon "\\") (:var c$))))
     (:line 455
      (:for x (:icon 3)
       (:binary :minus (:apply len (:var q$)) (:icon 1)) nil))
     (:line 460
      (:if
       (:binary :eq (:apply mid$ (:var q$) (:var x) (:icon 2))
        (:var t$)))
      (:goto 480))
     (:line 470 (:next x)) (:line 475 (:stop))
     (:line 480
      (:for y (:binary :plus (:var x) (:icon 1))
       (:apply len (:var q$)) nil))
     (:line 490
      (:if
       (:binary :eq (:apply mid$ (:var q$) (:var y) (:icon 1))
        (:scon "\\")))
      (:goto 510))
     (:line 500 (:next y)) (:line 505 (:stop))
     (:line 510
      (:let (:var k)
       (:apply val
        (:apply mid$ (:var q$) (:binary :plus (:var x) (:icon 2))
         (:binary :minus (:binary :minus (:var y) (:var x))
          (:icon 2))))))
     (:line 520 (:return))
     (:line 530
      (:data (:scon "4") (:scon "\\qdoes it swim\\y2\\n3\\") (:scon "\\afish")
       (:scon "\\abird")))
     (:line 600 (:print) (:print (:scon "animals i already know are:")))
     (:line 605 (:let (:var x) (:icon 0)))
     (:line 610 (:for i (:icon 1) (:icon 200) nil))
     (:line 620
      (:if
       (:binary :ne (:apply left$ (:apply a$ (:var i)) (:icon 2))
        (:scon "\\a")))
      (:goto 650))
     (:line 624
      (:print (:apply tab (:binary :mul (:icon 15) (:var x))) :semi))
     (:line 630
      (:for z (:icon 3) (:apply len (:apply a$ (:var i))) nil))
     (:line 640
      (:if
       (:binary :ne
        (:apply mid$ (:apply a$ (:var i)) (:var z) (:icon 1))
        (:scon "\\")))
      (:print
       (:apply mid$ (:apply a$ (:var i)) (:var z) (:icon 1))
       :semi)
      (:next z))
     (:line 645 (:let (:var x) (:binary :plus (:var x) (:icon 1)))
      (:if (:binary :eq (:var x) (:icon 4))) (:let (:var x) (:icon 0))
      (:print))
     (:line 650 (:next i)) (:line 660 (:print)) (:line 670 (:print))
     (:line 680 (:goto 120)) (:line 999 (:end)))))



(defvar *awari*
  '(((:line 5 (:print (:apply tab (:icon 34)) :semi (:scon "awari")))
     (:line 7
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 10 (:data (:icon 0)))
     (:line 15
      (:dim
       ((:dimd b (:icon 13)) (:dimd g (:icon 13))
        (:dimd f (:icon 50))))
      (:read (:var n)))
     (:line 20 (:print) (:print) (:let (:var e) (:icon 0)))
     (:line 25 (:for i (:icon 0) (:icon 12) nil)
      (:let (:apply b (:var i)) (:icon 3)) (:next i))
     (:line 30 (:let (:var c) (:icon 0))
      (:let (:apply f (:var n)) (:icon 0))
      (:let (:apply b (:icon 13)) (:icon 0))
      (:let (:apply b (:icon 6)) (:icon 0)))
     (:line 35 (:gosub 500))
     (:line 40 (:print (:scon "your move") :semi) (:gosub 110))
     (:line 45 (:if (:binary :eq (:var e) (:icon 0))) (:goto 80))
     (:line 50 (:if (:binary :eq (:var m) (:var h))) (:gosub 100))
     (:line 55 (:if (:binary :eq (:var e) (:icon 0))) (:goto 80))
     (:line 60 (:print (:scon "my move is ") :semi) (:gosub 800))
     (:line 65 (:if (:binary :eq (:var e) (:icon 0))) (:goto 80))
     (:line 70 (:if (:binary :eq (:var m) (:var h)))
      (:print (:scon ",") :semi) (:gosub 800))
     (:line 75 (:if (:binary :gt (:var e) (:icon 0))) (:goto 35))
     (:line 80 (:print) (:print (:scon "game over")))
     (:line 85
      (:let (:var d)
       (:binary :minus (:apply b (:icon 6)) (:apply b (:icon 13))))
      (:if (:binary :lt (:var d) (:icon 0)))
      (:print (:scon "i win by") :semi (:uminus (:var d)) :semi
       (:scon "points"))
      (:goto 20))
     (:line 90 (:let (:var n) (:binary :plus (:var n) (:icon 1)))
      (:if (:binary :eq (:var d) (:icon 0))) (:print (:scon "drawn game"))
      (:goto 20))
     (:line 95
      (:print (:scon "you win by") :semi (:var d) :semi (:scon "points"))
      (:goto 20))
     (:line 100 (:print (:scon "again") :semi))
     (:line 110 (:input nil ((:var m)))
      (:if (:binary :lt (:var m) (:icon 7)))
      (:if (:binary :gt (:var m) (:icon 0)))
      (:let (:var m) (:binary :minus (:var m) (:icon 1))) (:goto 130))
     (:line 120 (:print (:scon "illegal move")) (:goto 100))
     (:line 130 (:if (:binary :eq (:apply b (:var m)) (:icon 0)))
      (:goto 120))
     (:line 140 (:let (:var h) (:icon 6)) (:gosub 200))
     (:line 150 (:goto 500))
     (:line 200 (:let (:var k) (:var m)) (:gosub 600))
     (:line 205 (:let (:var e) (:icon 0))
      (:if (:binary :gt (:var k) (:icon 6)))
      (:let (:var k) (:binary :minus (:var k) (:icon 7))))
     (:line 210 (:let (:var c) (:binary :plus (:var c) (:icon 1)))
      (:if (:binary :lt (:var c) (:icon 9)))
      (:let (:apply f (:var n))
       (:binary :plus (:binary :mul (:apply f (:var n)) (:icon 6))
        (:var k))))
     (:line 215 (:for i (:icon 0) (:icon 5) nil)
      (:if (:binary :ne (:apply b (:var i)) (:icon 0))) (:goto 230))
     (:line 220 (:next i)) (:line 225 (:return))
     (:line 230 (:for i (:icon 7) (:icon 12) nil)
      (:if (:binary :ne (:apply b (:var i)) (:icon 0)))
      (:let (:var e) (:icon 1)) (:return))
     (:line 235 (:goto 220)) (:line 500 (:print) (:print (:scon "   ") :semi))
     (:line 505 (:for i (:icon 12) (:icon 7) (:uminus (:icon 1)))
      (:gosub 580))
     (:line 510 (:next i))
     (:line 515 (:print) (:let (:var i) (:icon 13)) (:gosub 580))
     (:line 520 (:print (:scon "                       ") :semi)
      (:print (:apply b (:icon 6))) (:print (:scon "   ") :semi))
     (:line 525 (:for i (:icon 0) (:icon 5) nil) (:gosub 580))
     (:line 530 (:next i)) (:line 535 (:print) (:print) (:return))
     (:line 580 (:if (:binary :lt (:apply b (:var i)) (:icon 10)))
      (:print (:scon " ") :semi))
     (:line 585 (:print (:apply b (:var i)) :semi) (:return))
     (:line 600 (:let (:var p) (:apply b (:var m)))
      (:let (:apply b (:var m)) (:icon 0)))
     (:line 605 (:for p (:var p) (:icon 1) (:uminus (:icon 1)))
      (:let (:var m) (:binary :plus (:var m) (:icon 1)))
      (:if (:binary :gt (:var m) (:icon 13)))
      (:let (:var m) (:binary :minus (:var m) (:icon 14))))
     (:line 610
      (:let (:apply b (:var m))
       (:binary :plus (:apply b (:var m)) (:icon 1)))
      (:next p))
     (:line 615 (:if (:binary :eq (:apply b (:var m)) (:icon 1)))
      (:if (:binary :ne (:var m) (:icon 6)))
      (:if (:binary :ne (:var m) (:icon 13)))
      (:if
       (:binary :ne (:apply b (:binary :minus (:icon 12) (:var m)))
        (:icon 0)))
      (:goto 625))
     (:line 620 (:return))
     (:line 625
      (:let (:apply b (:var h))
       (:binary :plus
        (:binary :plus (:apply b (:var h))
         (:apply b (:binary :minus (:icon 12) (:var m))))
        (:icon 1)))
      (:let (:apply b (:var m)) (:icon 0))
      (:let (:apply b (:binary :minus (:icon 12) (:var m))) (:icon 0))
      (:return))
     (:line 800 (:let (:var d) (:uminus (:icon 99)))
      (:let (:var h) (:icon 13)))
     (:line 805 (:for i (:icon 0) (:icon 13) nil)
      (:let (:apply g (:var i)) (:apply b (:var i)))
      (:next i))
     (:line 810 (:for j (:icon 7) (:icon 12) nil)
      (:if (:binary :eq (:apply b (:var j)) (:icon 0))) (:goto 885))
     (:line 815 (:let (:var g) (:icon 0)) (:let (:var m) (:var j))
      (:gosub 600))
     (:line 820 (:for i (:icon 0) (:icon 5) nil)
      (:if (:binary :eq (:apply b (:var i)) (:icon 0))) (:goto 845))
     (:line 825
      (:let (:var l)
       (:binary :plus (:apply b (:var i)) (:var i)))
      (:let (:var r) (:icon 0)))
     (:line 830 (:if (:binary :gt (:var l) (:icon 13)))
      (:let (:var l) (:binary :minus (:var l) (:icon 14)))
      (:let (:var r) (:icon 1)) (:goto 830))
     (:line 835 (:if (:binary :eq (:apply b (:var l)) (:icon 0)))
      (:if (:binary :ne (:var l) (:icon 6)))
      (:if (:binary :ne (:var l) (:icon 13)))
      (:let (:var r)
       (:binary :plus (:apply b (:binary :minus (:icon 12) (:var l)))
        (:var r))))
     (:line 840 (:if (:binary :gt (:var r) (:var q)))
      (:let (:var q) (:var r)))
     (:line 845 (:next i))
     (:line 850
      (:let (:var q)
       (:binary :minus
        (:binary :minus (:apply b (:icon 13)) (:apply b (:icon 6)))
        (:var q)))
      (:if (:binary :gt (:var c) (:icon 8))) (:goto 875))
     (:line 855 (:let (:var k) (:var j))
      (:if (:binary :gt (:var k) (:icon 6)))
      (:let (:var k) (:binary :minus (:var k) (:icon 7))))
     (:line 860
      (:for i (:icon 0) (:binary :minus (:var n) (:icon 1)) nil)
      (:if
       (:binary :eq
        (:binary :plus (:binary :mul (:apply f (:var n)) (:icon 6))
         (:var k))
        (:apply int
         (:binary :plus
          (:binary :div (:apply f (:var i))
           (:exp (:icon 6) (:binary :minus (:icon 7) (:var c))))
          (:fcon 0.1)))))
      (:let (:var q) (:binary :minus (:var q) (:icon 2))))
     (:line 870 (:next i))
     (:line 875 (:for i (:icon 0) (:icon 13) nil)
      (:let (:apply b (:var i)) (:apply g (:var i)))
      (:next i))
     (:line 880 (:if (:binary :ge (:var q) (:var d)))
      (:let (:var a) (:var j)) (:let (:var d) (:var q)))
     (:line 885 (:next j))
     (:line 890 (:let (:var m) (:var a))
      (:print (:apply chr$ (:binary :plus (:icon 42) (:var m))) :semi)
      (:goto 200))
     (:line 900
      (:for i (:icon 0) (:binary :minus (:var n) (:icon 1)) nil)
      (:print (:apply b (:var i))) (:next i))
     (:line 999 (:end)))))



(defvar *bagels*
  '(((:line 5 (:print (:apply tab (:icon 33)) :semi (:scon "bagels")))
     (:line 10
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey"))
      (:print) (:print))
     (:line 15 (:rem " *** bagles number guessing game
"))
     (:line 20 (:rem " *** original source unknown but suspected to be
"))
     (:line 25 (:rem " *** lawrence hall of science, u.c. berkely
"))
     (:line 30
      (:dim
       ((:dimd a1 (:icon 6)) (:dimd a (:icon 3))
        (:dimd b (:icon 3)))))
     (:line 40 (:let (:var y) (:icon 0)) (:let (:var t) (:icon 255)))
     (:line 50 (:print) (:print) (:print))
     (:line 70 (:input "would you like the rules (yes or no)" ((:var a$))))
     (:line 90
      (:if
       (:binary :eq (:apply left$ (:var a$) (:icon 1)) (:scon "n")))
      (:goto 150))
     (:line 100 (:print)
      (:print (:scon "i am thinking of a three-digit number.  try to guess")))
     (:line 110
      (:print (:scon "my number and i will give you clues as follows:")))
     (:line 120
      (:print
       (:scon "   pico   - one digit correct but in the wrong position")))
     (:line 130
      (:print
       (:scon "   fermi  - one digit correct and in the right position")))
     (:line 140 (:print (:scon "   bagels - no digits correct")))
     (:line 150 (:for i (:icon 1) (:icon 3) nil))
     (:line 160
      (:let (:apply a (:var i))
       (:apply int (:binary :mul (:icon 10) (:apply rnd (:icon 1))))))
     (:line 165
      (:if (:binary :eq (:binary :minus (:var i) (:icon 1)) (:icon 0)))
      (:goto 200))
     (:line 170
      (:for j (:icon 1) (:binary :minus (:var i) (:icon 1)) nil))
     (:line 180
      (:if
       (:binary :eq (:apply a (:var i)) (:apply a (:var j))))
      (:goto 160))
     (:line 190 (:next j)) (:line 200 (:next i))
     (:line 210 (:print) (:print (:scon "o.k.  i have a number in mind.")))
     (:line 220 (:for i (:icon 1) (:icon 20) nil))
     (:line 230 (:print (:scon "guess #") :semi (:var i) :comma))
     (:line 240 (:input nil ((:var a$))))
     (:line 245 (:if (:binary :ne (:apply len (:var a$)) (:icon 3)))
      (:goto 630))
     (:line 250 (:for z (:icon 1) (:icon 3) nil)
      (:let (:apply a1 (:var z))
       (:apply asc (:apply mid$ (:var a$) (:var z) (:icon 1))))
      (:next z))
     (:line 260 (:for j (:icon 1) (:icon 3) nil))
     (:line 270 (:if (:binary :lt (:apply a1 (:var j)) (:icon 48)))
      (:goto 300))
     (:line 280 (:if (:binary :gt (:apply a1 (:var j)) (:icon 57)))
      (:goto 300))
     (:line 285
      (:let (:apply b (:var j))
       (:binary :minus (:apply a1 (:var j)) (:icon 48))))
     (:line 290 (:next j)) (:line 295 (:goto 320))
     (:line 300 (:print (:scon "what?"))) (:line 310 (:goto 230))
     (:line 320
      (:if (:binary :eq (:apply b (:icon 1)) (:apply b (:icon 2))))
      (:goto 650))
     (:line 330
      (:if (:binary :eq (:apply b (:icon 2)) (:apply b (:icon 3))))
      (:goto 650))
     (:line 340
      (:if (:binary :eq (:apply b (:icon 3)) (:apply b (:icon 1))))
      (:goto 650))
     (:line 350 (:let (:var c) (:icon 0)) (:let (:var d) (:icon 0)))
     (:line 360 (:for j (:icon 1) (:icon 2) nil))
     (:line 370
      (:if
       (:binary :ne (:apply a (:var j))
        (:apply b (:binary :plus (:var j) (:icon 1)))))
      (:goto 390))
     (:line 380 (:let (:var c) (:binary :plus (:var c) (:icon 1))))
     (:line 390
      (:if
       (:binary :ne (:apply a (:binary :plus (:var j) (:icon 1)))
        (:apply b (:var j))))
      (:goto 410))
     (:line 400 (:let (:var c) (:binary :plus (:var c) (:icon 1))))
     (:line 410 (:next j))
     (:line 420
      (:if (:binary :ne (:apply a (:icon 1)) (:apply b (:icon 3))))
      (:goto 440))
     (:line 430 (:let (:var c) (:binary :plus (:var c) (:icon 1))))
     (:line 440
      (:if (:binary :ne (:apply a (:icon 3)) (:apply b (:icon 1))))
      (:goto 460))
     (:line 450 (:let (:var c) (:binary :plus (:var c) (:icon 1))))
     (:line 460 (:for j (:icon 1) (:icon 3) nil))
     (:line 470
      (:if
       (:binary :ne (:apply a (:var j)) (:apply b (:var j))))
      (:goto 490))
     (:line 480 (:let (:var d) (:binary :plus (:var d) (:icon 1))))
     (:line 490 (:next j))
     (:line 500 (:if (:binary :eq (:var d) (:icon 3))) (:goto 680))
     (:line 505 (:if (:binary :eq (:var c) (:icon 0))) (:goto 545))
     (:line 520 (:for j (:icon 1) (:var c) nil))
     (:line 530 (:print (:scon "pico ") :semi)) (:line 540 (:next j))
     (:line 545 (:if (:binary :eq (:var d) (:icon 0))) (:goto 580))
     (:line 550 (:for j (:icon 1) (:var d) nil))
     (:line 560 (:print (:scon "fermi ") :semi)) (:line 570 (:next j))
     (:line 580
      (:if (:binary :ne (:binary :plus (:var c) (:var d)) (:icon 0)))
      (:goto 600))
     (:line 590 (:print (:scon "bagels") :semi)) (:line 600 (:print))
     (:line 605 (:next i)) (:line 610 (:print (:scon "oh well.")))
     (:line 615
      (:print (:scon "that's twnety guesses.  my number was") :semi
       (:binary :plus
        (:binary :plus (:binary :mul (:icon 100) (:apply a (:icon 1)))
         (:binary :mul (:icon 10) (:apply a (:icon 2))))
        (:apply a (:icon 3)))))
     (:line 620 (:goto 700))
     (:line 630 (:print (:scon "try guessing a three-digit number."))
      (:goto 230))
     (:line 650
      (:print
       (:scon "oh, i forgot to tell you that the number i have in mind")))
     (:line 660 (:print (:scon "has no two digits the same.")) (:goto 230))
     (:line 680 (:print (:scon "you got it!!!")) (:print))
     (:line 690 (:let (:var y) (:binary :plus (:var y) (:icon 1))))
     (:line 700 (:input "play again (yes or no)" ((:var a$))))
     (:line 720
      (:if
       (:binary :eq (:apply left$ (:var a$) (:icon 1)) (:scon "yes")))
      (:goto 150))
     (:line 730 (:if (:binary :eq (:var y) (:icon 0))) (:goto 750))
     (:line 740 (:print)
      (:print (:scon "a") :semi (:var y) :semi
       (:scon "point bagels buff!!")))
     (:line 750 (:print (:scon "hope you had fun.  bye.")))
     (:line 999 (:end)))))



(defvar *banner*
  '(((:line 10 (:input "horizontal" ((:var x))))
     (:line 20 (:input "vertical" ((:var y))))
     (:line 21 (:input "centered" ((:var l$))))
     (:line 22 (:let (:var g1) (:icon 0))
      (:if (:binary :gt (:var l$) (:scon "p")))
      (:let (:var g1) (:icon 1)))
     (:line 23
      (:input "character (type 'all' if you want character being printed)"
       ((:var m$))))
     (:line 29 (:print (:scon "statement") :semi))
     (:line 30 (:input nil ((:var a$))))
     (:line 35 (:input "set page" ((:var o$))))
     (:line 40
      (:let (:var a)
       (:apply asc (:apply left$ (:var a$) (:icon 1)))))
     (:line 50 (:rem "
")) (:line 60 (:rem "
"))
     (:line 70 (:for t (:icon 1) (:apply len (:var a$)) nil))
     (:line 80
      (:let (:var p$)
       (:apply mid$ (:var a$) (:var t) (:icon 1))))
     (:line 90 (:for o (:icon 1) (:icon 50) nil))
     (:line 95
      (:read (:var s$) (:apply s (:icon 1)) (:apply s (:icon 2))
       (:apply s (:icon 3)) (:apply s (:icon 4))
       (:apply s (:icon 5)) (:apply s (:icon 6))
       (:apply s (:icon 7))))
     (:line 96 (:if (:binary :eq (:var p$) (:scon " "))) (:goto 812))
     (:line 100 (:if (:binary :eq (:var p$) (:var s$))) (:goto 200))
     (:line 120 (:next o)) (:line 200 :restore)
     (:line 201 (:let (:var x$) (:var m$)))
     (:line 202 (:if (:binary :eq (:var m$) (:scon "all")))
      (:let (:var x$) (:var s$)))
     (:line 205 (:for u (:icon 1) (:icon 7) nil))
     (:line 210 (:for k (:icon 8) (:icon 0) (:uminus (:icon 1))))
     (:line 230
      (:if
       (:binary :lt (:exp (:icon 2) (:var k)) (:apply s (:var u))))
      (:goto 270))
     (:line 240
      (:let (:apply j (:binary :minus (:icon 9) (:var k))) (:icon 0)))
     (:line 250 (:goto 280))
     (:line 270
      (:let (:apply j (:binary :minus (:icon 9) (:var k))) (:icon 1))
      (:let (:apply s (:var u))
       (:binary :minus (:apply s (:var u))
        (:exp (:icon 2) (:var k)))))
     (:line 272 (:if (:binary :eq (:apply s (:var u)) (:icon 1)))
      (:goto 815))
     (:line 280 (:next k))
     (:line 445 (:for t1 (:icon 1) (:var x) nil))
     (:line 447
      (:print
       (:apply tab
        (:binary :plus
         (:binary :div
          (:binary :mul
           (:binary :minus (:icon 63) (:binary :mul (:fcon 4.5) (:var y)))
           (:var g1))
          (:apply len (:var x$)))
         (:icon 1)))
       :semi))
     (:line 450 (:for b (:icon 1) (:apply f (:var u)) nil))
     (:line 460 (:if (:binary :eq (:apply j (:var b)) (:icon 0)))
      (:goto 500))
     (:line 465 (:for i (:icon 1) (:var y) nil)
      (:print (:var x$) :semi) (:next i))
     (:line 470 (:goto 600))
     (:line 500 (:for i (:icon 1) (:var y) nil))
     (:line 510 (:for i1 (:icon 1) (:apply len (:var x$)) nil))
     (:line 520 (:print (:scon " ") :semi) (:next i1))
     (:line 530 (:next i)) (:line 600 (:next b)) (:line 620 (:print))
     (:line 630 (:next t1)) (:line 700 (:next u))
     (:line 750
      (:for h (:icon 1) (:binary :mul (:icon 2) (:var x)) nil) (:print)
      (:next h))
     (:line 800 (:next t))
     (:line 806 (:for h (:icon 1) (:icon 75) nil) (:print) (:next h))
     (:line 810 (:end))
     (:line 812
      (:for h (:icon 1) (:binary :mul (:icon 7) (:var x)) nil) (:print)
      (:next h))
     (:line 813 (:goto 800))
     (:line 815
      (:let (:apply f (:var u))
       (:binary :minus (:icon 9) (:var k)))
      (:goto 445))
     (:line 899
      (:data (:scon " ") (:icon 0) (:icon 0) (:icon 0) (:icon 0) (:icon 0)
       (:icon 0) (:icon 0)))
     (:line 900
      (:data (:scon "a") (:icon 505) (:icon 37) (:icon 35) (:icon 34)
       (:icon 35) (:icon 37) (:icon 505)))
     (:line 901
      (:data (:scon "g") (:icon 125) (:icon 131) (:icon 258) (:icon 258)
       (:icon 290) (:icon 163) (:icon 101)))
     (:line 902
      (:data (:scon "e") (:icon 512) (:icon 274) (:icon 274) (:icon 274)
       (:icon 274) (:icon 258) (:icon 258)))
     (:line 903
      (:data (:scon "t") (:icon 2) (:icon 2) (:icon 2) (:icon 512) (:icon 2)
       (:icon 2) (:icon 2)))
     (:line 904
      (:data (:scon "w") (:icon 256) (:icon 257) (:icon 129) (:icon 65)
       (:icon 129) (:icon 257) (:icon 256)))
     (:line 905
      (:data (:scon "l") (:icon 512) (:icon 257) (:icon 257) (:icon 257)
       (:icon 257) (:icon 257) (:icon 257)))
     (:line 906
      (:data (:scon "s") (:icon 69) (:icon 139) (:icon 274) (:icon 274)
       (:icon 274) (:icon 163) (:icon 69)))
     (:line 907
      (:data (:scon "o") (:icon 125) (:icon 131) (:icon 258) (:icon 258)
       (:icon 258) (:icon 131) (:icon 125)))
     (:line 908
      (:data (:scon "n") (:icon 512) (:icon 7) (:icon 9) (:icon 17) (:icon 33)
       (:icon 193) (:icon 512)))
     (:line 909
      (:data (:scon "f") (:icon 512) (:icon 18) (:icon 18) (:icon 18)
       (:icon 18) (:icon 2) (:icon 2)))
     (:line 910
      (:data (:scon "k") (:icon 512) (:icon 17) (:icon 17) (:icon 41)
       (:icon 69) (:icon 131) (:icon 258)))
     (:line 911
      (:data (:scon "b") (:icon 512) (:icon 274) (:icon 274) (:icon 274)
       (:icon 274) (:icon 274) (:icon 239)))
     (:line 912
      (:data (:scon "d") (:icon 512) (:icon 258) (:icon 258) (:icon 258)
       (:icon 258) (:icon 131) (:icon 125)))
     (:line 913
      (:data (:scon "h") (:icon 512) (:icon 17) (:icon 17) (:icon 17)
       (:icon 17) (:icon 17) (:icon 512)))
     (:line 914
      (:data (:scon "m") (:icon 512) (:icon 7) (:icon 13) (:icon 25) (:icon 13)
       (:icon 7) (:icon 512)))
     (:line 915
      (:data (:scon "?") (:icon 5) (:icon 3) (:icon 2) (:icon 354) (:icon 18)
       (:icon 11) (:icon 5)))
     (:line 916
      (:data (:scon "u") (:icon 128) (:icon 129) (:icon 257) (:icon 257)
       (:icon 257) (:icon 129) (:icon 128)))
     (:line 917
      (:data (:scon "r") (:icon 512) (:icon 18) (:icon 18) (:icon 50)
       (:icon 82) (:icon 146) (:icon 271)))
     (:line 918
      (:data (:scon "p") (:icon 512) (:icon 18) (:icon 18) (:icon 18)
       (:icon 18) (:icon 18) (:icon 15)))
     (:line 919
      (:data (:scon "q") (:icon 125) (:icon 131) (:icon 258) (:icon 258)
       (:icon 322) (:icon 131) (:icon 381)))
     (:line 920
      (:data (:scon "y") (:icon 8) (:icon 9) (:icon 17) (:icon 481) (:icon 17)
       (:icon 9) (:icon 8)))
     (:line 921
      (:data (:scon "v") (:icon 64) (:icon 65) (:icon 129) (:icon 257)
       (:icon 129) (:icon 65) (:icon 64)))
     (:line 922
      (:data (:scon "x") (:icon 388) (:icon 69) (:icon 41) (:icon 17)
       (:icon 41) (:icon 69) (:icon 388)))
     (:line 923
      (:data (:scon "z") (:icon 386) (:icon 322) (:icon 290) (:icon 274)
       (:icon 266) (:icon 262) (:icon 260)))
     (:line 924
      (:data (:scon "i") (:icon 258) (:icon 258) (:icon 258) (:icon 512)
       (:icon 258) (:icon 258) (:icon 258)))
     (:line 925
      (:data (:scon "c") (:icon 125) (:icon 131) (:icon 258) (:icon 258)
       (:icon 258) (:icon 131) (:icon 69)))
     (:line 926
      (:data (:scon "j") (:icon 65) (:icon 129) (:icon 257) (:icon 257)
       (:icon 257) (:icon 129) (:icon 128)))
     (:line 927
      (:data (:scon "1") (:icon 0) (:icon 0) (:icon 261) (:icon 259)
       (:icon 512) (:icon 257) (:icon 257)))
     (:line 928
      (:data (:scon "2") (:icon 261) (:icon 387) (:icon 322) (:icon 290)
       (:icon 274) (:icon 267) (:icon 261)))
     (:line 929
      (:data (:scon "*") (:icon 69) (:icon 41) (:icon 17) (:icon 512)
       (:icon 17) (:icon 41) (:icon 69)))
     (:line 930
      (:data (:scon "3") (:icon 66) (:icon 130) (:icon 258) (:icon 274)
       (:icon 266) (:icon 150) (:icon 100)))
     (:line 931
      (:data (:scon "4") (:icon 33) (:icon 49) (:icon 41) (:icon 37) (:icon 35)
       (:icon 512) (:icon 33)))
     (:line 932
      (:data (:scon "5") (:icon 160) (:icon 274) (:icon 274) (:icon 274)
       (:icon 274) (:icon 274) (:icon 226)))
     (:line 933
      (:data (:scon "6") (:icon 194) (:icon 291) (:icon 293) (:icon 297)
       (:icon 305) (:icon 289) (:icon 193)))
     (:line 934
      (:data (:scon "7") (:icon 258) (:icon 130) (:icon 66) (:icon 34)
       (:icon 18) (:icon 10) (:icon 8)))
     (:line 935
      (:data (:scon "8") (:icon 69) (:icon 171) (:icon 274) (:icon 274)
       (:icon 274) (:icon 171) (:icon 69)))
     (:line 936
      (:data (:scon "9") (:icon 263) (:icon 138) (:icon 74) (:icon 42)
       (:icon 26) (:icon 10) (:icon 7)))
     (:line 937
      (:data (:scon "=") (:icon 41) (:icon 41) (:icon 41) (:icon 41) (:icon 41)
       (:icon 41) (:icon 41)))
     (:line 938
      (:data (:scon "!") (:icon 1) (:icon 1) (:icon 1) (:icon 384) (:icon 1)
       (:icon 1) (:icon 1)))
     (:line 939
      (:data (:scon "0") (:icon 57) (:icon 69) (:icon 131) (:icon 258)
       (:icon 131) (:icon 69) (:icon 57)))
     (:line 940
      (:data (:scon ".") (:icon 1) (:icon 1) (:icon 129) (:icon 449)
       (:icon 129) (:icon 1) (:icon 1)))
     (:line 1000 (:stop)) (:line 1002 (:end)))))



(defvar *basketball*
  '(((:line 5 (:print (:apply tab (:icon 31)) :semi (:scon "basketball")))
     (:line 7
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 8 (:print) (:print) (:print))
     (:line 10
      (:print
       (:scon "this is dartmouth college basketball.  you will be dartmouth")))
     (:line 20
      (:print
       (:scon " captain and playmaker.  call shots as follows:  1. long")))
     (:line 30
      (:print
       (:scon " (30 ft.) jump shot; 2. short (15 ft.) jump shot; 3. lay")))
     (:line 40 (:print (:scon " up; 4. set shot.")))
     (:line 60
      (:print
       (:scon "both teams will use the same defense.  call defense as")))
     (:line 70
      (:print
       (:scon "follows:  6. press; 6.5 man-to man; 7. zone; 7.5 none.")))
     (:line 72
      (:print (:scon "to change defense, just type 0 as your next shot.")))
     (:line 76 (:input "your starting defense will be" ((:var d)))
      (:if (:binary :lt (:var d) (:icon 6))) (:goto 2010))
     (:line 79 (:print))
     (:line 80 (:input "choose your opponent" ((:var o$))))
     (:line 370 (:print (:scon "center jump")))
     (:line 390
      (:if
       (:binary :gt (:apply rnd (:icon 1))
        (:binary :div (:icon 3) (:icon 5))))
      (:goto 420))
     (:line 400 (:print (:var o$) :semi (:scon " controls the tap.")))
     (:line 410 (:goto 3000))
     (:line 420 (:print (:scon "dartmouth controls the tap.")))
     (:line 425 (:print)) (:line 430 (:input "your shot" ((:var z))))
     (:line 440 (:let (:var p) (:icon 0)))
     (:line 445 (:if (:binary :ne (:var z) (:apply int (:var z))))
      (:goto 455))
     (:line 446
      (:if
       (:lazy-binary :or (:binary :lt (:var z) (:icon 0))
        (:binary :gt (:var z) (:icon 4))))
      (:goto 455))
     (:line 447 (:goto 460))
     (:line 455 (:print (:scon "incorrect answer.  retype it. ") :semi)
      (:goto 430))
     (:line 460 (:if (:binary :lt (:apply rnd (:icon 1)) (:fcon 0.5)))
      (:goto 1000))
     (:line 480 (:if (:binary :lt (:var t) (:icon 100))) (:goto 1000))
     (:line 490 (:print))
     (:line 491
      (:if (:binary :ne (:apply s (:icon 1)) (:apply s (:icon 0))))
      (:goto 510))
     (:line 492 (:print) (:print (:scon "   ***** end of second half *****"))
      (:print))
     (:line 493 (:print (:scon "score at end of regulation time:")))
     (:line 494
      (:print (:scon "        dartmouth:") :semi (:apply s (:icon 1)) :semi
       (:scon "  ") :semi (:var o$) :semi (:scon ":") :semi
       (:apply s (:icon 0))))
     (:line 495 (:print))
     (:line 496 (:print (:scon "begin two minute overtime period")))
     (:line 499 (:let (:var t) (:icon 93))) (:line 500 (:goto 370))
     (:line 510 (:print (:scon "   ***** end of game *****")))
     (:line 515
      (:print (:scon "final score: dartmouth:") :semi (:apply s (:icon 1))
       :semi (:scon "  ") :semi (:var o$) :semi (:scon ":") :semi
       (:apply s (:icon 0))))
     (:line 520 (:stop)) (:line 600 (:print))
     (:line 610 (:print (:scon "   *** two minutes left in the game ***")))
     (:line 620 (:print)) (:line 630 (:return))
     (:line 1000 (:on-goto (:var z) (1040 1040))) (:line 1030 (:goto 1300))
     (:line 1040 (:let (:var t) (:binary :plus (:var t) (:icon 1))))
     (:line 1041 (:if (:binary :eq (:var t) (:icon 50))) (:goto 8000))
     (:line 1042 (:if (:binary :eq (:var t) (:icon 92))) (:goto 1046))
     (:line 1043 (:goto 1050)) (:line 1046 (:gosub 600))
     (:line 1050 (:print (:scon "jump shot")))
     (:line 1060
      (:if
       (:binary :gt (:apply rnd (:icon 1))
        (:binary :div (:binary :mul (:fcon 0.34100002) (:var d))
         (:icon 8))))
      (:goto 1090))
     (:line 1070 (:print (:scon "shot is good."))) (:line 1075 (:gosub 7000))
     (:line 1085 (:goto 3000))
     (:line 1090
      (:if
       (:binary :gt (:apply rnd (:icon 1))
        (:binary :div (:binary :mul (:fcon 0.68200004) (:var d))
         (:icon 8))))
      (:goto 1200))
     (:line 1100 (:print (:scon "shot is off target.")))
     (:line 1105
      (:if
       (:binary :gt
        (:binary :mul (:binary :div (:var d) (:icon 6))
         (:apply rnd (:icon 1)))
        (:fcon 0.45)))
      (:goto 1130))
     (:line 1110 (:print (:scon "dartmouth controls the rebound.")))
     (:line 1120 (:goto 1145))
     (:line 1130 (:print (:scon "rebound to ") :semi (:var o$)))
     (:line 1140 (:goto 3000))
     (:line 1145 (:if (:binary :gt (:apply rnd (:icon 1)) (:fcon 0.4)))
      (:goto 1158))
     (:line 1150 (:goto 1300))
     (:line 1158 (:if (:binary :eq (:var d) (:icon 6))) (:goto 5100))
     (:line 1160 (:print (:scon "ball passed back to you. ") :semi))
     (:line 1170 (:goto 430))
     (:line 1180
      (:if (:binary :gt (:apply rnd (:icon 1)) (:fcon 0.90000004)))
      (:goto 1190))
     (:line 1185 (:print (:scon "player fouled, two shots.")))
     (:line 1187 (:gosub 4000)) (:line 1188 (:goto 3000))
     (:line 1190
      (:print (:scon "ball stolen. ") :semi (:var o$) :semi
       (:scon "'s ball.")))
     (:line 1195 (:goto 3000))
     (:line 1200
      (:if
       (:binary :gt (:apply rnd (:icon 1))
        (:binary :div (:binary :mul (:fcon 0.78200006) (:var d))
         (:icon 8))))
      (:goto 1250))
     (:line 1210
      (:print (:scon "shot is blocked.  ball controlled by ") :semi))
     (:line 1230 (:if (:binary :gt (:apply rnd (:icon 1)) (:fcon 0.5)))
      (:goto 1242))
     (:line 1235 (:print (:scon "dartmouth."))) (:line 1240 (:goto 430))
     (:line 1242 (:print (:var o$) :semi (:scon ".")))
     (:line 1245 (:goto 3000))
     (:line 1250
      (:if
       (:binary :gt (:apply rnd (:icon 1))
        (:binary :div (:binary :mul (:fcon 0.84300005) (:var d))
         (:icon 8))))
      (:goto 1270))
     (:line 1255 (:print (:scon "shooter is fouled.  two shots.")))
     (:line 1260 (:gosub 4000)) (:line 1265 (:goto 3000))
     (:line 1270 (:print (:scon "charging foul.  dartmouth loses ball.")))
     (:line 1280 (:goto 3000))
     (:line 1300 (:let (:var t) (:binary :plus (:var t) (:icon 1))))
     (:line 1301 (:if (:binary :eq (:var t) (:icon 50))) (:goto 8000))
     (:line 1302 (:if (:binary :eq (:var t) (:icon 92))) (:goto 1304))
     (:line 1303 (:goto 1305)) (:line 1304 (:gosub 600))
     (:line 1305 (:if (:binary :eq (:var z) (:icon 0))) (:goto 2010))
     (:line 1310 (:if (:binary :gt (:var z) (:icon 3))) (:goto 1700))
     (:line 1320 (:print (:scon "lay up.")))
     (:line 1330
      (:if
       (:binary :gt
        (:binary :mul (:binary :div (:icon 7) (:var d))
         (:apply rnd (:icon 1)))
        (:fcon 0.4)))
      (:goto 1360))
     (:line 1340 (:print (:scon "shot is good.  two points.")))
     (:line 1345 (:gosub 7000)) (:line 1355 (:goto 3000))
     (:line 1360
      (:if
       (:binary :gt
        (:binary :mul (:binary :div (:icon 7) (:var d))
         (:apply rnd (:icon 1)))
        (:fcon 0.7)))
      (:goto 1500))
     (:line 1370 (:print (:scon "shot is off the rim.")))
     (:line 1380
      (:if
       (:binary :gt (:apply rnd (:icon 1))
        (:binary :div (:icon 2) (:icon 3))))
      (:goto 1415))
     (:line 1390 (:print (:var o$) :semi (:scon " controls the rebound.")))
     (:line 1400 (:goto 3000))
     (:line 1415 (:print (:scon "dartmouth controls the rebound.")))
     (:line 1420 (:if (:binary :gt (:apply rnd (:icon 1)) (:fcon 0.4)))
      (:goto 1440))
     (:line 1430 (:goto 1300))
     (:line 1440 (:print (:scon "ball passed back to you.") :semi))
     (:line 1450 (:goto 430))
     (:line 1500
      (:if
       (:binary :gt
        (:binary :mul (:binary :div (:icon 7) (:var d))
         (:apply rnd (:icon 1)))
        (:fcon 0.87500006)))
      (:goto 1600))
     (:line 1510 (:print (:scon "shooter fouled.  two shots.")))
     (:line 1520 (:gosub 4000)) (:line 1530 (:goto 3000))
     (:line 1600
      (:if
       (:binary :gt
        (:binary :mul (:binary :div (:icon 7) (:var d))
         (:apply rnd (:icon 1)))
        (:fcon 0.9250001)))
      (:goto 1630))
     (:line 1610
      (:print (:scon "shot blocked. ") :semi (:var o$) :semi
       (:scon "'s ball.")))
     (:line 1620 (:goto 3000))
     (:line 1630 (:print (:scon "charging foul.  dartmouth loses the ball.")))
     (:line 1640 (:goto 3000)) (:line 1700 (:print (:scon "set shot.")))
     (:line 1710 (:goto 1330))
     (:line 2010 (:input "your new defensive allignment is" ((:var d))))
     (:line 2030 (:if (:binary :lt (:var d) (:icon 6))) (:goto 2010))
     (:line 2040 (:goto 425)) (:line 3000 (:let (:var p) (:icon 1)))
     (:line 3005 (:let (:var t) (:binary :plus (:var t) (:icon 1))))
     (:line 3008 (:if (:binary :eq (:var t) (:icon 50))) (:goto 8000))
     (:line 3012 (:goto 3018)) (:line 3015 (:gosub 600)) (:line 3018 (:print))
     (:line 3020
      (:let (:var z1)
       (:binary :plus
        (:binary :mul (:binary :div (:icon 10) (:icon 4))
         (:apply rnd (:icon 1)))
        (:icon 1))))
     (:line 3030 (:if (:binary :gt (:var z1) (:icon 2))) (:goto 3500))
     (:line 3040 (:print (:scon "jump shot.")))
     (:line 3050
      (:if
       (:binary :gt
        (:binary :mul (:binary :div (:icon 8) (:var d))
         (:apply rnd (:icon 1)))
        (:fcon 0.35)))
      (:goto 3100))
     (:line 3060 (:print (:scon "shot is good."))) (:line 3080 (:gosub 6000))
     (:line 3090 (:goto 425))
     (:line 3100
      (:if
       (:binary :gt
        (:binary :mul (:binary :div (:icon 8) (:var d))
         (:apply rnd (:icon 1)))
        (:fcon 0.75)))
      (:goto 3200))
     (:line 3105 (:print (:scon "shot is off rim.")))
     (:line 3110
      (:if
       (:binary :gt
        (:binary :mul (:binary :div (:var d) (:icon 6))
         (:apply rnd (:icon 1)))
        (:fcon 0.5)))
      (:goto 3150))
     (:line 3120 (:print (:scon "dartmouth controls the rebound.")))
     (:line 3130 (:goto 425))
     (:line 3150 (:print (:var o$) :semi (:scon " controls the rebound.")))
     (:line 3160 (:if (:binary :eq (:var d) (:icon 6))) (:goto 5000))
     (:line 3165 (:if (:binary :gt (:apply rnd (:icon 1)) (:fcon 0.5)))
      (:goto 3175))
     (:line 3168
      (:print (:scon "pass back to ") :semi (:var o$) :semi
       (:scon " guard.")))
     (:line 3170 (:goto 3000)) (:line 3175 (:goto 3500))
     (:line 3200
      (:if
       (:binary :gt
        (:binary :mul (:binary :div (:icon 8) (:var d))
         (:apply rnd (:icon 1)))
        (:fcon 0.90000004)))
      (:goto 3310))
     (:line 3210 (:print (:scon "player fouled.  two shots.")))
     (:line 3220 (:gosub 4000)) (:line 3230 (:goto 425))
     (:line 3310 (:print (:scon "offensive foul.  dartmouth's ball.")))
     (:line 3320 (:goto 425))
     (:line 3500 (:if (:binary :gt (:var z1) (:icon 3))) (:goto 3800))
     (:line 3510 (:print (:scon "lay up.")))
     (:line 3520
      (:if
       (:binary :gt
        (:binary :mul (:binary :div (:icon 7) (:var d))
         (:apply rnd (:icon 1)))
        (:fcon 0.41300002)))
      (:goto 3600))
     (:line 3530 (:print (:scon "shot is good."))) (:line 3540 (:gosub 6000))
     (:line 3550 (:goto 425)) (:line 3600 (:print (:scon "shot is missed.")))
     (:line 3610 (:goto 3110)) (:line 3800 (:print (:scon "set shot.")))
     (:line 3810 (:goto 3520)) (:line 4000 (:rem " foul shooting
"))
     (:line 4010
      (:if (:binary :gt (:apply rnd (:icon 1)) (:fcon 0.48999998)))
      (:goto 4050))
     (:line 4020 (:print (:scon "shooter makes both shots.")))
     (:line 4030
      (:let (:apply s (:binary :minus (:icon 1) (:var p)))
       (:binary :plus (:apply s (:binary :minus (:icon 1) (:var p)))
        (:icon 2))))
     (:line 4040 (:gosub 6010)) (:line 4041 (:return))
     (:line 4050 (:if (:binary :gt (:apply rnd (:icon 1)) (:fcon 0.75)))
      (:goto 4100))
     (:line 4060 (:print (:scon "shooter makes one shot and misses one.")))
     (:line 4070
      (:let (:apply s (:binary :minus (:icon 1) (:var p)))
       (:binary :plus (:apply s (:binary :minus (:icon 1) (:var p)))
        (:icon 1))))
     (:line 4080 (:goto 4040))
     (:line 4100 (:print (:scon "both shots missed.")))
     (:line 4110 (:goto 4040))
     (:line 5000 (:if (:binary :gt (:apply rnd (:icon 1)) (:fcon 0.75)))
      (:goto 5010))
     (:line 5005 (:goto 3165))
     (:line 5010 (:print (:scon "ball stolen.  easy lay up for dartmouth.")))
     (:line 5015 (:gosub 7000)) (:line 5030 (:goto 3000))
     (:line 5100 (:if (:binary :gt (:apply rnd (:icon 1)) (:fcon 0.6)))
      (:goto 5120))
     (:line 5110 (:goto 1160))
     (:line 5120
      (:print (:scon "pass stolen by ") :semi (:var o$) :semi
       (:scon " easy layup.")))
     (:line 5130 (:gosub 6000)) (:line 5140 (:goto 425))
     (:line 6000
      (:let (:apply s (:icon 0))
       (:binary :plus (:apply s (:icon 0)) (:icon 2))))
     (:line 6010
      (:print (:scon "score: ") :semi (:apply s (:icon 1)) :semi
       (:scon "to") :semi (:apply s (:icon 0))))
     (:line 6020 (:return))
     (:line 7000
      (:let (:apply s (:icon 1))
       (:binary :plus (:apply s (:icon 1)) (:icon 2))))
     (:line 7010 (:gosub 6010)) (:line 7020 (:return))
     (:line 8000 (:print) (:print (:scon "   ***** end of first half *****"))
      (:print))
     (:line 8010
      (:print (:scon "score: dartmouth:") :semi (:apply s (:icon 1)) :semi
       (:scon "  ") :semi (:var o$) :semi (:scon ":") :semi
       (:apply s (:icon 0))))
     (:line 8015 (:print)) (:line 8016 (:print)) (:line 8020 (:goto 370))
     (:line 9999 (:end)))))



(defvar *batnum*
  '(((:line 10 (:print (:apply tab (:icon 33)) :semi (:scon "batnum")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print))
     (:line 110
      (:print (:scon "this program is a 'battle of numbers' game, where the")))
     (:line 120 (:print (:scon "computer is your opponent.")))
     (:line 130 (:print))
     (:line 140
      (:print (:scon "the game starts with an assumed pile of objects. you")))
     (:line 150
      (:print
       (:scon "and your opponent alternately remove objects from the pile.")))
     (:line 160
      (:print
       (:scon "winning is defined in advance as taking the last object or")))
     (:line 170
      (:print
       (:scon "not. you can also specify some other beginning conditions.")))
     (:line 180
      (:print (:scon "don't use zero, however, in playing the game.")))
     (:line 190
      (:print
       (:scon "enter a negative number for new pile size to stop playing.")))
     (:line 200 (:print)) (:line 210 (:goto 330))
     (:line 220 (:for i (:icon 1) (:icon 10) nil)) (:line 230 (:print))
     (:line 240 (:next i))
     (:line 330 (:input "enter pile size" ((:var n))))
     (:line 350 (:if (:binary :ge (:var n) (:icon 1))) (:goto 370))
     (:line 360 (:goto 330))
     (:line 370 (:if (:binary :ne (:var n) (:apply int (:var n))))
      (:goto 220))
     (:line 380 (:if (:binary :lt (:var n) (:icon 1))) (:goto 220))
     (:line 390
      (:input "enter win option - 1 to take last, 2 to avoid last: "
       ((:var m))))
     (:line 410 (:if (:binary :eq (:var m) (:icon 1))) (:goto 430))
     (:line 420 (:if (:binary :ne (:var m) (:icon 2))) (:goto 390))
     (:line 430 (:input "enter min and max " ((:var a) (:var b))))
     (:line 450 (:if (:binary :gt (:var a) (:var b))) (:goto 430))
     (:line 460 (:if (:binary :lt (:var a) (:icon 1))) (:goto 430))
     (:line 470 (:if (:binary :ne (:var a) (:apply int (:var a))))
      (:goto 430))
     (:line 480 (:if (:binary :ne (:var b) (:apply int (:var b))))
      (:goto 430))
     (:line 490
      (:input "enter start option - 1 computer first, 2 you first "
       ((:var s))))
     (:line 500 (:print) (:print))
     (:line 510 (:if (:binary :eq (:var s) (:icon 1))) (:goto 530))
     (:line 520 (:if (:binary :ne (:var s) (:icon 2))) (:goto 490))
     (:line 530 (:let (:var c) (:binary :plus (:var a) (:var b))))
     (:line 540 (:if (:binary :eq (:var s) (:icon 2))) (:goto 570))
     (:line 550 (:gosub 600))
     (:line 560 (:if (:binary :eq (:var w) (:icon 1))) (:goto 220))
     (:line 570 (:gosub 810))
     (:line 580 (:if (:binary :eq (:var w) (:icon 1))) (:goto 220))
     (:line 590 (:goto 550)) (:line 600 (:let (:var q) (:var n)))
     (:line 610 (:if (:binary :eq (:var m) (:icon 1))) (:goto 630))
     (:line 620 (:let (:var q) (:binary :minus (:var q) (:icon 1))))
     (:line 630 (:if (:binary :eq (:var m) (:icon 1))) (:goto 680))
     (:line 640 (:if (:binary :gt (:var n) (:var a))) (:goto 720))
     (:line 650 (:let (:var w) (:icon 1)))
     (:line 660
      (:print (:scon "computer takes") :semi (:var n) :semi
       (:scon "and loses.")))
     (:line 670 (:return))
     (:line 680 (:if (:binary :gt (:var n) (:var b))) (:goto 720))
     (:line 690 (:let (:var w) (:icon 1)))
     (:line 700
      (:print (:scon "computer takes") :semi (:var n) :semi
       (:scon "and wins.")))
     (:line 710 (:return))
     (:line 720
      (:let (:var p)
       (:binary :minus (:var q)
        (:binary :mul (:var c)
         (:apply int (:binary :div (:var q) (:var c)))))))
     (:line 730 (:if (:binary :ge (:var p) (:var a))) (:goto 750))
     (:line 740 (:let (:var p) (:var a)))
     (:line 750 (:if (:binary :le (:var p) (:var b))) (:goto 770))
     (:line 760 (:let (:var p) (:var b)))
     (:line 770 (:let (:var n) (:binary :minus (:var n) (:var p))))
     (:line 780
      (:print (:scon "computer takes") :semi (:var p) :semi
       (:scon "and leaves") :semi (:var n)))
     (:line 790 (:let (:var w) (:icon 0))) (:line 800 (:return))
     (:line 810 (:print) (:print (:scon "your move ") :semi))
     (:line 820 (:input nil ((:var p))))
     (:line 830 (:if (:binary :ne (:var p) (:icon 0))) (:goto 870))
     (:line 840
      (:print (:scon "i told you not to use zero! computer wins by forfeit.")))
     (:line 850 (:let (:var w) (:icon 1))) (:line 860 (:return))
     (:line 870 (:if (:binary :ne (:var p) (:apply int (:var p))))
      (:goto 920))
     (:line 880 (:if (:binary :ge (:var p) (:var a))) (:goto 910))
     (:line 890 (:if (:binary :eq (:var p) (:var n))) (:goto 960))
     (:line 900 (:goto 920))
     (:line 910 (:if (:binary :le (:var p) (:var b))) (:goto 940))
     (:line 920 (:print (:scon "illegal move, reenter it ") :semi))
     (:line 930 (:goto 820))
     (:line 940 (:let (:var n) (:binary :minus (:var n) (:var p))))
     (:line 950 (:if (:binary :ne (:var n) (:icon 0))) (:goto 1030))
     (:line 960 (:if (:binary :eq (:var m) (:icon 1))) (:goto 1000))
     (:line 970 (:print (:scon "tough luck, you lose.")))
     (:line 980 (:let (:var w) (:icon 1))) (:line 990 (:return))
     (:line 1000 (:print (:scon "congratulations, you win.")))
     (:line 1010 (:let (:var w) (:icon 1))) (:line 1020 (:return))
     (:line 1030 (:if (:binary :ge (:var n) (:icon 0))) (:goto 1060))
     (:line 1040 (:let (:var n) (:binary :plus (:var n) (:var p))))
     (:line 1050 (:goto 920)) (:line 1060 (:let (:var w) (:icon 0)))
     (:line 1070 (:return)) (:line 1080 (:end)))))



(defvar *battle*
  '(((:line 5 (:print (:apply tab (:icon 33)) :semi (:scon "battle")))
     (:line 7
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 10 (:rem " -- battle written by ray westergard  10/70
"))
     (:line 20 (:rem " copyright 1971 by the regents of the univ. of calif.
"))
     (:line 30 (:rem " produced at the lawrence hall of science, berkeley
"))
     (:line 40
      (:dim
       ((:dimd2 f (:icon 6) (:icon 6)) (:dimd2 h (:icon 6) (:icon 6))
        (:dimd a (:icon 4)) (:dimd b (:icon 4)) (:dimd c (:icon 6))
        (:dimd l (:icon 3)))))
     (:line 50 (:for x (:icon 1) (:icon 6) nil))
     (:line 51 (:for y (:icon 1) (:icon 6) nil))
     (:line 52 (:let (:apply f (:var x) (:var y)) (:icon 0)))
     (:line 53 (:next y)) (:line 54 (:next x))
     (:line 60 (:for i (:icon 1) (:icon 3) nil))
     (:line 70 (:let (:var n) (:binary :minus (:icon 4) (:var i))))
     (:line 80 (:for j (:icon 1) (:icon 2) nil))
     (:line 90
      (:let (:var a)
       (:apply int
        (:binary :plus (:binary :mul (:icon 6) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 100
      (:let (:var b)
       (:apply int
        (:binary :plus (:binary :mul (:icon 6) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 110
      (:let (:var d)
       (:apply int
        (:binary :plus (:binary :mul (:icon 4) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 120
      (:if (:binary :gt (:apply f (:var a) (:var b)) (:icon 0)))
      (:goto 90))
     (:line 130 (:let (:var m) (:icon 0)))
     (:line 140 (:on-goto (:var d) (150 340 550 740)))
     (:line 150 (:let (:apply b (:icon 1)) (:var b)))
     (:line 160 (:let (:apply b (:icon 2)) (:icon 7))
      (:let (:apply b (:icon 3)) (:icon 7)))
     (:line 170 (:for k (:icon 1) (:var n) nil))
     (:line 180 (:if (:binary :gt (:var m) (:icon 1))) (:goto 240))
     (:line 190 (:if (:binary :eq (:apply b (:var k)) (:icon 6)))
      (:goto 230))
     (:line 200
      (:if
       (:binary :gt
        (:apply f (:var a)
         (:binary :plus (:apply b (:var k)) (:icon 1)))
        (:icon 0)))
      (:goto 230))
     (:line 210
      (:let (:apply b (:binary :plus (:var k) (:icon 1)))
       (:binary :plus (:apply b (:var k)) (:icon 1))))
     (:line 220 (:goto 280)) (:line 230 (:let (:var m) (:icon 2)))
     (:line 240
      (:if
       (:lazy-binary :and
        (:binary :lt (:apply b (:icon 1)) (:apply b (:icon 2)))
        (:binary :lt (:apply b (:icon 1)) (:apply b (:icon 3)))))
      (:let (:var z) (:apply b (:icon 1))))
     (:line 242
      (:if
       (:lazy-binary :and
        (:binary :lt (:apply b (:icon 2)) (:apply b (:icon 1)))
        (:binary :lt (:apply b (:icon 2)) (:apply b (:icon 3)))))
      (:let (:var z) (:apply b (:icon 2))))
     (:line 244
      (:if
       (:lazy-binary :and
        (:binary :lt (:apply b (:icon 3)) (:apply b (:icon 1)))
        (:binary :lt (:apply b (:icon 3)) (:apply b (:icon 2)))))
      (:let (:var z) (:apply b (:icon 3))))
     (:line 250 (:if (:binary :eq (:var z) (:icon 1))) (:goto 90))
     (:line 260
      (:if
       (:binary :gt
        (:apply f (:var a) (:binary :minus (:var z) (:icon 1)))
        (:icon 0)))
      (:goto 90))
     (:line 270
      (:let (:apply b (:binary :plus (:var k) (:icon 1)))
       (:binary :minus (:var z) (:icon 1))))
     (:line 280 (:next k))
     (:line 290
      (:let (:apply f (:var a) (:var b))
       (:binary :minus
        (:binary :minus (:icon 9) (:binary :mul (:icon 2) (:var i)))
        (:var j))))
     (:line 300 (:for k (:icon 1) (:var n) nil))
     (:line 310
      (:let
       (:apply f (:var a)
        (:apply b (:binary :plus (:var k) (:icon 1))))
       (:apply f (:var a) (:var b))))
     (:line 320 (:next k)) (:line 330 (:goto 990))
     (:line 340 (:let (:apply a (:icon 1)) (:var a)))
     (:line 350 (:let (:apply b (:icon 1)) (:var b)))
     (:line 360 (:let (:apply a (:icon 2)) (:icon 0))
      (:let (:apply a (:icon 3)) (:icon 0))
      (:let (:apply b (:icon 2)) (:icon 0))
      (:let (:apply b (:icon 3)) (:icon 0)))
     (:line 370 (:for k (:icon 1) (:var n) nil))
     (:line 380 (:if (:binary :gt (:var m) (:icon 1))) (:goto 460))
     (:line 390
      (:if
       (:lazy-binary :or (:binary :eq (:apply a (:var k)) (:icon 1))
        (:binary :eq (:apply b (:var k)) (:icon 1))))
      (:goto 450))
     (:line 400
      (:if
       (:binary :gt
        (:apply f (:binary :minus (:apply a (:var k)) (:icon 1))
         (:binary :minus (:apply b (:var k)) (:icon 1)))
        (:icon 0)))
      (:goto 450))
     (:line 410
      (:if
       (:lazy-binary :and
        (:binary :gt
         (:apply f (:binary :minus (:apply a (:var k)) (:icon 1))
          (:apply b (:var k)))
         (:icon 0))
        (:binary :eq
         (:apply f (:binary :minus (:apply a (:var k)) (:icon 1))
          (:apply b (:var k)))
         (:apply f (:apply a (:var k))
          (:binary :minus (:apply b (:var k)) (:icon 1))))))
      (:goto 450))
     (:line 420
      (:let (:apply a (:binary :plus (:var k) (:icon 1)))
       (:binary :minus (:apply a (:var k)) (:icon 1))))
     (:line 430
      (:let (:apply b (:binary :plus (:var k) (:icon 1)))
       (:binary :minus (:apply b (:var k)) (:icon 1))))
     (:line 440 (:goto 530)) (:line 450 (:let (:var m) (:icon 2)))
     (:line 460
      (:if
       (:lazy-binary :and
        (:binary :gt (:apply a (:icon 1)) (:apply a (:icon 2)))
        (:binary :gt (:apply a (:icon 1)) (:apply a (:icon 3)))))
      (:let (:var z1) (:apply a (:icon 1))))
     (:line 462
      (:if
       (:lazy-binary :and
        (:binary :gt (:apply a (:icon 2)) (:apply a (:icon 1)))
        (:binary :gt (:apply a (:icon 2)) (:apply a (:icon 3)))))
      (:let (:var z1) (:apply a (:icon 2))))
     (:line 464
      (:if
       (:lazy-binary :and
        (:binary :gt (:apply a (:icon 3)) (:apply a (:icon 1)))
        (:binary :gt (:apply a (:icon 3)) (:apply a (:icon 2)))))
      (:let (:var z1) (:apply a (:icon 3))))
     (:line 470
      (:if
       (:lazy-binary :and
        (:binary :gt (:apply b (:icon 1)) (:apply b (:icon 2)))
        (:binary :gt (:apply b (:icon 1)) (:apply b (:icon 3)))))
      (:let (:var z2) (:apply b (:icon 1))))
     (:line 474
      (:if
       (:lazy-binary :and
        (:binary :gt (:apply b (:icon 2)) (:apply b (:icon 1)))
        (:binary :gt (:apply b (:icon 2)) (:apply b (:icon 3)))))
      (:let (:var z2) (:apply b (:icon 2))))
     (:line 476
      (:if
       (:lazy-binary :and
        (:binary :gt (:apply b (:icon 3)) (:apply b (:icon 1)))
        (:binary :gt (:apply b (:icon 3)) (:apply b (:icon 2)))))
      (:let (:var z2) (:apply b (:icon 3))))
     (:line 480
      (:if
       (:lazy-binary :or (:binary :eq (:var z1) (:icon 6))
        (:binary :eq (:var z2) (:icon 6))))
      (:goto 90))
     (:line 490
      (:if
       (:binary :gt
        (:apply f (:binary :plus (:var z1) (:icon 1))
         (:binary :plus (:var z2) (:icon 1)))
        (:icon 0)))
      (:goto 90))
     (:line 500
      (:if
       (:lazy-binary :and
        (:binary :gt
         (:apply f (:var z1) (:binary :plus (:var z2) (:icon 1)))
         (:icon 0))
        (:binary :eq
         (:apply f (:var z1) (:binary :plus (:var z2) (:icon 1)))
         (:apply f (:binary :plus (:var z1) (:icon 1))
          (:var z2)))))
      (:goto 90))
     (:line 510
      (:let (:apply a (:binary :plus (:var k) (:icon 1)))
       (:binary :plus (:var z1) (:icon 1))))
     (:line 520
      (:let (:apply b (:binary :plus (:var k) (:icon 1)))
       (:binary :plus (:var z2) (:icon 1))))
     (:line 530 (:next k)) (:line 540 (:goto 950))
     (:line 550 (:let (:apply a (:icon 1)) (:var a)))
     (:line 560 (:let (:apply a (:icon 2)) (:icon 7))
      (:let (:apply a (:icon 3)) (:icon 7)))
     (:line 570 (:for k (:icon 1) (:var n) nil))
     (:line 580 (:if (:binary :gt (:var m) (:icon 1))) (:goto 640))
     (:line 590 (:if (:binary :eq (:apply a (:var k)) (:icon 6)))
      (:goto 630))
     (:line 600
      (:if
       (:binary :gt
        (:apply f (:binary :plus (:apply a (:var k)) (:icon 1))
         (:var b))
        (:icon 0)))
      (:goto 630))
     (:line 610
      (:let (:apply a (:binary :plus (:var k) (:icon 1)))
       (:binary :plus (:apply a (:var k)) (:icon 1))))
     (:line 620 (:goto 680)) (:line 630 (:let (:var m) (:icon 2)))
     (:line 640
      (:if
       (:lazy-binary :and
        (:binary :lt (:apply a (:icon 1)) (:apply a (:icon 2)))
        (:binary :lt (:apply a (:icon 1)) (:apply a (:icon 3)))))
      (:let (:var z) (:apply a (:icon 1))))
     (:line 642
      (:if
       (:lazy-binary :and
        (:binary :lt (:apply a (:icon 2)) (:apply a (:icon 1)))
        (:binary :lt (:apply a (:icon 2)) (:apply a (:icon 3)))))
      (:let (:var z) (:apply a (:icon 2))))
     (:line 644
      (:if
       (:lazy-binary :and
        (:binary :lt (:apply a (:icon 3)) (:apply a (:icon 1)))
        (:binary :lt (:apply a (:icon 3)) (:apply a (:icon 2)))))
      (:let (:var z) (:apply a (:icon 3))))
     (:line 650 (:if (:binary :eq (:var z) (:icon 1))) (:goto 90))
     (:line 660
      (:if
       (:binary :gt
        (:apply f (:binary :minus (:var z) (:icon 1)) (:var b))
        (:icon 0)))
      (:goto 90))
     (:line 670
      (:let (:apply a (:binary :plus (:var k) (:icon 1)))
       (:binary :minus (:var z) (:icon 1))))
     (:line 680 (:next k))
     (:line 690
      (:let (:apply f (:var a) (:var b))
       (:binary :minus
        (:binary :minus (:icon 9) (:binary :mul (:icon 2) (:var i)))
        (:var j))))
     (:line 700 (:for k (:icon 1) (:var n) nil))
     (:line 710
      (:let
       (:apply f (:apply a (:binary :plus (:var k) (:icon 1)))
        (:var b))
       (:apply f (:var a) (:var b))))
     (:line 720 (:next k)) (:line 730 (:goto 990))
     (:line 740 (:let (:apply a (:icon 1)) (:var a)))
     (:line 750 (:let (:apply b (:icon 1)) (:var b)))
     (:line 760 (:let (:apply a (:icon 2)) (:icon 7))
      (:let (:apply a (:icon 3)) (:icon 7)))
     (:line 770 (:let (:apply b (:icon 2)) (:icon 0))
      (:let (:apply b (:icon 3)) (:icon 0)))
     (:line 780 (:for k (:icon 1) (:var n) nil))
     (:line 790 (:if (:binary :gt (:var m) (:icon 1))) (:goto 870))
     (:line 800
      (:if
       (:lazy-binary :or (:binary :eq (:apply a (:var k)) (:icon 6))
        (:binary :eq (:apply b (:var k)) (:icon 1))))
      (:goto 860))
     (:line 810
      (:if
       (:binary :gt
        (:apply f (:binary :plus (:apply a (:var k)) (:icon 1))
         (:binary :minus (:apply b (:var k)) (:icon 1)))
        (:icon 0)))
      (:goto 860))
     (:line 820
      (:if
       (:lazy-binary :and
        (:binary :gt
         (:apply f (:binary :plus (:apply a (:var k)) (:icon 1))
          (:apply b (:var k)))
         (:icon 0))
        (:binary :eq
         (:apply f (:binary :plus (:apply a (:var k)) (:icon 1))
          (:apply b (:var k)))
         (:apply f (:apply a (:var k))
          (:binary :minus (:apply b (:var k)) (:icon 1))))))
      (:goto 860))
     (:line 830
      (:let (:apply a (:binary :plus (:var k) (:icon 1)))
       (:binary :plus (:apply a (:var k)) (:icon 1))))
     (:line 840
      (:let (:apply b (:binary :plus (:var k) (:icon 1)))
       (:binary :minus (:apply b (:var k)) (:icon 1))))
     (:line 850 (:goto 940)) (:line 860 (:let (:var m) (:icon 2)))
     (:line 870
      (:if
       (:lazy-binary :and
        (:binary :lt (:apply a (:icon 1)) (:apply a (:icon 2)))
        (:binary :lt (:apply a (:icon 1)) (:apply a (:icon 3)))))
      (:let (:var z1) (:apply a (:icon 1))))
     (:line 872
      (:if
       (:lazy-binary :and
        (:binary :lt (:apply a (:icon 2)) (:apply a (:icon 1)))
        (:binary :lt (:apply a (:icon 2)) (:apply a (:icon 3)))))
      (:let (:var z1) (:apply a (:icon 2))))
     (:line 874
      (:if
       (:lazy-binary :and
        (:binary :lt (:apply a (:icon 3)) (:apply a (:icon 1)))
        (:binary :lt (:apply a (:icon 3)) (:apply a (:icon 2)))))
      (:let (:var z1) (:apply a (:icon 3))))
     (:line 880
      (:if
       (:lazy-binary :and
        (:binary :gt (:apply b (:icon 1)) (:apply b (:icon 2)))
        (:binary :gt (:apply b (:icon 1)) (:apply b (:icon 3)))))
      (:let (:var z2) (:apply b (:icon 1))))
     (:line 882
      (:if
       (:lazy-binary :and
        (:binary :gt (:apply b (:icon 2)) (:apply b (:icon 1)))
        (:binary :gt (:apply b (:icon 2)) (:apply b (:icon 3)))))
      (:let (:var z2) (:apply b (:icon 2))))
     (:line 884
      (:if
       (:lazy-binary :and
        (:binary :gt (:apply b (:icon 3)) (:apply b (:icon 1)))
        (:binary :gt (:apply b (:icon 3)) (:apply b (:icon 2)))))
      (:let (:var z2) (:apply b (:icon 3))))
     (:line 890
      (:if
       (:lazy-binary :or (:binary :eq (:var z1) (:icon 1))
        (:binary :eq (:var z2) (:icon 6))))
      (:goto 90))
     (:line 900
      (:if
       (:binary :gt
        (:apply f (:binary :minus (:var z1) (:icon 1))
         (:binary :plus (:var z2) (:icon 1)))
        (:icon 0)))
      (:goto 90))
     (:line 910
      (:if
       (:lazy-binary :and
        (:binary :gt
         (:apply f (:var z1) (:binary :plus (:var z2) (:icon 1)))
         (:icon 0))
        (:binary :eq
         (:apply f (:var z1) (:binary :plus (:var z2) (:icon 1)))
         (:apply f (:binary :minus (:var z1) (:icon 1))
          (:var z2)))))
      (:goto 90))
     (:line 920
      (:let (:apply a (:binary :plus (:var k) (:icon 1)))
       (:binary :minus (:var z1) (:icon 1))))
     (:line 930
      (:let (:apply b (:binary :plus (:var k) (:icon 1)))
       (:binary :plus (:var z2) (:icon 1))))
     (:line 940 (:next k))
     (:line 950
      (:let (:apply f (:var a) (:var b))
       (:binary :minus
        (:binary :minus (:icon 9) (:binary :mul (:icon 2) (:var i)))
        (:var j))))
     (:line 960 (:for k (:icon 1) (:var n) nil))
     (:line 970
      (:let
       (:apply f (:apply a (:binary :plus (:var k) (:icon 1)))
        (:apply b (:binary :plus (:var k) (:icon 1))))
       (:apply f (:var a) (:var b))))
     (:line 980 (:next k)) (:line 990 (:next j))
     (:line 1000 (:next i)) (:line 1010 (:print))
     (:line 1020
      (:print (:scon "the following code of the bad guys' fleet disposition")))
     (:line 1030 (:print (:scon "has been captured but not decoded:")))
     (:line 1040 (:print)) (:line 1050 (:for i (:icon 1) (:icon 6) nil))
     (:line 1051 (:for j (:icon 1) (:icon 6) nil))
     (:line 1052
      (:let (:apply h (:var i) (:var j))
       (:apply f (:var j) (:var i))))
     (:line 1053 (:next j)) (:line 1054 (:next i))
     (:line 1060 (:for i (:icon 1) (:icon 6) nil))
     (:line 1061 (:for j (:icon 1) (:icon 6) nil))
     (:line 1062 (:print (:apply h (:var i) (:var j)) :semi))
     (:line 1063 (:next j)) (:line 1064 (:print))
     (:line 1065 (:next i)) (:line 1070 (:print))
     (:line 1080 (:print (:scon "de-code it and use it if you can")))
     (:line 1090 (:print (:scon "but keep the de-coding method a secret.")))
     (:line 1100 (:print)) (:line 1110 (:for i (:icon 1) (:icon 6) nil))
     (:line 1111 (:for j (:icon 1) (:icon 6) nil))
     (:line 1112 (:let (:apply h (:var i) (:var j)) (:icon 0)))
     (:line 1113 (:next j)) (:line 1114 (:next i))
     (:line 1120 (:for i (:icon 1) (:icon 3) nil))
     (:line 1121 (:let (:apply l (:var i)) (:icon 0)))
     (:line 1122 (:next i))
     (:line 1130 (:let (:apply c (:icon 1)) (:icon 2))
      (:let (:apply c (:icon 2)) (:icon 2)))
     (:line 1140 (:let (:apply c (:icon 3)) (:icon 1))
      (:let (:apply c (:icon 4)) (:icon 1)))
     (:line 1150 (:let (:apply c (:icon 5)) (:icon 0))
      (:let (:apply c (:icon 6)) (:icon 0)))
     (:line 1160 (:let (:var s) (:icon 0)) (:let (:var h) (:icon 0)))
     (:line 1170 (:print (:scon "start game")))
     (:line 1180 (:input nil ((:var x) (:var y))))
     (:line 1190
      (:if
       (:lazy-binary :or
        (:lazy-binary :or (:binary :lt (:var x) (:icon 1))
         (:binary :gt (:var x) (:icon 6)))
        (:binary :ne (:apply int (:var x))
         (:apply abs (:var x)))))
      (:goto 1210))
     (:line 1200
      (:if
       (:lazy-binary :and
        (:lazy-binary :and (:binary :gt (:var y) (:icon 0))
         (:binary :lt (:var y) (:icon 7)))
        (:binary :eq (:apply int (:var y))
         (:apply abs (:var y)))))
      (:goto 1230))
     (:line 1210 (:print (:scon "invalid input.  try again.")))
     (:line 1220 (:goto 1180))
     (:line 1230 (:let (:var r) (:binary :minus (:icon 7) (:var y))))
     (:line 1240 (:let (:var c) (:var x)))
     (:line 1250
      (:if (:binary :gt (:apply f (:var r) (:var c)) (:icon 0)))
      (:goto 1290))
     (:line 1260 (:let (:var s) (:binary :plus (:var s) (:icon 1))))
     (:line 1270 (:print (:scon "splash!  try again.")))
     (:line 1280 (:goto 1180))
     (:line 1290
      (:if
       (:binary :lt (:apply c (:apply f (:var r) (:var c)))
        (:icon 4)))
      (:goto 1340))
     (:line 1300
      (:print
       (:scon "there used to be a ship at that point, but you sunk it.")))
     (:line 1310 (:print (:scon "splash!  try again.")))
     (:line 1320 (:let (:var s) (:binary :plus (:var s) (:icon 1))))
     (:line 1330 (:goto 1180))
     (:line 1340
      (:if (:binary :gt (:apply h (:var r) (:var c)) (:icon 0)))
      (:goto 1420))
     (:line 1350 (:let (:var h) (:binary :plus (:var h) (:icon 1))))
     (:line 1360
      (:let (:apply h (:var r) (:var c))
       (:apply f (:var r) (:var c))))
     (:line 1370
      (:print (:scon "a direct hit on ship number") :semi
       (:apply f (:var r) (:var c))))
     (:line 1380
      (:let (:apply c (:apply f (:var r) (:var c)))
       (:binary :plus (:apply c (:apply f (:var r) (:var c)))
        (:icon 1))))
     (:line 1390
      (:if
       (:binary :ge (:apply c (:apply f (:var r) (:var c)))
        (:icon 4)))
      (:goto 1470))
     (:line 1400 (:print (:scon "try again."))) (:line 1410 (:goto 1180))
     (:line 1420
      (:print (:scon "you already put a hole in ship number") :semi
       (:apply f (:var r) (:var c)) :semi))
     (:line 1430 (:print (:scon "at that point.")))
     (:line 1440 (:print (:scon "splash!  try again.")))
     (:line 1450 (:let (:var s) (:binary :plus (:var s) (:icon 1))))
     (:line 1460 (:goto 1180))
     (:line 1470
      (:let
       (:apply l
        (:binary :plus
         (:binary :div
          (:apply int
           (:binary :minus (:apply f (:var r) (:var c)) (:icon 1)))
          (:icon 2))
         (:icon 1)))
       (:binary :plus
        (:apply l
         (:binary :plus
          (:binary :div
           (:apply int
            (:binary :minus (:apply f (:var r) (:var c))
             (:icon 1)))
           (:icon 2))
          (:icon 1)))
        (:icon 1))))
     (:line 1480
      (:print (:scon "and you sunk it.  hurrah for the good guys.")))
     (:line 1490 (:print (:scon "so far, the bad guys have lost")))
     (:line 1500
      (:print (:apply l (:icon 1)) :semi (:scon "destroyer(s),") :semi
       (:apply l (:icon 2)) :semi (:scon "cruiser(s), and") :semi))
     (:line 1510
      (:print (:apply l (:icon 3)) :semi (:scon "aircraft carrier(s).")))
     (:line 1520
      (:print (:scon "your current splash/hit ratio is") :semi
       (:binary :div (:var s) (:var h))))
     (:line 1530
      (:if
       (:binary :lt
        (:binary :plus
         (:binary :plus (:apply l (:icon 1)) (:apply l (:icon 2)))
         (:apply l (:icon 3)))
        (:icon 6)))
      (:goto 1180))
     (:line 1540 (:print))
     (:line 1550
      (:print (:scon "you have totally wiped out the bad guys' fleet")))
     (:line 1560
      (:print (:scon "with a final splash/hit ratio of") :semi
       (:binary :div (:var s) (:var h))))
     (:line 1570
      (:if (:binary :gt (:binary :div (:var s) (:var h)) (:icon 0)))
      (:goto 1590))
     (:line 1580
      (:print (:scon "congratulations -- a direct hit every time.")))
     (:line 1590 (:print))
     (:line 1600 (:print (:scon "****************************")))
     (:line 1610 (:print)) (:line 1620 (:goto 50)) (:line 1630 (:end)))))



(defvar *blackjack*
  '(((:line 2 (:print (:apply tab (:icon 31)) :semi (:scon "black jack")))
     (:line 4
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 6 (:print) (:print) (:print))
     (:line 10
      (:def fna q
       (:binary :plus (:var q)
        (:binary :mul (:icon 11) (:binary :ge (:var q) (:icon 22))))))
     (:line 20
      (:dim
       ((:dimd2 p (:icon 15) (:icon 12)) (:dimd q (:icon 15))
        (:dimd c (:icon 52)) (:dimd d (:icon 52))
        (:dimd t (:icon 8)) (:dimd s (:icon 7))
        (:dimd b (:icon 15)))))
     (:line 30 (:dim ((:dimd r (:icon 15)))))
     (:line 40
      (:rem "--p(i,j) is the jth card in hand i, q(i) is total of hand i
"))
     (:line 50
      (:rem "--c is the deck being dealt from, d is the discard pile,
"))
     (:line 60
      (:rem
       "--t(i) is the total for player i, s(i) is the total this hand for
"))
     (:line 70 (:rem "--player i, b(i) is th bet for hand i
"))
     (:line 80 (:rem "--r(i) is the length of p(i,*)
"))
     (:line 90 (:goto 1500))
     (:line 100 (:rem "--subroutine to get a card.  result is put in x.
"))
     (:line 110 (:if (:binary :lt (:var c) (:icon 51))) (:goto 230))
     (:line 120 (:print (:scon "reshuffling")))
     (:line 130 (:for d (:var d) (:icon 1) (:uminus (:icon 1))))
     (:line 140 (:let (:var c) (:binary :minus (:var c) (:icon 1))))
     (:line 150 (:let (:apply c (:var c)) (:apply d (:var d))))
     (:line 160 (:next d))
     (:line 170 (:for c1 (:icon 52) (:var c) (:uminus (:icon 1))))
     (:line 180
      (:let (:var c2)
       (:binary :plus
        (:apply int
         (:binary :mul (:apply rnd (:icon 1))
          (:binary :plus (:binary :minus (:var c1) (:var c))
           (:icon 1))))
        (:var c))))
     (:line 190 (:let (:var c3) (:apply c (:var c2))))
     (:line 200
      (:let (:apply c (:var c2)) (:apply c (:var c1))))
     (:line 210 (:let (:apply c (:var c1)) (:var c3)))
     (:line 220 (:next c1))
     (:line 230 (:let (:var x) (:apply c (:var c))))
     (:line 240 (:let (:var c) (:binary :plus (:var c) (:icon 1))))
     (:line 250 (:return))
     (:line 300 (:rem "--subroutine to evaluate hand i.  total is put into
"))
     (:line 310 (:rem "--q(i). totals have the following meaning:
"))
     (:line 320 (:rem "--  2-10...hard 2-10
"))
     (:line 330 (:rem "-- 11-21...soft 11-21
"))
     (:line 340 (:rem "-- 22-32...hard 11-21
"))
     (:line 350 (:rem "--  33+....busted
"))
     (:line 360 (:let (:var q) (:icon 0)))
     (:line 370 (:for q2 (:icon 1) (:apply r (:var i)) nil))
     (:line 380 (:let (:var x) (:apply p (:var i) (:var q2))))
     (:line 390 (:gosub 500)) (:line 400 (:next q2))
     (:line 410 (:let (:apply q (:var i)) (:var q)))
     (:line 420 (:return))
     (:line 500 (:rem "--subroutine to add card x to total q.
"))
     (:line 510 (:let (:var x1) (:var x))
      (:if (:binary :gt (:var x1) (:icon 10)))
      (:let (:var x1) (:icon 10)) (:rem "  same as x1=10 min x
"))
     (:line 520
      (:let (:var q1) (:binary :plus (:var q) (:var x1))))
     (:line 530 (:if (:binary :ge (:var q) (:icon 11))) (:goto 590))
     (:line 540 (:if (:binary :gt (:var x) (:icon 1))) (:goto 570))
     (:line 550 (:let (:var q) (:binary :plus (:var q) (:icon 11))))
     (:line 560 (:return))
     (:line 570
      (:let (:var q)
       (:binary :minus (:var q1)
        (:binary :mul (:icon 11) (:binary :ge (:var q1) (:icon 11))))))
     (:line 580 (:return))
     (:line 590
      (:let (:var q)
       (:binary :minus (:var q1)
        (:lazy-binary :and (:binary :le (:var q) (:icon 21))
         (:binary :gt (:var q1) (:icon 21))))))
     (:line 600 (:if (:binary :lt (:var q) (:icon 33))) (:goto 620))
     (:line 610 (:let (:var q) (:uminus (:icon 1)))) (:line 620 (:return))
     (:line 700 (:rem "--card printing subroutine
"))
     (:line 710 (:rem "  d$ defined elsewhere
"))
     (:line 720
      (:print
       (:apply mid$ (:var d$)
        (:binary :minus (:binary :mul (:icon 3) (:var x)) (:icon 2))
        (:icon 3))
       :semi))
     (:line 730 (:print (:scon "  ") :semi)) (:line 740 (:return))
     (:line 750 (:rem "--alternative printing routine
"))
     (:line 760
      (:print (:scon " ") :semi
       (:apply mid$ (:var d$)
        (:binary :minus (:binary :mul (:icon 3) (:var x)) (:icon 1))
        (:icon 2))
       :semi))
     (:line 770 (:print (:scon "   ") :semi)) (:line 780 (:return))
     (:line 800 (:rem "--subroutine to play out a hand.
"))
     (:line 810 (:rem "--no splitting or blackjacks allowed
"))
     (:line 820 (:let (:var h1) (:icon 5))) (:line 830 (:gosub 1410))
     (:line 840 (:let (:var h1) (:icon 3)))
     (:line 850 (:on-goto (:var h) (950 930))) (:line 860 (:gosub 100))
     (:line 870
      (:let (:apply b (:var i))
       (:binary :mul (:apply b (:var i)) (:icon 2))))
     (:line 880 (:print (:scon "received a") :semi)) (:line 890 (:gosub 700))
     (:line 900 (:gosub 1100))
     (:line 910 (:if (:binary :gt (:var q) (:icon 0))) (:gosub 1300))
     (:line 920 (:return)) (:line 930 (:gosub 1320)) (:line 940 (:return))
     (:line 950 (:gosub 100)) (:line 960 (:print (:scon "received a") :semi))
     (:line 970 (:gosub 700)) (:line 980 (:gosub 1100))
     (:line 990 (:if (:binary :lt (:var q) (:icon 0))) (:goto 940))
     (:line 1000 (:print (:scon "hit") :semi)) (:line 1010 (:goto 830))
     (:line 1100 (:rem "--subroutine to add a card to row i
"))
     (:line 1110
      (:let (:apply r (:var i))
       (:binary :plus (:apply r (:var i)) (:icon 1))))
     (:line 1120
      (:let (:apply p (:var i) (:apply r (:var i)))
       (:var x)))
     (:line 1130 (:let (:var q) (:apply q (:var i))))
     (:line 1140 (:gosub 500))
     (:line 1150 (:let (:apply q (:var i)) (:var q)))
     (:line 1160 (:if (:binary :ge (:var q) (:icon 0))) (:goto 1190))
     (:line 1170 (:print (:scon "...busted"))) (:line 1180 (:gosub 1200))
     (:line 1190 (:return))
     (:line 1200 (:rem "--subroutine to discard row i
"))
     (:line 1210 (:if (:binary :ne (:apply r (:var i)) (:icon 0)))
      (:goto 1230))
     (:line 1220 (:return))
     (:line 1230 (:let (:var d) (:binary :plus (:var d) (:icon 1))))
     (:line 1240
      (:let (:apply d (:var d))
       (:apply p (:var i) (:apply r (:var i)))))
     (:line 1250
      (:let (:apply r (:var i))
       (:binary :minus (:apply r (:var i)) (:icon 1))))
     (:line 1260 (:goto 1210)) (:line 1300 (:rem "--prints total of hand i
"))
     (:line 1310 (:print))
     (:line 1320 (:let (:var aa) (:apply q (:var i)))
      (:gosub 3400))
     (:line 1325 (:print (:scon "total is") :semi (:var aa)))
     (:line 1330 (:return)) (:line 1400 (:rem "--subroutine to read reply
"))
     (:line 1410 (:rem "  i$ defined elsewhere
"))
     (:line 1420 (:input nil ((:var h$)))
      (:let (:var h$) (:apply left$ (:var h$) (:icon 1))))
     (:line 1430 (:for h (:icon 1) (:var h1) (:icon 2)))
     (:line 1440
      (:if
       (:binary :eq (:var h$)
        (:apply mid$ (:var i$) (:var h) (:icon 1))))
      (:goto 1480))
     (:line 1450 (:next h))
     (:line 1460
      (:print (:scon "type ") :semi
       (:apply mid$ (:var i$) (:icon 1)
        (:binary :minus (:var h1) (:icon 1)))
       :semi (:scon " or ") :semi
       (:apply mid$ (:var i$) (:var h1) (:icon 2)) :semi
       (:scon " please") :semi))
     (:line 1470 (:goto 1420))
     (:line 1480
      (:let (:var h)
       (:binary :div (:binary :plus (:var h) (:icon 1)) (:icon 2))))
     (:line 1490 (:return)) (:line 1500 (:rem "--program starts here
"))
     (:line 1510 (:rem "--initialize
"))
     (:line 1520
      (:let (:var d$) (:scon "n a  2  3  4  5  6  7n 8  9 10  j  q  k")))
     (:line 1530 (:let (:var i$) (:scon "h,s,d,/,")))
     (:line 1540 (:for i (:icon 1) (:icon 13) nil))
     (:line 1550
      (:for j
       (:binary :minus (:binary :mul (:icon 4) (:var i)) (:icon 3))
       (:binary :mul (:icon 4) (:var i)) nil))
     (:line 1560 (:let (:apply d (:var j)) (:var i)))
     (:line 1570 (:next j)) (:line 1580 (:next i))
     (:line 1590 (:let (:var d) (:icon 52)))
     (:line 1600 (:let (:var c) (:icon 53)))
     (:line 1610 (:print (:scon "do you want instructions") :semi))
     (:line 1620 (:input nil ((:var h$))))
     (:line 1630
      (:if
       (:lazy-binary :or
        (:binary :eq (:apply left$ (:var h$) (:icon 1)) (:scon "n"))
        (:binary :eq (:apply left$ (:var h$) (:icon 1)) (:scon "n"))))
      (:goto 1760))
     (:line 1640
      (:print
       (:scon "this is the game of 21. as many as 7 players may play the")))
     (:line 1650
      (:print (:scon "game. on each deal, bets will be asked for, and the")))
     (:line 1660
      (:print
       (:scon "players' bets should be typed in. the cards will then be")))
     (:line 1670
      (:print (:scon "dealt, and each player in turn plays his hand. the")))
     (:line 1680
      (:print
       (:scon "first response should be either 'd', indicating that the")))
     (:line 1690
      (:print (:scon "player is doubling down, 's', indicating that he is")))
     (:line 1700
      (:print
       (:scon "standing, 'h', indicating he wants another card, or '/',")))
     (:line 1710
      (:print
       (:scon "indicating that he wants to split his cards. after the")))
     (:line 1720
      (:print
       (:scon "initial response, all further responses should be 's' or")))
     (:line 1730
      (:print
       (:scon "'h', unless the cards were split, in which case doubling")))
     (:line 1740
      (:print (:scon "down is again permitted. in order to collect for")))
     (:line 1750
      (:print (:scon "blackjack, the initial response should be 's'.")))
     (:line 1760 (:print (:scon "number of players") :semi))
     (:line 1770 (:input nil ((:var n)))) (:line 1775 (:print))
     (:line 1780
      (:if
       (:lazy-binary :or
        (:lazy-binary :or (:binary :lt (:var n) (:icon 1))
         (:binary :gt (:var n) (:icon 7)))
        (:binary :gt (:var n) (:apply int (:var n)))))
      (:goto 1760))
     (:line 1790 (:for i (:icon 1) (:icon 8) nil)
      (:let (:apply t (:var i)) (:icon 0)) (:next i))
     (:line 1800 (:let (:var d1) (:binary :plus (:var n) (:icon 1))))
     (:line 1810
      (:if
       (:binary :ge
        (:binary :plus (:binary :mul (:icon 2) (:var d1)) (:var c))
        (:icon 52)))
      (:gosub 120))
     (:line 1820 (:if (:binary :eq (:var c) (:icon 2)))
      (:let (:var c) (:binary :minus (:var c) (:icon 1))))
     (:line 1830 (:for i (:icon 1) (:var n) nil)
      (:let (:apply z (:var i)) (:icon 0)) (:next i))
     (:line 1840 (:for i (:icon 1) (:icon 15) nil)
      (:let (:apply b (:var i)) (:icon 0)) (:next i))
     (:line 1850 (:for i (:icon 1) (:icon 15) nil)
      (:let (:apply q (:var i)) (:icon 0)) (:next i))
     (:line 1860 (:for i (:icon 1) (:icon 7) nil)
      (:let (:apply s (:var i)) (:icon 0)) (:next i))
     (:line 1870 (:for i (:icon 1) (:icon 15) nil)
      (:let (:apply r (:var i)) (:icon 0)) (:next i))
     (:line 1880 (:print (:scon "bets:")))
     (:line 1890 (:for i (:icon 1) (:var n) nil)
      (:print (:scon "#") :semi (:var i) :semi)
      (:input nil ((:apply z (:var i)))) (:next i))
     (:line 1900 (:for i (:icon 1) (:var n) nil))
     (:line 1910
      (:if
       (:lazy-binary :or (:binary :le (:apply z (:var i)) (:icon 0))
        (:binary :gt (:apply z (:var i)) (:icon 500))))
      (:goto 1880))
     (:line 1920
      (:let (:apply b (:var i)) (:apply z (:var i))))
     (:line 1930 (:next i)) (:line 1940 (:print (:scon "player") :semi))
     (:line 1950 (:for i (:icon 1) (:var n) nil))
     (:line 1960 (:print (:var i) :semi (:scon "   ") :semi))
     (:line 1970 (:next i)) (:line 1980 (:print (:scon "dealer")))
     (:line 1990 (:for j (:icon 1) (:icon 2) nil))
     (:line 2000 (:print (:apply tab (:icon 5)) :semi))
     (:line 2010 (:for i (:icon 1) (:var d1) nil))
     (:line 2020 (:gosub 100))
     (:line 2030 (:let (:apply p (:var i) (:var j)) (:var x)))
     (:line 2040
      (:if
       (:lazy-binary :or (:binary :eq (:var j) (:icon 1))
        (:binary :le (:var i) (:var n))))
      (:gosub 750))
     (:line 2050 (:next i)) (:line 2060 (:print))
     (:line 2070 (:next j))
     (:line 2080 (:for i (:icon 1) (:var d1) nil))
     (:line 2090 (:let (:apply r (:var i)) (:icon 2)))
     (:line 2100 (:next i)) (:line 2110 (:rem "--test for insurance
"))
     (:line 2120
      (:if (:binary :gt (:apply p (:var d1) (:icon 1)) (:icon 1)))
      (:goto 2240))
     (:line 2130 (:print (:scon "any insurance") :semi))
     (:line 2140 (:input nil ((:var h$))))
     (:line 2150
      (:if
       (:binary :ne (:apply left$ (:var h$) (:icon 1)) (:scon "y")))
      (:goto 2240))
     (:line 2160 (:print (:scon "insurance bets")))
     (:line 2170 (:for i (:icon 1) (:var n) nil)
      (:print (:scon "#") :semi (:var i) :semi)
      (:input nil ((:apply z (:var i)))) (:next i))
     (:line 2180 (:for i (:icon 1) (:var n) nil))
     (:line 2190
      (:if
       (:lazy-binary :or (:binary :lt (:apply z (:var i)) (:icon 0))
        (:binary :gt (:apply z (:var i))
         (:binary :div (:apply b (:var i)) (:icon 2)))))
      (:goto 2160))
     (:line 2200 (:next i))
     (:line 2210 (:for i (:icon 1) (:var n) nil))
     (:line 2220
      (:let (:apply s (:var i))
       (:binary :mul (:apply z (:var i))
        (:binary :minus
         (:binary :mul (:icon 3)
          (:uminus
           (:binary :ge (:apply p (:var d1) (:icon 2)) (:icon 10))))
         (:icon 1)))))
     (:line 2230 (:next i))
     (:line 2240 (:rem "--test for dealer blackjack
"))
     (:line 2250 (:let (:var l1) (:icon 1)) (:let (:var l2) (:icon 1)))
     (:line 2252
      (:if
       (:lazy-binary :and
        (:binary :eq (:apply p (:var d1) (:icon 1)) (:icon 1))
        (:binary :gt (:apply p (:var d1) (:icon 2)) (:icon 9))))
      (:let (:var l1) (:icon 0)) (:let (:var l2) (:icon 0)))
     (:line 2253
      (:if
       (:lazy-binary :and
        (:binary :eq (:apply p (:var d1) (:icon 2)) (:icon 1))
        (:binary :gt (:apply p (:var d1) (:icon 1)) (:icon 9))))
      (:let (:var l1) (:icon 0)) (:let (:var l2) (:icon 0)))
     (:line 2254
      (:if
       (:lazy-binary :or (:binary :ne (:var l1) (:icon 0))
        (:binary :ne (:var l2) (:icon 0))))
      (:goto 2320))
     (:line 2260 (:print)
      (:print (:scon "dealer has a") :semi
       (:apply mid$ (:var d$)
        (:binary :minus
         (:binary :mul (:icon 3) (:apply p (:var d1) (:icon 2)))
         (:icon 2))
        (:icon 3))
       :semi (:scon " in the hole ") :semi))
     (:line 2270 (:print (:scon "for blackjack")))
     (:line 2280 (:for i (:icon 1) (:var d1) nil))
     (:line 2290 (:gosub 300)) (:line 2300 (:next i))
     (:line 2310 (:goto 3140)) (:line 2320 (:rem "--no dealer blackjack
"))
     (:line 2330
      (:if
       (:lazy-binary :and
        (:binary :gt (:apply p (:var d1) (:icon 1)) (:icon 1))
        (:binary :lt (:apply p (:var d1) (:icon 1)) (:icon 10))))
      (:goto 2350))
     (:line 2340 (:print) (:print (:scon "no dealer blackjack.")))
     (:line 2350 (:rem "--now play the hands
"))
     (:line 2360 (:for i (:icon 1) (:var n) nil))
     (:line 2370 (:print (:scon "player") :semi (:var i) :semi))
     (:line 2380 (:let (:var h1) (:icon 7))) (:line 2390 (:gosub 1410))
     (:line 2400 (:on-goto (:var h) (2550 2410 2510 2600)))
     (:line 2410 (:rem "--player wants to stand
")) (:line 2420 (:gosub 300))
     (:line 2430 (:if (:binary :ne (:apply q (:var i)) (:icon 21)))
      (:goto 2490))
     (:line 2440 (:print (:scon "blackjack")))
     (:line 2450
      (:let (:apply s (:var i))
       (:binary :plus (:apply s (:var i))
        (:binary :mul (:fcon 1.5) (:apply b (:var i))))))
     (:line 2460 (:let (:apply b (:var i)) (:icon 0)))
     (:line 2470 (:gosub 1200)) (:line 2480 (:goto 2900))
     (:line 2490 (:gosub 1320)) (:line 2500 (:goto 2900))
     (:line 2510 (:rem "--player wants to double down
"))
     (:line 2520 (:gosub 300)) (:line 2530 (:gosub 860))
     (:line 2540 (:goto 2900)) (:line 2550 (:rem "--player wants to be hit
"))
     (:line 2560 (:gosub 300)) (:line 2570 (:let (:var h1) (:icon 3)))
     (:line 2580 (:gosub 950)) (:line 2590 (:goto 2900))
     (:line 2600 (:rem "--player wants to split
"))
     (:line 2610 (:let (:var l1) (:apply p (:var i) (:icon 1)))
      (:if (:binary :gt (:apply p (:var i) (:icon 1)) (:icon 10)))
      (:let (:var l1) (:icon 10)))
     (:line 2612 (:let (:var l2) (:apply p (:var i) (:icon 2)))
      (:if (:binary :gt (:apply p (:var i) (:icon 2)) (:icon 10)))
      (:let (:var l2) (:icon 10)))
     (:line 2614 (:if (:binary :eq (:var l1) (:var l2))) (:goto 2640))
     (:line 2620 (:print (:scon "splitting not allowed.")))
     (:line 2630 (:goto 2370)) (:line 2640 (:rem "--play out split
"))
     (:line 2650
      (:let (:var i1) (:binary :plus (:var i) (:var d1))))
     (:line 2660 (:let (:apply r (:var i1)) (:icon 2)))
     (:line 2670
      (:let (:apply p (:var i1) (:icon 1))
       (:apply p (:var i) (:icon 2))))
     (:line 2680
      (:let (:apply b (:binary :plus (:var i) (:var d1)))
       (:apply b (:var i))))
     (:line 2690 (:gosub 100))
     (:line 2700 (:print (:scon "first hand receives a") :semi))
     (:line 2710 (:gosub 700))
     (:line 2720 (:let (:apply p (:var i) (:icon 2)) (:var x)))
     (:line 2730 (:gosub 300)) (:line 2740 (:print)) (:line 2750 (:gosub 100))
     (:line 2760 (:print (:scon "second hand receives a") :semi))
     (:line 2770 (:let (:var i) (:var i1))) (:line 2780 (:gosub 700))
     (:line 2790 (:let (:apply p (:var i) (:icon 2)) (:var x)))
     (:line 2800 (:gosub 300)) (:line 2810 (:print))
     (:line 2820
      (:let (:var i) (:binary :minus (:var i1) (:var d1))))
     (:line 2830
      (:if (:binary :eq (:apply p (:var i) (:icon 1)) (:icon 1)))
      (:goto 2900))
     (:line 2840 (:rem "--now play the two hands
"))
     (:line 2850
      (:print (:scon "hand") :semi
       (:binary :minus (:icon 1) (:binary :gt (:var i) (:var d1)))
       :semi))
     (:line 2860 (:gosub 800))
     (:line 2870
      (:let (:var i) (:binary :plus (:var i) (:var d1))))
     (:line 2880 (:if (:binary :eq (:var i) (:var i1))) (:goto 2850))
     (:line 2890
      (:let (:var i) (:binary :minus (:var i1) (:var d1))))
     (:line 2900 (:next i)) (:line 2910 (:gosub 300))
     (:line 2920 (:rem "--test for playing dealer's hand
"))
     (:line 2930 (:for i (:icon 1) (:var n) nil))
     (:line 2940
      (:if
       (:lazy-binary :or (:binary :gt (:apply r (:var i)) (:icon 0))
        (:binary :gt (:apply r (:binary :plus (:var i) (:var d1)))
         (:icon 0))))
      (:goto 3010))
     (:line 2950 (:next i))
     (:line 2960 (:print (:scon "dealer had a") :semi))
     (:line 2970 (:let (:var x) (:apply p (:var d1) (:icon 2))))
     (:line 2980 (:gosub 700)) (:line 2990 (:print (:scon " concealed.")))
     (:line 3000 (:goto 3140))
     (:line 3010
      (:print (:scon "dealer has a") :semi
       (:apply mid$ (:var d$)
        (:binary :minus
         (:binary :mul (:icon 3) (:apply p (:var d1) (:icon 2)))
         (:icon 2))
        (:icon 3))
       :semi (:scon " concealed ") :semi))
     (:line 3020 (:let (:var i) (:var d1)))
     (:line 3030 (:let (:var aa) (:apply q (:var i)))
      (:gosub 3400))
     (:line 3035 (:print (:scon "for a total of") :semi (:var aa)))
     (:line 3040 (:if (:binary :gt (:var aa) (:icon 16))) (:goto 3130))
     (:line 3050 (:print (:scon "draws") :semi)) (:line 3060 (:gosub 100))
     (:line 3070 (:gosub 750)) (:line 3080 (:gosub 1100))
     (:line 3090 (:let (:var aa) (:var q)) (:gosub 3400))
     (:line 3095
      (:if
       (:lazy-binary :and (:binary :gt (:var q) (:icon 0))
        (:binary :lt (:var aa) (:icon 17))))
      (:goto 3060))
     (:line 3100
      (:let (:apply q (:var i))
       (:binary :minus (:var q)
        (:binary :div (:binary :lt (:var q) (:icon 0)) (:icon 2)))))
     (:line 3110 (:if (:binary :lt (:var q) (:icon 0))) (:goto 3140))
     (:line 3120 (:let (:var aa) (:var q)) (:gosub 3400))
     (:line 3125 (:print (:scon "---total is") :semi (:var aa)))
     (:line 3130 (:print)) (:line 3140 (:rem "--tally the result
"))
     (:line 3150 (:rem " 
"))
     (:line 3160 (:let (:var z$) (:scon "loses pushes wins ")))
     (:line 3165 (:print)) (:line 3170 (:for i (:icon 1) (:var n) nil))
     (:line 3180 (:let (:var aa) (:apply q (:var i)))
      (:gosub 3400))
     (:line 3182
      (:let (:var ab)
       (:apply q (:binary :plus (:var i) (:var d1))))
      (:gosub 3410))
     (:line 3184 (:let (:var ac) (:apply q (:var d1)))
      (:gosub 3420))
     (:line 3186
      (:let (:apply s (:var i))
       (:binary :plus
        (:binary :plus (:apply s (:var i))
         (:binary :mul (:apply b (:var i))
          (:apply sgn (:binary :minus (:var aa) (:var ac)))))
        (:binary :mul (:apply b (:binary :plus (:var i) (:var d1)))
         (:apply sgn (:binary :minus (:var ab) (:var ac)))))))
     (:line 3188
      (:let (:apply b (:binary :plus (:var i) (:var d1)))
       (:icon 0)))
     (:line 3200 (:print (:scon "player") :semi (:var i) :semi))
     (:line 3210
      (:print
       (:apply mid$ (:var z$)
        (:binary :plus
         (:binary :mul (:apply sgn (:apply s (:var i))) (:icon 6))
         (:icon 7))
        (:icon 6))
       :semi (:scon " ") :semi))
     (:line 3220 (:if (:binary :ne (:apply s (:var i)) (:icon 0)))
      (:goto 3250))
     (:line 3230 (:print (:scon "      ") :semi)) (:line 3240 (:goto 3260))
     (:line 3250 (:print (:apply abs (:apply s (:var i))) :semi))
     (:line 3260
      (:let (:apply t (:var i))
       (:binary :plus (:apply t (:var i))
        (:apply s (:var i)))))
     (:line 3270 (:print (:scon "total=") :semi (:apply t (:var i))))
     (:line 3280 (:gosub 1200))
     (:line 3290
      (:let (:apply t (:var d1))
       (:binary :minus (:apply t (:var d1))
        (:apply s (:var i)))))
     (:line 3300
      (:let (:var i) (:binary :plus (:var i) (:var d1))))
     (:line 3310 (:gosub 1200))
     (:line 3320
      (:let (:var i) (:binary :minus (:var i) (:var d1))))
     (:line 3330 (:next i))
     (:line 3340
      (:print (:scon "dealer's total=") :semi (:apply t (:var d1))))
     (:line 3345 (:print)) (:line 3350 (:gosub 1200)) (:line 3360 (:goto 1810))
     (:line 3400
      (:let (:var aa)
       (:binary :plus (:var aa)
        (:binary :mul (:icon 11) (:binary :ge (:var aa) (:icon 22)))))
      (:return))
     (:line 3410
      (:let (:var ab)
       (:binary :plus (:var ab)
        (:binary :mul (:icon 11) (:binary :ge (:var ab) (:icon 22)))))
      (:return))
     (:line 3420
      (:let (:var ac)
       (:binary :plus (:var ac)
        (:binary :mul (:icon 11) (:binary :ge (:var ac) (:icon 22)))))
      (:return)))))



(defvar *bombardment*
  '(((:line 10
      (:print (:apply tab (:icon 33)) :semi (:scon "bombardment")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print))
     (:line 100
      (:print (:scon "you are on a battlefield with 4 platoons and you")))
     (:line 110
      (:print (:scon "have 25 outposts available where they may be placed.")))
     (:line 120
      (:print (:scon "you can only place one platoon at any one outpost.")))
     (:line 130
      (:print (:scon "the computer does the same with its four platoons.")))
     (:line 135 (:print))
     (:line 140
      (:print (:scon "the object of the game is to fire missles at the")))
     (:line 150
      (:print
       (:scon "outposts of the computer.  it will do the same to you.")))
     (:line 160
      (:print (:scon "the one who destroys all four of the enemy's platoons")))
     (:line 170 (:print (:scon "first is the winner."))) (:line 180 (:print))
     (:line 190
      (:print
       (:scon "good luck... and tell us where you want the bodies sent!")))
     (:line 200 (:print))
     (:line 210
      (:print (:scon "tear off matrix and use it to check off the numbers.")))
     (:line 220 (:for r (:icon 1) (:icon 5) nil) (:print) (:next r))
     (:line 260 (:dim ((:dimd m (:icon 100)))))
     (:line 270 (:for r (:icon 1) (:icon 5) nil))
     (:line 280
      (:let (:var i)
       (:binary :plus
        (:binary :mul (:binary :minus (:var r) (:icon 1)) (:icon 5))
        (:icon 1))))
     (:line 290
      (:print (:var i) :comma (:binary :plus (:var i) (:icon 1)) :comma
       (:binary :plus (:var i) (:icon 2)) :comma
       (:binary :plus (:var i) (:icon 3)) :comma
       (:binary :plus (:var i) (:icon 4))))
     (:line 300 (:next r))
     (:line 350 (:for r (:icon 1) (:icon 10) nil) (:print) (:next r))
     (:line 380
      (:let (:var c)
       (:binary :plus
        (:apply int (:binary :mul (:apply rnd (:icon 1)) (:icon 25)))
        (:icon 1))))
     (:line 390
      (:let (:var d)
       (:binary :plus
        (:apply int (:binary :mul (:apply rnd (:icon 1)) (:icon 25)))
        (:icon 1))))
     (:line 400
      (:let (:var e)
       (:binary :plus
        (:apply int (:binary :mul (:apply rnd (:icon 1)) (:icon 25)))
        (:icon 1))))
     (:line 410
      (:let (:var f)
       (:binary :plus
        (:apply int (:binary :mul (:apply rnd (:icon 1)) (:icon 25)))
        (:icon 1))))
     (:line 420 (:if (:binary :eq (:var c) (:var d))) (:goto 390))
     (:line 430 (:if (:binary :eq (:var c) (:var e))) (:goto 400))
     (:line 440 (:if (:binary :eq (:var c) (:var f))) (:goto 410))
     (:line 450 (:if (:binary :eq (:var d) (:var e))) (:goto 400))
     (:line 460 (:if (:binary :eq (:var d) (:var f))) (:goto 410))
     (:line 470 (:if (:binary :eq (:var e) (:var f))) (:goto 410))
     (:line 480 (:print (:scon "what are your four positions") :semi))
     (:line 490
      (:input nil ((:var g) (:var h) (:var k) (:var l))))
     (:line 495 (:print))
     (:line 500 (:print (:scon "where do you wish to fire your missle") :semi))
     (:line 510 (:input nil ((:var y))))
     (:line 520 (:if (:binary :eq (:var y) (:var c))) (:goto 710))
     (:line 530 (:if (:binary :eq (:var y) (:var d))) (:goto 710))
     (:line 540 (:if (:binary :eq (:var y) (:var e))) (:goto 710))
     (:line 550 (:if (:binary :eq (:var y) (:var f))) (:goto 710))
     (:line 560 (:goto 630))
     (:line 570
      (:let (:var m)
       (:binary :plus
        (:apply int (:binary :mul (:apply rnd (:icon 1)) (:icon 25)))
        (:icon 1))))
     (:line 575 (:goto 1160))
     (:line 580 (:if (:binary :eq (:var x) (:var g))) (:goto 920))
     (:line 590 (:if (:binary :eq (:var x) (:var h))) (:goto 920))
     (:line 600 (:if (:binary :eq (:var x) (:var l))) (:goto 920))
     (:line 610 (:if (:binary :eq (:var x) (:var k))) (:goto 920))
     (:line 620 (:goto 670))
     (:line 630 (:print (:scon "ha, ha you missed. my turn now:")))
     (:line 640 (:print) (:print) (:goto 570))
     (:line 670
      (:print (:scon "i missed you, you dirty rat. i picked") :semi
       (:var m) (:scon ". your turn:")))
     (:line 680 (:print) (:print) (:goto 500))
     (:line 710 (:let (:var q) (:binary :plus (:var q) (:icon 1))))
     (:line 720 (:if (:binary :eq (:var q) (:icon 4))) (:goto 890))
     (:line 730 (:print (:scon "you got one of my outposts!")))
     (:line 740 (:if (:binary :eq (:var q) (:icon 1))) (:goto 770))
     (:line 750 (:if (:binary :eq (:var q) (:icon 2))) (:goto 810))
     (:line 760 (:if (:binary :eq (:var q) (:icon 3))) (:goto 850))
     (:line 770 (:print (:scon "one down, three to go.")))
     (:line 780 (:print) (:print) (:goto 570))
     (:line 810 (:print (:scon "two down, two to go.")))
     (:line 820 (:print) (:print) (:goto 570))
     (:line 850 (:print (:scon "three down, one to go.")))
     (:line 860 (:print) (:print) (:goto 570))
     (:line 890
      (:print (:scon "you got me, i'm going fast. but i'll get you when")))
     (:line 900 (:print (:scon "my transisto&s recup%ra*e!")))
     (:line 910 (:goto 1235))
     (:line 920 (:let (:var z) (:binary :plus (:var z) (:icon 1))))
     (:line 930 (:if (:binary :eq (:var z) (:icon 4))) (:goto 1110))
     (:line 940
      (:print (:scon "i got you. it won't be long now. post") :semi
       (:var x) :semi (:scon "was hit.")))
     (:line 950 (:if (:binary :eq (:var z) (:icon 1))) (:goto 990))
     (:line 960 (:if (:binary :eq (:var z) (:icon 2))) (:goto 1030))
     (:line 970 (:if (:binary :eq (:var z) (:icon 3))) (:goto 1070))
     (:line 990 (:print (:scon "you have only three outposts left.")))
     (:line 1000 (:print) (:print) (:goto 500))
     (:line 1030 (:print (:scon "you have only two outposts left.")))
     (:line 1040 (:print) (:print) (:goto 500))
     (:line 1070 (:print (:scon "you have only one outpost left.")))
     (:line 1080 (:print) (:print) (:goto 500))
     (:line 1110
      (:print (:scon "you're dead. your last outpost was at") :semi
       (:var x) :semi (:scon ". ha, ha, ha.")))
     (:line 1120 (:print (:scon "better luck next time.")))
     (:line 1150 (:goto 1235))
     (:line 1160 (:let (:var p) (:binary :plus (:var p) (:icon 1))))
     (:line 1170 (:let (:var n) (:binary :minus (:var p) (:icon 1))))
     (:line 1180 (:for t (:icon 1) (:var n) nil))
     (:line 1190 (:if (:binary :eq (:var m) (:apply m (:var t))))
      (:goto 570))
     (:line 1200 (:next t)) (:line 1210 (:let (:var x) (:var m)))
     (:line 1220 (:let (:apply m (:var p)) (:var m)))
     (:line 1230 (:goto 580)) (:line 1235 (:end)))))



(defvar *bombsaway*
  '(((:line 8 (:print (:scon "you are a pilot in a world war ii bomber.")))
     (:line 10
      (:input "what side -- italy(1), allies(2), japan(3), germany(4)"
       ((:var a))))
     (:line 20
      (:if
       (:lazy-binary :and (:binary :gt (:var a) (:icon 0))
        (:binary :lt (:var a) (:icon 5))))
      (:goto 25))
     (:line 22 (:print (:scon "try again...")) (:goto 10))
     (:line 25 (:on-goto (:var a) (30 110 200 220)))
     (:line 30
      (:input "your target -- albania(1), greece(2), north africa(3)"
       ((:var b))))
     (:line 40
      (:if
       (:lazy-binary :and (:binary :gt (:var b) (:icon 0))
        (:binary :lt (:var b) (:icon 4))))
      (:goto 45))
     (:line 42 (:print (:scon "try again...")) (:goto 30))
     (:line 45 (:print) (:on-goto (:var b) (50 80 90)))
     (:line 50
      (:print (:scon "should be easy -- you're flying a nazi-made plane.")))
     (:line 60 (:goto 280))
     (:line 80 (:print (:scon "be careful!!!")) (:goto 280))
     (:line 90 (:print (:scon "you're going for the oil, eh?")) (:goto 280))
     (:line 110
      (:input "aircraft -- liberator(1), b-29(2), b-17(3), lancaster(4)"
       ((:var g))))
     (:line 120
      (:if
       (:lazy-binary :and (:binary :gt (:var g) (:icon 0))
        (:binary :lt (:var g) (:icon 5))))
      (:goto 125))
     (:line 122 (:print (:scon "try again...")) (:goto 110))
     (:line 125 (:print) (:on-goto (:var g) (130 150 170 190)))
     (:line 130
      (:print (:scon "you've got 2 tons of bombs flying for ploesti."))
      (:goto 280))
     (:line 150 (:print (:scon "you're dumping the a-bomb on hiroshima."))
      (:goto 280))
     (:line 170 (:print (:scon "you're chasing the bismark in the north sea."))
      (:goto 280))
     (:line 190
      (:print
       (:scon "you're busting a german heavy water plant in the ruhr.")))
     (:line 195 (:goto 280))
     (:line 200
      (:print
       (:scon "you're flying a kamikaze mission over the uss lexington.")))
     (:line 205 (:input "your first kamikaze mission(y or n)" ((:var f$))))
     (:line 207 (:if (:binary :eq (:var f$) (:scon "n")))
      (:let (:var s) (:icon 0)) (:goto 358))
     (:line 210 (:print)
      (:if (:binary :gt (:apply rnd (:icon 1)) (:fcon 0.65))) (:goto 325))
     (:line 215 (:goto 380))
     (:line 220
      (:print (:scon "a nazi, eh?  oh well.  are you going for russia(1),")))
     (:line 230 (:input "england(2), or france(3)" ((:var m)))
      (:if
       (:lazy-binary :and (:binary :gt (:var m) (:icon 0))
        (:binary :lt (:var m) (:icon 4))))
      (:goto 235))
     (:line 232 (:print (:scon "try again...")) (:goto 220))
     (:line 235 (:print) (:on-goto (:var m) (250 260 270)))
     (:line 250 (:print (:scon "you're nearing stalingrad.")) (:goto 280))
     (:line 260
      (:print (:scon "nearing london.  be careful, they've got radar."))
      (:goto 280))
     (:line 270
      (:print
       (:scon "nearing versailles.  duck soup.  they're nearly defenseless.")))
     (:line 280 (:print))
     (:line 285 (:input "how many missions have you flown" ((:var d))))
     (:line 290 (:if (:binary :lt (:var d) (:icon 160))) (:goto 300))
     (:line 292 (:print (:scon "missions, not miles...")))
     (:line 295 (:print (:scon "150 missions is high even for old-timers.")))
     (:line 297 (:print (:scon "now then, ") :semi) (:goto 285))
     (:line 300 (:print) (:if (:binary :lt (:var d) (:icon 100)))
      (:goto 310))
     (:line 305 (:print (:scon "that's pushing the odds!")) (:goto 320))
     (:line 310 (:if (:binary :lt (:var d) (:icon 25)))
      (:print (:scon "fresh out of training, eh?")))
     (:line 320 (:print)
      (:if
       (:binary :lt (:var d)
        (:binary :mul (:icon 160) (:apply rnd (:icon 1)))))
      (:goto 330))
     (:line 325
      (:print (:scon "direct hit!!!! ")
       (:apply int (:binary :mul (:icon 100) (:apply rnd (:icon 1))))
       (:scon "killed.")))
     (:line 327 (:print (:scon "mission successful.")) (:goto 390))
     (:line 330
      (:print (:scon "missed target by")
       (:apply int
        (:binary :plus (:icon 2)
         (:binary :mul (:icon 30) (:apply rnd (:icon 1)))))
       (:scon "miles!")))
     (:line 335 (:print (:scon "now you're really in for it !!")) (:print))
     (:line 340
      (:input "does the enemy have guns(1), missiles(2), or both(3)"
       ((:var r))))
     (:line 345
      (:if
       (:lazy-binary :and (:binary :gt (:var r) (:icon 0))
        (:binary :lt (:var r) (:icon 4))))
      (:goto 350))
     (:line 347 (:print (:scon "try again...")) (:goto 340))
     (:line 350 (:print) (:let (:var t) (:icon 0))
      (:if (:binary :eq (:var r) (:icon 2))) (:goto 360))
     (:line 355
      (:input "what's the percent hit rate of enemy gunners (10 to 50)"
       ((:var s))))
     (:line 357 (:if (:binary :lt (:var s) (:icon 10)))
      (:print (:scon "you lie, but you'll pay...")) (:goto 380))
     (:line 358 (:print))
     (:line 360 (:print) (:if (:binary :gt (:var r) (:icon 1)))
      (:let (:var t) (:icon 35)))
     (:line 365
      (:if
       (:binary :gt (:binary :plus (:var s) (:var t))
        (:binary :mul (:icon 100) (:apply rnd (:icon 1)))))
      (:goto 380))
     (:line 370 (:print (:scon "you made it through tremendous flak!!"))
      (:goto 390))
     (:line 380 (:print (:scon "* * * * boom * * * *")))
     (:line 384 (:print (:scon "you have been shot down.....")))
     (:line 386
      (:print (:scon "dearly beloved, we are gathered here today to pay our")))
     (:line 387 (:print (:scon "last tribute...")))
     (:line 390 (:print) (:print) (:print)
      (:input "another mission (y or n)" ((:var u$))))
     (:line 395 (:if (:binary :eq (:var u$) (:scon "y"))) (:goto 8))
     (:line 400 (:print (:scon "chicken !!!")) (:print) (:end)))))



(defvar *bounce*
  '(((:line 10 (:print (:apply tab (:icon 33)) :semi (:scon "bounce")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print))
     (:line 90 (:dim ((:dimd t (:icon 20)))))
     (:line 100
      (:print (:scon "this simulation lets you specify the initial velocity")))
     (:line 110
      (:print (:scon "of a ball thrown straight up, and the coefficient of")))
     (:line 120
      (:print
       (:scon "elasticity of the ball.  please use a decimal fraction")))
     (:line 130 (:print (:scon "coefficiency (less than 1).")))
     (:line 131 (:print))
     (:line 132
      (:print (:scon "you also specify the time increment to be used in")))
     (:line 133
      (:print (:scon "'strobing' the ball's flight (try .1 initially).")))
     (:line 134 (:print))
     (:line 135 (:input "time increment (sec)" ((:var s2))))
     (:line 140 (:print)) (:line 150 (:input "velocity (fps)" ((:var v))))
     (:line 160 (:print)) (:line 170 (:input "coefficient" ((:var c))))
     (:line 180 (:print)) (:line 182 (:print (:scon "feet")))
     (:line 184 (:print))
     (:line 186
      (:let (:var s1)
       (:apply int
        (:binary :div (:icon 70)
         (:binary :div (:var v)
          (:binary :mul (:icon 16) (:var s2)))))))
     (:line 190 (:for i (:icon 1) (:var s1) nil))
     (:line 200
      (:let (:apply t (:var i))
       (:binary :div
        (:binary :mul (:var v)
         (:exp (:var c) (:binary :minus (:var i) (:icon 1))))
        (:icon 16))))
     (:line 210 (:next i))
     (:line 220
      (:for h
       (:apply int
        (:binary :plus
         (:binary :plus
          (:binary :mul (:uminus (:icon 16))
           (:exp (:binary :div (:var v) (:icon 32)) (:icon 2)))
          (:binary :div (:exp (:var v) (:icon 2)) (:icon 32)))
         (:fcon 0.5)))
       (:icon 0) (:uminus (:fcon 0.5))))
     (:line 221 (:if (:binary :ne (:apply int (:var h)) (:var h)))
      (:goto 225))
     (:line 222 (:print (:var h) :semi))
     (:line 225 (:let (:var l) (:icon 0)))
     (:line 230 (:for i (:icon 1) (:var s1) nil))
     (:line 240
      (:for t (:icon 0) (:apply t (:var i)) (:var s2)))
     (:line 245 (:let (:var l) (:binary :plus (:var l) (:var s2))))
     (:line 250
      (:if
       (:binary :gt
        (:apply abs
         (:binary :minus (:var h)
          (:binary :plus
           (:binary :mul (:binary :mul (:fcon 0.5) (:uminus (:icon 32)))
            (:exp (:var t) (:icon 2)))
           (:binary :mul
            (:binary :mul (:var v)
             (:exp (:var c) (:binary :minus (:var i) (:icon 1))))
            (:var t)))))
        (:fcon 0.25)))
      (:goto 270))
     (:line 260
      (:print (:apply tab (:binary :div (:var l) (:var s2))) :semi
       (:scon "0") :semi))
     (:line 270 (:next t))
     (:line 275
      (:let (:var t)
       (:binary :div (:apply t (:binary :plus (:var i) (:icon 1)))
        (:icon 2))))
     (:line 276
      (:if
       (:binary :lt
        (:binary :plus
         (:binary :mul (:uminus (:icon 16)) (:exp (:var t) (:icon 2)))
         (:binary :mul
          (:binary :mul (:var v)
           (:exp (:var c) (:binary :minus (:var i) (:icon 1))))
          (:var t)))
        (:var h)))
      (:goto 290))
     (:line 280 (:next i)) (:line 290 (:print)) (:line 300 (:next h))
     (:line 310 (:print (:apply tab (:icon 1)) :semi))
     (:line 320
      (:for i (:icon 1)
       (:binary :plus
        (:binary :div (:apply int (:binary :plus (:var l) (:icon 1)))
         (:var s2))
        (:icon 1))
       nil))
     (:line 330 (:print (:scon ".") :semi)) (:line 340 (:next i))
     (:line 350 (:print)) (:line 355 (:print (:scon " 0") :semi))
     (:line 360
      (:for i (:icon 1)
       (:apply int (:binary :plus (:var l) (:fcon 0.9995))) nil))
     (:line 380
      (:print
       (:apply tab
        (:apply int (:binary :div (:var i) (:var s2))))
       :semi (:var i) :semi))
     (:line 390 (:next i)) (:line 400 (:print))
     (:line 410
      (:print
       (:apply tab
        (:binary :minus
         (:binary :div (:apply int (:binary :plus (:var l) (:icon 1)))
          (:binary :mul (:icon 2) (:var s2)))
         (:icon 2)))
       :semi (:scon "seconds")))
     (:line 420 (:print)) (:line 430 (:goto 135)) (:line 440 (:end)))))



(defvar *bowling*
  '(((:line 10 (:print (:apply tab (:icon 34)) :semi (:scon "bowl")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print))
     (:line 270
      (:dim ((:dimd c (:icon 15)) (:dimd2 a (:icon 100) (:icon 6)))))
     (:line 360 (:print (:scon "welcome to the alley")))
     (:line 450 (:print (:scon "bring your friends")))
     (:line 540 (:print (:scon "okay let's first get acquainted")))
     (:line 630 (:print (:scon "")))
     (:line 720 (:print (:scon "the instructions (y/n)")))
     (:line 810 (:input nil ((:var z$))))
     (:line 900 (:if (:binary :eq (:var z$) (:scon "y"))) (:goto 990))
     (:line 960 (:if (:binary :eq (:var z$) (:scon "n"))) (:goto 1530))
     (:line 990
      (:print
       (:scon "the game of bowling takes mind and skill.during the game")))
     (:line 1080
      (:print (:scon "the computer will keep score.you may compete with")))
     (:line 1170
      (:print
       (:scon "other players[up to four].you will be playing ten frames")))
     (:line 1260
      (:print
       (:scon "on the pin diagram 'o' means the pin is down...'+' means the")))
     (:line 1350
      (:print
       (:scon "pin is standing.after the game the computer will show your")))
     (:line 1440 (:print (:scon "scores .")))
     (:line 1530 (:print (:scon "first of all...how many are playing") :semi))
     (:line 1620 (:input nil ((:var r)))) (:line 1710 (:print))
     (:line 1800 (:print (:scon "very good...")))
     (:line 1890 (:for i (:icon 1) (:icon 100) nil)
      (:for j (:icon 1) (:icon 6) nil)
      (:let (:apply a (:var i) (:var j)) (:icon 0)) (:next j)
      (:next i))
     (:line 1980 (:let (:var f) (:icon 1)))
     (:line 2070 (:for p (:icon 1) (:var r) nil))
     (:line 2160 (:let (:var m) (:icon 0)))
     (:line 2250 (:let (:var b) (:icon 1)))
     (:line 2340 (:let (:var m) (:icon 0)) (:let (:var q) (:icon 0)))
     (:line 2430 (:for i (:icon 1) (:icon 15) nil)
      (:let (:apply c (:var i)) (:icon 0)) (:next i))
     (:line 2520 (:rem " ark ball generator using mod '15' system
"))
     (:line 2610 (:print (:scon "type roll to get the ball going.")))
     (:line 2700 (:input nil ((:var n$))))
     (:line 2790 (:let (:var k) (:icon 0)) (:let (:var d) (:icon 0)))
     (:line 2880 (:for i (:icon 1) (:icon 20) nil))
     (:line 2970
      (:let (:var x)
       (:apply int (:binary :mul (:apply rnd (:icon 1)) (:icon 100)))))
     (:line 3060 (:for j (:icon 1) (:icon 10) nil))
     (:line 3150
      (:if (:binary :lt (:var x) (:binary :mul (:icon 15) (:var j))))
      (:goto 3330))
     (:line 3240 (:next j))
     (:line 3330
      (:let
       (:apply c
        (:binary :minus (:binary :mul (:icon 15) (:var j)) (:var x)))
       (:icon 1)))
     (:line 3420 (:next i)) (:line 3510 (:rem " ark pin diagram
"))
     (:line 3600
      (:print (:scon "player:") (:var p) :semi (:scon "frame:") :semi
       (:var f) (:scon "ball:") (:var b)))
     (:line 3690 (:for i (:icon 0) (:icon 3) nil)) (:line 3780 (:print))
     (:line 3870
      (:for j (:icon 1) (:binary :minus (:icon 4) (:var i)) nil))
     (:line 3960 (:let (:var k) (:binary :plus (:var k) (:icon 1))))
     (:line 4050 (:if (:binary :eq (:apply c (:var k)) (:icon 1)))
      (:goto 4320))
     (:line 4140
      (:print (:apply tab (:var i)) :semi (:scon "+ ") :semi))
     (:line 4230 (:goto 4410))
     (:line 4320
      (:print (:apply tab (:var i)) :semi (:scon "o ") :semi))
     (:line 4410 (:next j)) (:line 4500 (:next i))
     (:line 4590 (:print (:scon ""))) (:line 4680 (:rem " ark roll analysis
"))
     (:line 4770 (:for i (:icon 1) (:icon 10) nil))
     (:line 4860
      (:let (:var d)
       (:binary :plus (:var d) (:apply c (:var i)))))
     (:line 4950 (:next i))
     (:line 5040
      (:if (:binary :ne (:binary :minus (:var d) (:var m)) (:icon 0)))
      (:goto 5220))
     (:line 5130 (:print (:scon "gutter!!")))
     (:line 5220
      (:if
       (:lazy-binary :or (:binary :ne (:var b) (:icon 1))
        (:binary :ne (:var d) (:icon 10))))
      (:goto 5490))
     (:line 5310 (:print (:scon "strike!!!!!")))
     (:line 5400 (:let (:var q) (:icon 3)))
     (:line 5490
      (:if
       (:lazy-binary :or (:binary :ne (:var b) (:icon 2))
        (:binary :ne (:var d) (:icon 10))))
      (:goto 5760))
     (:line 5580 (:print (:scon "spare!!!!")))
     (:line 5670 (:let (:var q) (:icon 2)))
     (:line 5760
      (:if
       (:lazy-binary :or (:binary :ne (:var b) (:icon 2))
        (:binary :ge (:var d) (:icon 10))))
      (:goto 6030))
     (:line 5850 (:print (:scon "error!!!")))
     (:line 5940 (:let (:var q) (:icon 1)))
     (:line 6030
      (:if
       (:lazy-binary :or (:binary :ne (:var b) (:icon 1))
        (:binary :ge (:var d) (:icon 10))))
      (:goto 6210))
     (:line 6120 (:print (:scon "roll your 2nd ball")))
     (:line 6210 (:rem " ark storage of the scores
")) (:line 6300 (:print))
     (:line 6390
      (:let
       (:apply a (:binary :mul (:var f) (:var p)) (:var b))
       (:var d)))
     (:line 6480 (:if (:binary :eq (:var b) (:icon 2))) (:goto 7020))
     (:line 6570 (:let (:var b) (:icon 2)))
     (:line 6660 (:let (:var m) (:var d)))
     (:line 6750 (:if (:binary :eq (:var q) (:icon 3))) (:goto 6210))
     (:line 6840
      (:let
       (:apply a (:binary :mul (:var f) (:var p)) (:var b))
       (:binary :minus (:var d) (:var m))))
     (:line 6930 (:if (:binary :eq (:var q) (:icon 0))) (:goto 2520))
     (:line 7020
      (:let (:apply a (:binary :mul (:var f) (:var p)) (:icon 3))
       (:var q)))
     (:line 7110 (:next p))
     (:line 7200 (:let (:var f) (:binary :plus (:var f) (:icon 1))))
     (:line 7290 (:if (:binary :lt (:var f) (:icon 11))) (:goto 2070))
     (:line 7295 (:print (:scon "frames")))
     (:line 7380 (:for i (:icon 1) (:icon 10) nil))
     (:line 7470 (:print (:var i) :semi)) (:line 7560 (:next i))
     (:line 7650 (:print)) (:line 7740 (:for p (:icon 1) (:var r) nil))
     (:line 7830 (:for i (:icon 1) (:icon 3) nil))
     (:line 7920 (:for j (:icon 1) (:icon 10) nil))
     (:line 8010
      (:print
       (:apply a (:binary :mul (:var j) (:var p)) (:var i))
       :semi))
     (:line 8100 (:next j)) (:line 8105 (:print))
     (:line 8190 (:next i)) (:line 8280 (:print))
     (:line 8370 (:next p))
     (:line 8460 (:print (:scon "do you want another game")))
     (:line 8550 (:input nil ((:var a$))))
     (:line 8640
      (:if
       (:binary :eq (:apply left$ (:var a$) (:icon 1)) (:scon "y")))
      (:goto 2610))
     (:line 8730 (:end)))))



(defvar *boxing*
  '(((:line 1 (:print (:apply tab (:icon 33)) :semi (:scon "boxing")))
     (:line 2
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 3 (:print) (:print) (:print))
     (:line 4
      (:print (:scon "boxing olympic style (3 rounds -- 2 out of 3 wins)")))
     (:line 5 (:let (:var j) (:icon 0)))
     (:line 6 (:let (:var l) (:icon 0))) (:line 8 (:print))
     (:line 10 (:print (:scon "what is your opponent's name") :semi))
     (:line 20 (:input nil ((:var j$))))
     (:line 30 (:print (:scon "input your man's name") :semi))
     (:line 40 (:input nil ((:var l$))))
     (:line 50
      (:print
       (:scon
        "different punches are: (1) full swing; (2) hook; (3) uppercut; (4) jab.")))
     (:line 60 (:print (:scon "what is your mans best") :semi))
     (:line 64 (:input nil ((:var b))))
     (:line 70 (:print (:scon "what is his vulnerability") :semi))
     (:line 80 (:input nil ((:var d))))
     (:line 90
      (:let (:var b1)
       (:apply int
        (:binary :plus (:binary :mul (:icon 4) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 100
      (:let (:var d1)
       (:apply int
        (:binary :plus (:binary :mul (:icon 4) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 110 (:if (:binary :eq (:var b1) (:var d1))) (:goto 90))
     (:line 120
      (:print (:var j$) :semi (:scon "'s advantage is") :semi (:var b1)
       :semi (:scon "and vulnerability is secret."))
      (:print))
     (:line 130 (:for r (:icon 1) (:icon 3) nil))
     (:line 140 (:if (:binary :ge (:var j) (:icon 2))) (:goto 1040))
     (:line 150 (:if (:binary :ge (:var l) (:icon 2))) (:goto 1060))
     (:line 160 (:let (:var x) (:icon 0)))
     (:line 170 (:let (:var y) (:icon 0)))
     (:line 180
      (:print (:scon "round") :semi (:var r) :semi (:scon "begins...")))
     (:line 185 (:for r1 (:icon 1) (:icon 7) nil))
     (:line 190
      (:let (:var i)
       (:apply int
        (:binary :plus (:binary :mul (:icon 10) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 200 (:if (:binary :gt (:var i) (:icon 5))) (:goto 600))
     (:line 210 (:print (:var l$) :semi (:scon "'s punch") :semi))
     (:line 220 (:input nil ((:var p))))
     (:line 221 (:if (:binary :eq (:var p) (:var b))) (:goto 225))
     (:line 222 (:goto 230))
     (:line 225 (:let (:var x) (:binary :plus (:var x) (:icon 2))))
     (:line 230 (:if (:binary :eq (:var p) (:icon 1))) (:goto 340))
     (:line 240 (:if (:binary :eq (:var p) (:icon 2))) (:goto 450))
     (:line 250 (:if (:binary :eq (:var p) (:icon 3))) (:goto 520))
     (:line 270
      (:print (:var l$) :semi (:scon " jabs at ") :semi (:var j$)
       (:scon "'s head ") :semi))
     (:line 271 (:if (:binary :eq (:var d1) (:icon 4))) (:goto 290))
     (:line 275
      (:let (:var c)
       (:apply int
        (:binary :plus (:binary :mul (:icon 8) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 280 (:if (:binary :lt (:var c) (:icon 4))) (:goto 310))
     (:line 290 (:let (:var x) (:binary :plus (:var x) (:icon 3))))
     (:line 300 (:goto 950)) (:line 310 (:print (:scon "it's blocked.")))
     (:line 330 (:goto 950))
     (:line 340 (:print (:var l$) (:scon " swings and ") :semi))
     (:line 341 (:if (:binary :eq (:var d1) (:icon 4))) (:goto 410))
     (:line 345
      (:let (:var x3)
       (:apply int
        (:binary :plus (:binary :mul (:icon 30) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 350 (:if (:binary :lt (:var x3) (:icon 10))) (:goto 410))
     (:line 360 (:print (:scon "he misses ") :semi)) (:line 370 (:print))
     (:line 375 (:if (:binary :eq (:var x) (:icon 1))) (:goto 950))
     (:line 380 (:print)) (:line 390 (:print)) (:line 400 (:goto 300))
     (:line 410 (:print (:scon "he connects!")))
     (:line 420 (:if (:binary :gt (:var x) (:icon 35))) (:goto 980))
     (:line 425 (:let (:var x) (:binary :plus (:var x) (:icon 15))))
     (:line 440 (:goto 300))
     (:line 450
      (:print (:var l$) :semi (:scon " gives the hook... ") :semi))
     (:line 455 (:if (:binary :eq (:var d1) (:icon 2))) (:goto 480))
     (:line 460
      (:let (:var h1)
       (:apply int
        (:binary :plus (:binary :mul (:icon 2) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 470 (:if (:binary :eq (:var h1) (:icon 1))) (:goto 500))
     (:line 475 (:print (:scon "connects...")))
     (:line 480 (:let (:var x) (:binary :plus (:var x) (:icon 7))))
     (:line 490 (:goto 300))
     (:line 500 (:print (:scon "but it's blocked!!!!!!!!!!!!!")))
     (:line 510 (:goto 300))
     (:line 520 (:print (:var l$) (:scon " tries an uppercut ") :semi))
     (:line 530 (:if (:binary :eq (:var d1) (:icon 3))) (:goto 570))
     (:line 540
      (:let (:var d5)
       (:apply int
        (:binary :plus (:binary :mul (:icon 100) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 550 (:if (:binary :lt (:var d5) (:icon 51))) (:goto 570))
     (:line 560 (:print (:scon "and it's blocked (lucky block!)")))
     (:line 565 (:goto 300)) (:line 570 (:print (:scon "and he connects!")))
     (:line 580 (:let (:var x) (:binary :plus (:var x) (:icon 4))))
     (:line 590 (:goto 300))
     (:line 600
      (:let (:var j7)
       (:apply int
        (:binary :plus (:binary :mul (:icon 4) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 601 (:if (:binary :eq (:var j7) (:var b1))) (:goto 605))
     (:line 602 (:goto 610))
     (:line 605 (:let (:var y) (:binary :plus (:var y) (:icon 2))))
     (:line 610 (:if (:binary :eq (:var j7) (:icon 1))) (:goto 720))
     (:line 620 (:if (:binary :eq (:var j7) (:icon 2))) (:goto 810))
     (:line 630 (:if (:binary :eq (:var j7) (:icon 3))) (:goto 860))
     (:line 640 (:print (:var j$) :semi (:scon " jabs and ") :semi))
     (:line 645 (:if (:binary :eq (:var d) (:icon 4))) (:goto 700))
     (:line 650
      (:let (:var z4)
       (:apply int
        (:binary :plus (:binary :mul (:icon 7) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 655 (:if (:binary :gt (:var z4) (:icon 4))) (:goto 690))
     (:line 660 (:print (:scon "it's blocked!"))) (:line 670 (:goto 300))
     (:line 690 (:print (:scon " blood spills !!!")))
     (:line 700 (:let (:var y) (:binary :plus (:var y) (:icon 5))))
     (:line 710 (:goto 300))
     (:line 720 (:print (:var j$) (:scon " takes a full swing and") :semi))
     (:line 730 (:if (:binary :eq (:var d) (:icon 1))) (:goto 770))
     (:line 740
      (:let (:var r6)
       (:apply int
        (:binary :plus (:binary :mul (:icon 60) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 745 (:if (:binary :lt (:var r6) (:icon 30))) (:goto 770))
     (:line 750 (:print (:scon " it's blocked!"))) (:line 760 (:goto 300))
     (:line 770 (:print (:scon " pow!!!!! he hits him right in the face!")))
     (:line 780 (:if (:binary :gt (:var y) (:icon 35))) (:goto 1010))
     (:line 790 (:let (:var y) (:binary :plus (:var y) (:icon 15))))
     (:line 800 (:goto 300))
     (:line 810
      (:print (:var j$) :semi (:scon " gets ") :semi (:var l$) :semi
       (:scon " in the jaw (ouch!)")))
     (:line 820 (:let (:var y) (:binary :plus (:var y) (:icon 7))))
     (:line 830 (:print (:scon "....and again!")))
     (:line 835 (:let (:var y) (:binary :plus (:var y) (:icon 5))))
     (:line 840 (:if (:binary :gt (:var y) (:icon 35))) (:goto 1010))
     (:line 850 (:print))
     (:line 860
      (:print (:var l$) :semi
       (:scon " is attacked by an uppercut (oh,oh)...")))
     (:line 865 (:if (:binary :eq (:var d) (:icon 3))) (:goto 890))
     (:line 870
      (:let (:var q4)
       (:apply int
        (:binary :plus (:binary :mul (:icon 200) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 880 (:if (:binary :gt (:var q4) (:icon 75))) (:goto 920))
     (:line 890
      (:print (:scon "and ") :semi (:var j$) :semi (:scon " connects...")))
     (:line 900 (:let (:var y) (:binary :plus (:var y) (:icon 8))))
     (:line 910 (:goto 300))
     (:line 920
      (:print (:scon " blocks and hits ") :semi (:var j$) :semi
       (:scon " with a hook.")))
     (:line 930 (:let (:var x) (:binary :plus (:var x) (:icon 5))))
     (:line 940 (:goto 300)) (:line 950 (:next r1))
     (:line 951 (:if (:binary :gt (:var x) (:var y))) (:goto 955))
     (:line 952 (:print)
      (:print (:var j$) (:scon " wins round") (:var r)))
     (:line 953 (:let (:var j) (:binary :plus (:var j) (:icon 1))))
     (:line 954 (:goto 960))
     (:line 955 (:print)
      (:print (:var l$) (:scon " wins round") (:var r)))
     (:line 956 (:let (:var l) (:binary :plus (:var l) (:icon 1))))
     (:line 960 (:next r))
     (:line 961 (:if (:binary :ge (:var j) (:icon 2))) (:goto 1040))
     (:line 962 (:if (:binary :ge (:var l) (:icon 2))) (:goto 1060))
     (:line 980
      (:print (:var j$) (:scon " is knocked cold and ") (:var l$)
       (:scon " is the winner and champ!") :semi))
     (:line 1000 (:goto 1080))
     (:line 1010
      (:print (:var l$) (:scon " is knocked cold and ") (:var j$)
       (:scon " is the winner and champ!") :semi))
     (:line 1030 (:goto 1000))
     (:line 1040
      (:print (:var j$) (:scon " wins (nice going,") (:var j$) :semi
       (:scon ").")))
     (:line 1050 (:goto 1000))
     (:line 1060 (:print (:var l$) (:scon " amazingly wins!!")))
     (:line 1070 (:goto 1000)) (:line 1080 (:print)) (:line 1085 (:print))
     (:line 1090 (:print (:scon "and now goodbye from the olympic arena.")))
     (:line 1100 (:print)) (:line 1110 (:end)))))



(defvar *bug*
  '(((:line 10 (:print (:apply tab (:icon 34)) :semi (:scon "bug")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print)) (:line 40 (:rem "
"))
     (:line 50 (:let (:var a) (:icon 0)) (:let (:var b) (:icon 0))
      (:let (:var h) (:icon 0)) (:let (:var l) (:icon 0))
      (:let (:var n) (:icon 0)) (:let (:var p) (:icon 0))
      (:let (:var q) (:icon 0)) (:let (:var r) (:icon 0))
      (:let (:var s) (:icon 0)) (:let (:var t) (:icon 0))
      (:let (:var u) (:icon 0)) (:let (:var v) (:icon 0))
      (:let (:var y) (:icon 0)))
     (:line 60 (:print (:scon "the game bug")))
     (:line 70 (:print (:scon "i hope you enjoy this game.")))
     (:line 80 (:print))
     (:line 90 (:print (:scon "do you want instructions") :semi))
     (:line 100 (:input nil ((:var z$))))
     (:line 110 (:if (:binary :eq (:var z$) (:scon "no"))) (:goto 300))
     (:line 120
      (:print
       (:scon "the object of bug is to finish your bug before i finish")))
     (:line 130
      (:print (:scon "mine. each number stands for a part of the bug body.")))
     (:line 140
      (:print
       (:scon "i will roll the die for you, tell you what i rolled for you")))
     (:line 150
      (:print
       (:scon "what the number stands for, and if you can get the part.")))
     (:line 160
      (:print (:scon "if you can get the part i will give it to you.")))
     (:line 170 (:print (:scon "the same will happen on my turn.")))
     (:line 180
      (:print
       (:scon "if there is a change in either bug i will give you the")))
     (:line 190 (:print (:scon "option of seeing the pictures of the bugs.")))
     (:line 200 (:print (:scon "the numbers stand for parts as follows:")))
     (:line 210
      (:print (:scon "number") :comma (:scon "part") :comma
       (:scon "number of part needed")))
     (:line 220 (:print (:scon "1") :comma (:scon "body") :comma (:scon "1")))
     (:line 230 (:print (:scon "2") :comma (:scon "neck") :comma (:scon "1")))
     (:line 240 (:print (:scon "3") :comma (:scon "head") :comma (:scon "1")))
     (:line 250
      (:print (:scon "4") :comma (:scon "feelers") :comma (:scon "2")))
     (:line 260 (:print (:scon "5") :comma (:scon "tail") :comma (:scon "1")))
     (:line 270 (:print (:scon "6") :comma (:scon "legs") :comma (:scon "6")))
     (:line 280 (:print)) (:line 290 (:print))
     (:line 300 (:if (:binary :gt (:var y) (:icon 0))) (:goto 2480))
     (:line 310
      (:let (:var z)
       (:apply int
        (:binary :plus (:binary :mul (:icon 6) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 320 (:let (:var c) (:icon 1)))
     (:line 330 (:print (:scon "you rolled a") :semi (:var z)))
     (:line 340 (:on-goto (:var z) (350 430 540 650 760 870)))
     (:line 350 (:print (:scon "1=body")))
     (:line 360 (:if (:binary :eq (:var b) (:icon 1))) (:goto 410))
     (:line 370 (:print (:scon "you now have a body.")))
     (:line 380 (:let (:var b) (:icon 1)))
     (:line 390 (:let (:var c) (:icon 0))) (:line 400 (:goto 970))
     (:line 410 (:print (:scon "you do not need a body.")))
     (:line 420 (:goto 970)) (:line 430 (:print (:scon "2=neck")))
     (:line 440 (:if (:binary :eq (:var n) (:icon 1))) (:goto 500))
     (:line 450 (:if (:binary :eq (:var b) (:icon 0))) (:goto 520))
     (:line 460 (:print (:scon "you now have a neck.")))
     (:line 470 (:let (:var n) (:icon 1)))
     (:line 480 (:let (:var c) (:icon 0))) (:line 490 (:goto 970))
     (:line 500 (:print (:scon "you do not need a neck.")))
     (:line 510 (:goto 970))
     (:line 520 (:print (:scon "you do not have a body.")))
     (:line 530 (:goto 970)) (:line 540 (:print (:scon "3=head")))
     (:line 550 (:if (:binary :eq (:var n) (:icon 0))) (:goto 610))
     (:line 560 (:if (:binary :eq (:var h) (:icon 1))) (:goto 630))
     (:line 570 (:print (:scon "you needed a head.")))
     (:line 580 (:let (:var h) (:icon 1)))
     (:line 590 (:let (:var c) (:icon 0))) (:line 600 (:goto 970))
     (:line 610 (:print (:scon "you do not have a neck.")))
     (:line 620 (:goto 970)) (:line 630 (:print (:scon "you have a head.")))
     (:line 640 (:goto 970)) (:line 650 (:print (:scon "4=feelers")))
     (:line 660 (:if (:binary :eq (:var h) (:icon 0))) (:goto 740))
     (:line 670 (:if (:binary :eq (:var a) (:icon 2))) (:goto 720))
     (:line 680 (:print (:scon "i now give you a feeler.")))
     (:line 690 (:let (:var a) (:binary :plus (:var a) (:icon 1))))
     (:line 700 (:let (:var c) (:icon 0))) (:line 710 (:goto 970))
     (:line 720 (:print (:scon "you have two feelers already.")))
     (:line 730 (:goto 970))
     (:line 740 (:print (:scon "you do not have a head.")))
     (:line 750 (:goto 970)) (:line 760 (:print (:scon "5=tail")))
     (:line 770 (:if (:binary :eq (:var b) (:icon 0))) (:goto 830))
     (:line 780 (:if (:binary :eq (:var t) (:icon 1))) (:goto 850))
     (:line 790 (:print (:scon "i now give you a tail.")))
     (:line 800 (:let (:var t) (:binary :plus (:var t) (:icon 1))))
     (:line 810 (:let (:var c) (:icon 0))) (:line 820 (:goto 970))
     (:line 830 (:print (:scon "you do not have a body.")))
     (:line 840 (:goto 970))
     (:line 850 (:print (:scon "you already have a tail.")))
     (:line 860 (:goto 970)) (:line 870 (:print (:scon "6=leg")))
     (:line 880 (:if (:binary :eq (:var l) (:icon 6))) (:goto 940))
     (:line 890 (:if (:binary :eq (:var b) (:icon 0))) (:goto 960))
     (:line 900 (:let (:var l) (:binary :plus (:var l) (:icon 1))))
     (:line 910 (:let (:var c) (:icon 0)))
     (:line 920
      (:print (:scon "you now have") :semi (:var l) :semi (:scon "legs.")))
     (:line 930 (:goto 970))
     (:line 940 (:print (:scon "you have 6 feet already.")))
     (:line 950 (:goto 970))
     (:line 960 (:print (:scon "you do not have a body.")))
     (:line 970
      (:let (:var x)
       (:apply int
        (:binary :plus (:binary :mul (:icon 6) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 971 (:print))
     (:line 975 (:for delay (:icon 1) (:icon 2000) nil) (:next delay))
     (:line 980 (:print (:scon "i rolled a") :semi (:var x)))
     (:line 990 (:on-goto (:var x) (1000 1080 1190 1300 1410 1520)))
     (:line 1000 (:print (:scon "1=body")))
     (:line 1010 (:if (:binary :eq (:var p) (:icon 1))) (:goto 1060))
     (:line 1020 (:print (:scon "i now have a body.")))
     (:line 1030 (:let (:var c) (:icon 0)))
     (:line 1040 (:let (:var p) (:icon 1))) (:line 1050 (:goto 1630))
     (:line 1060 (:print (:scon "i do not need a body.")))
     (:line 1070 (:goto 1630)) (:line 1080 (:print (:scon "2=neck")))
     (:line 1090 (:if (:binary :eq (:var q) (:icon 1))) (:goto 1150))
     (:line 1100 (:if (:binary :eq (:var p) (:icon 0))) (:goto 1170))
     (:line 1110 (:print (:scon "i now have a neck.")))
     (:line 1120 (:let (:var q) (:icon 1)))
     (:line 1130 (:let (:var c) (:icon 0))) (:line 1140 (:goto 1630))
     (:line 1150 (:print (:scon "i do not need a neck.")))
     (:line 1160 (:goto 1630))
     (:line 1170 (:print (:scon "i do not have a body.")))
     (:line 1180 (:goto 1630)) (:line 1190 (:print (:scon "3=head")))
     (:line 1200 (:if (:binary :eq (:var q) (:icon 0))) (:goto 1260))
     (:line 1210 (:if (:binary :eq (:var r) (:icon 1))) (:goto 1280))
     (:line 1220 (:print (:scon "i needed a head.")))
     (:line 1230 (:let (:var r) (:icon 1)))
     (:line 1240 (:let (:var c) (:icon 0))) (:line 1250 (:goto 1630))
     (:line 1260 (:print (:scon "i do not have a neck.")))
     (:line 1270 (:goto 1630))
     (:line 1280 (:print (:scon "i do not need a head.")))
     (:line 1290 (:goto 1630)) (:line 1300 (:print (:scon "4=feelers")))
     (:line 1310 (:if (:binary :eq (:var r) (:icon 0))) (:goto 1390))
     (:line 1320 (:if (:binary :eq (:var s) (:icon 2))) (:goto 1370))
     (:line 1330 (:print (:scon "i get a feeler.")))
     (:line 1340 (:let (:var s) (:binary :plus (:var s) (:icon 1))))
     (:line 1350 (:let (:var c) (:icon 0))) (:line 1360 (:goto 1630))
     (:line 1370 (:print (:scon "i have 2 feelers already.")))
     (:line 1380 (:goto 1630))
     (:line 1390 (:print (:scon "i do not have a head.")))
     (:line 1400 (:goto 1630)) (:line 1410 (:print (:scon "5=tail")))
     (:line 1420 (:if (:binary :eq (:var p) (:icon 0))) (:goto 1480))
     (:line 1430 (:if (:binary :eq (:var u) (:icon 1))) (:goto 1500))
     (:line 1440 (:print (:scon "i now have a tail.")))
     (:line 1450 (:let (:var u) (:icon 1)))
     (:line 1460 (:let (:var c) (:icon 0))) (:line 1470 (:goto 1630))
     (:line 1480 (:print (:scon "i do not have a body.")))
     (:line 1490 (:goto 1630))
     (:line 1500 (:print (:scon "i do not need a tail.")))
     (:line 1510 (:goto 1630)) (:line 1520 (:print (:scon "6=legs")))
     (:line 1530 (:if (:binary :eq (:var v) (:icon 6))) (:goto 1590))
     (:line 1540 (:if (:binary :eq (:var p) (:icon 0))) (:goto 1610))
     (:line 1550 (:let (:var v) (:binary :plus (:var v) (:icon 1))))
     (:line 1560 (:let (:var c) (:icon 0)))
     (:line 1570
      (:print (:scon "i now have") :semi (:var v) :semi (:scon "legs.")))
     (:line 1580 (:goto 1630))
     (:line 1590 (:print :comma (:scon "i have 6 feet.")))
     (:line 1600 (:goto 1630))
     (:line 1610 (:print (:scon "i do not have a body.")))
     (:line 1620 (:goto 1630))
     (:line 1630
      (:if
       (:lazy-binary :and
        (:lazy-binary :and (:binary :eq (:var a) (:icon 2))
         (:binary :eq (:var t) (:icon 1)))
        (:binary :eq (:var l) (:icon 6))))
      (:goto 1650))
     (:line 1640 (:goto 1670))
     (:line 1650 (:print (:scon "your bug is finished.")))
     (:line 1660 (:let (:var y) (:binary :plus (:var y) (:icon 1))))
     (:line 1670
      (:if
       (:lazy-binary :and
        (:lazy-binary :and (:binary :eq (:var s) (:icon 2))
         (:binary :eq (:var p) (:icon 1)))
        (:binary :eq (:var v) (:icon 6))))
      (:goto 1690))
     (:line 1680 (:goto 1710))
     (:line 1690 (:print (:scon "my bug is finished.")))
     (:line 1700 (:let (:var y) (:binary :plus (:var y) (:icon 2))))
     (:line 1710 (:if (:binary :eq (:var c) (:icon 1))) (:goto 300))
     (:line 1720 (:print (:scon "do you want the pictures") :semi))
     (:line 1730 (:input nil ((:var z$))))
     (:line 1740 (:if (:binary :eq (:var z$) (:scon "no"))) (:goto 300))
     (:line 1750 (:print (:scon "*****your bug*****"))) (:line 1760 (:print))
     (:line 1770 (:print))
     (:line 1780 (:if (:binary :eq (:var a) (:icon 0))) (:goto 1860))
     (:line 1790 (:for z (:icon 1) (:icon 4) nil))
     (:line 1800 (:for x (:icon 1) (:var a) nil))
     (:line 1810 (:print (:apply tab (:icon 10)) :semi))
     (:line 1820 (:print (:scon "a ") :semi)) (:line 1830 (:next x))
     (:line 1840 (:print)) (:line 1850 (:next z))
     (:line 1860 (:if (:binary :eq (:var h) (:icon 0))) (:goto 1880))
     (:line 1870 (:gosub 2470))
     (:line 1880 (:if (:binary :eq (:var n) (:icon 0))) (:goto 1920))
     (:line 1890 (:for z (:icon 1) (:icon 2) nil))
     (:line 1900 (:print (:scon "          n n"))) (:line 1910 (:next z))
     (:line 1920 (:if (:binary :eq (:var b) (:icon 0))) (:goto 2000))
     (:line 1930 (:print (:scon "     bbbbbbbbbbbb")))
     (:line 1940 (:for z (:icon 1) (:icon 2) nil))
     (:line 1950 (:print (:scon "     b          b")))
     (:line 1960 (:next z))
     (:line 1970 (:if (:binary :ne (:var t) (:icon 1))) (:goto 1990))
     (:line 1980 (:print (:scon "tttttb          b")))
     (:line 1990 (:print (:scon "     bbbbbbbbbbbb")))
     (:line 2000 (:if (:binary :eq (:var l) (:icon 0))) (:goto 2080))
     (:line 2010 (:for z (:icon 1) (:icon 2) nil))
     (:line 2020 (:print (:apply tab (:icon 5)) :semi))
     (:line 2030 (:for x (:icon 1) (:var l) nil))
     (:line 2040 (:print (:scon " l") :semi)) (:line 2050 (:next x))
     (:line 2060 (:print)) (:line 2070 (:next z))
     (:line 2080 (:for z (:icon 1) (:icon 4) nil)) (:line 2090 (:print))
     (:line 2100 (:next z))
     (:line 2110 (:print (:scon "*****my bug*****"))) (:line 2120 (:print))
     (:line 2130 (:print)) (:line 2140 (:print))
     (:line 2150 (:if (:binary :eq (:var s) (:icon 0))) (:goto 2230))
     (:line 2160 (:for z (:icon 1) (:icon 4) nil))
     (:line 2170 (:print (:apply tab (:icon 10)) :semi))
     (:line 2180 (:for x (:icon 1) (:var s) nil))
     (:line 2190 (:print (:scon "f ") :semi)) (:line 2200 (:next x))
     (:line 2210 (:print)) (:line 2220 (:next z))
     (:line 2230 (:if (:binary :ne (:var r) (:icon 1))) (:goto 2250))
     (:line 2240 (:gosub 2470))
     (:line 2250 (:if (:binary :eq (:var q) (:icon 0))) (:goto 2280))
     (:line 2260 (:print (:scon "          n n")))
     (:line 2270 (:print (:scon "          n n")))
     (:line 2280 (:if (:binary :eq (:var p) (:icon 0))) (:goto 2360))
     (:line 2290 (:print (:scon "     bbbbbbbbbbbb")))
     (:line 2300 (:for z (:icon 1) (:icon 2) nil))
     (:line 2310 (:print (:scon "     b          b")))
     (:line 2320 (:next z))
     (:line 2330 (:if (:binary :ne (:var u) (:icon 1))) (:goto 2350))
     (:line 2340 (:print (:scon "tttttb          b")))
     (:line 2350 (:print (:scon "     bbbbbbbbbbbb")))
     (:line 2360 (:if (:binary :eq (:var v) (:icon 0))) (:goto 2450))
     (:line 2370 (:for z (:icon 1) (:icon 2) nil))
     (:line 2380 (:print (:apply tab (:icon 5)) :semi))
     (:line 2390 (:for x (:icon 1) (:var v) nil))
     (:line 2400 (:print (:scon " l") :semi)) (:line 2410 (:next x))
     (:line 2420 (:print)) (:line 2430 (:next z))
     (:line 2450 (:if (:binary :ne (:var y) (:icon 0))) (:goto 2540))
     (:line 2460 (:goto 300)) (:line 2470 (:print (:scon "        hhhhhhh")))
     (:line 2480 (:print (:scon "        h     h")))
     (:line 2490 (:print (:scon "        h o o h")))
     (:line 2500 (:print (:scon "        h     h")))
     (:line 2510 (:print (:scon "        h  v  h")))
     (:line 2520 (:print (:scon "        hhhhhhh"))) (:line 2530 (:return))
     (:line 2540
      (:print (:scon "i hope you enjoyed the game, play it again soon!!")))
     (:line 2550 (:end)))))



(defvar *bullfight*
  '(((:line 10 (:print (:apply tab (:icon 34)) :semi (:scon "bull")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30
      (:def fna k
       (:apply int
        (:binary :plus (:binary :mul (:apply rnd (:icon 1)) (:icon 2))
         (:icon 1)))))
     (:line 200 (:print) (:print) (:print))
     (:line 202 (:let (:var l) (:icon 1)))
     (:line 205 (:print (:scon "do you want instructions") :semi))
     (:line 206 (:input nil ((:var z$))))
     (:line 207 (:if (:binary :eq (:var z$) (:scon "no"))) (:goto 400))
     (:line 210 (:print (:scon "hello, all you bloodlovers and aficionados.")))
     (:line 220 (:print (:scon "here is your big chance to kill a bull.")))
     (:line 230 (:print))
     (:line 240 (:print (:scon "on each pass of the bull, you may try")))
     (:line 250
      (:print (:scon "0 - veronica (dangerous inside move of the cape)")))
     (:line 260 (:print (:scon "1 - less dangerous outside move of the cape")))
     (:line 270 (:print (:scon "2 - ordinary swirl of the cape.")))
     (:line 280 (:print))
     (:line 290
      (:print (:scon "instead of the above, you may try to kill the bull")))
     (:line 300
      (:print (:scon "on any turn: 4 (over the horns), 5 (in the chest).")))
     (:line 310 (:print (:scon "but if i were you,")))
     (:line 320 (:print (:scon "i wouldn't try it before the seventh pass.")))
     (:line 330 (:print))
     (:line 340
      (:print (:scon "the crowd will determine what award you deserve")))
     (:line 350 (:print (:scon "(posthumously if necessary).")))
     (:line 360
      (:print (:scon "the braver you are, the better the award you recieve.")))
     (:line 370 (:print))
     (:line 380
      (:print (:scon "the better the job the picadores and toreadores do,")))
     (:line 390 (:print (:scon "the better your chances are.")))
     (:line 400 (:print)) (:line 410 (:print))
     (:line 420 (:let (:apply d (:icon 5)) (:icon 1)))
     (:line 430 (:let (:apply d (:icon 4)) (:icon 1)))
     (:line 450 (:dim ((:dimd l$ (:icon 5)))))
     (:line 455
      (:let (:var a)
       (:apply int
        (:binary :plus (:binary :mul (:apply rnd (:icon 1)) (:icon 5))
         (:icon 1)))))
     (:line 460 (:for i (:icon 1) (:icon 5) nil))
     (:line 463 (:read (:apply l$ (:var i)))) (:line 467 (:next i))
     (:line 470
      (:data (:scon "superb") (:scon "good") (:scon "fair") (:scon "poor")
       (:scon "awful")))
     (:line 490
      (:print (:scon "you have drawn a ") :semi (:apply l$ (:var a))
       :semi (:scon " bull.")))
     (:line 500 (:if (:binary :gt (:var a) (:icon 4))) (:goto 530))
     (:line 510 (:if (:binary :lt (:var a) (:icon 2))) (:goto 550))
     (:line 520 (:goto 570)) (:line 530 (:print (:scon "you're lucky.")))
     (:line 540 (:goto 570))
     (:line 550 (:print (:scon "good luck.  you'll need it.")))
     (:line 560 (:print)) (:line 570 (:print))
     (:line 590 (:let (:var a$) (:scon "picado")))
     (:line 595 (:let (:var b$) (:scon "res"))) (:line 600 (:gosub 1610))
     (:line 610 (:let (:apply d (:icon 1)) (:var c)))
     (:line 630 (:let (:var a$) (:scon "toread")))
     (:line 635 (:let (:var b$) (:scon "ores"))) (:line 640 (:gosub 1610))
     (:line 650 (:let (:apply d (:icon 2)) (:var c)))
     (:line 660 (:print)) (:line 670 (:print))
     (:line 680 (:if (:binary :eq (:var z) (:icon 1))) (:goto 1310))
     (:line 690
      (:let (:apply d (:icon 3))
       (:binary :plus (:apply d (:icon 3)) (:icon 1))))
     (:line 700 (:print (:scon "pass number") :semi (:apply d (:icon 3))))
     (:line 710 (:if (:binary :lt (:apply d (:icon 3)) (:icon 3)))
      (:goto 760))
     (:line 720 (:print (:scon "here comes the bull.  try for a kill") :semi))
     (:line 730 (:gosub 1930))
     (:line 735 (:if (:binary :eq (:var z1) (:icon 1))) (:goto 1130))
     (:line 740 (:print (:scon "cape move") :semi)) (:line 750 (:goto 800))
     (:line 760
      (:print (:scon "the bull is charging at you!  you are the matador--")))
     (:line 770 (:print (:scon "do you want to kill the bull") :semi))
     (:line 780 (:gosub 1930))
     (:line 785 (:if (:binary :eq (:var z1) (:icon 1))) (:goto 1130))
     (:line 790 (:print (:scon "what move do you make with the cape") :semi))
     (:line 800 (:input nil ((:var e))))
     (:line 810
      (:if
       (:binary :ne (:var e)
        (:apply int (:apply abs (:var e)))))
      (:goto 830))
     (:line 820 (:if (:binary :lt (:var e) (:icon 3))) (:goto 850))
     (:line 830
      (:print (:scon "don't panic, you idiot!  put down a correct number")))
     (:line 840 (:goto 800)) (:line 850 (:rem "
"))
     (:line 860 (:if (:binary :eq (:var e) (:icon 0))) (:goto 920))
     (:line 870 (:if (:binary :eq (:var e) (:icon 1))) (:goto 900))
     (:line 880 (:let (:var m) (:fcon 0.5))) (:line 890 (:goto 930))
     (:line 900 (:let (:var m) (:icon 2))) (:line 910 (:goto 930))
     (:line 920 (:let (:var m) (:icon 3)))
     (:line 930 (:let (:var l) (:binary :plus (:var l) (:var m))))
     (:line 940
      (:let (:var f)
       (:binary :div
        (:binary :mul
         (:binary :plus (:binary :minus (:icon 6) (:var a))
          (:binary :div (:var m) (:icon 10)))
         (:apply rnd (:icon 1)))
        (:binary :mul
         (:binary :plus
          (:binary :plus (:apply d (:icon 1)) (:apply d (:icon 2)))
          (:binary :div (:apply d (:icon 3)) (:icon 10)))
         (:icon 5)))))
     (:line 950 (:if (:binary :lt (:var f) (:fcon 0.51))) (:goto 660))
     (:line 960 (:print (:scon "the bull has gored you!")))
     (:line 970 (:on-goto (:apply fna (:icon 0)) (980 1010)))
     (:line 980 (:print (:scon "you are dead.")))
     (:line 990 (:let (:apply d (:icon 4)) (:fcon 1.5)))
     (:line 1000 (:goto 1310))
     (:line 1010 (:print (:scon "you are still alive.")) (:print))
     (:line 1020 (:print (:scon "do you run from the ring") :semi))
     (:line 1030 (:gosub 1930))
     (:line 1035 (:if (:binary :eq (:var z1) (:icon 2))) (:goto 1070))
     (:line 1040 (:print (:scon "coward")))
     (:line 1050 (:let (:apply d (:icon 4)) (:icon 0)))
     (:line 1060 (:goto 1310))
     (:line 1070 (:print (:scon "you are brave.  stupid, but brave.")))
     (:line 1080 (:on-goto (:apply fna (:icon 0)) (1090 1110)))
     (:line 1090 (:let (:apply d (:icon 4)) (:icon 2)))
     (:line 1100 (:goto 660))
     (:line 1110 (:print (:scon "you are gored again!")))
     (:line 1120 (:goto 970)) (:line 1130 (:rem "
"))
     (:line 1140 (:let (:var z) (:icon 1)))
     (:line 1150 (:print) (:print (:scon "it is the moment of truth."))
      (:print))
     (:line 1155 (:print (:scon "how do you try to kill the bull") :semi))
     (:line 1160 (:input nil ((:var h))))
     (:line 1170 (:if (:binary :eq (:var h) (:icon 4))) (:goto 1230))
     (:line 1180 (:if (:binary :eq (:var h) (:icon 5))) (:goto 1230))
     (:line 1190 (:print (:scon "you panicked.  the bull gored you.")))
     (:line 1220 (:goto 970))
     (:line 1230
      (:let (:var k)
       (:binary :div
        (:binary :mul
         (:binary :mul (:binary :minus (:icon 6) (:var a)) (:icon 10))
         (:apply rnd (:icon 1)))
        (:binary :mul
         (:binary :mul
          (:binary :plus (:apply d (:icon 1)) (:apply d (:icon 2)))
          (:icon 5))
         (:apply d (:icon 3))))))
     (:line 1240 (:if (:binary :eq (:var j) (:icon 4))) (:goto 1290))
     (:line 1250 (:if (:binary :gt (:var k) (:fcon 0.2))) (:goto 960))
     (:line 1260 (:print (:scon "you killed the bull!")))
     (:line 1270 (:let (:apply d (:icon 5)) (:icon 2)))
     (:line 1280 (:goto 1320))
     (:line 1290 (:if (:binary :gt (:var k) (:fcon 0.8))) (:goto 960))
     (:line 1300 (:goto 1260)) (:line 1310 (:print)) (:line 1320 (:print))
     (:line 1330 (:print))
     (:line 1340 (:if (:binary :ne (:apply d (:icon 4)) (:icon 0)))
      (:goto 1390))
     (:line 1350
      (:print
       (:scon "the crowd boos for ten minutes.  if you ever dare to show")))
     (:line 1360
      (:print
       (:scon "your face in a ring again, they swear they will kill you--")))
     (:line 1370 (:print (:scon "unles the bull does first.")))
     (:line 1380 (:goto 1580))
     (:line 1390
      (:def fnc q
       (:binary :mul (:apply fnd (:var q))
        (:apply rnd (:icon 1)))))
     (:line 1395
      (:def fnd q
       (:binary :minus
        (:binary :minus
         (:binary :plus
          (:binary :plus
           (:binary :minus
            (:binary :plus (:fcon 4.5) (:binary :div (:var l) (:icon 6)))
            (:binary :mul
             (:binary :plus (:apply d (:icon 1)) (:apply d (:icon 2)))
             (:fcon 2.5)))
           (:binary :mul (:icon 4) (:apply d (:icon 4))))
          (:binary :mul (:icon 2) (:apply d (:icon 5))))
         (:binary :div (:exp (:apply d (:icon 3)) (:icon 2)) (:icon 120)))
        (:var a))))
     (:line 1400 (:if (:binary :ne (:apply d (:icon 4)) (:icon 2)))
      (:goto 1430))
     (:line 1410 (:print (:scon "the crowd cheers wildly!")))
     (:line 1420 (:goto 1450))
     (:line 1430 (:if (:binary :ne (:apply d (:icon 5)) (:icon 2)))
      (:goto 1450))
     (:line 1440 (:print (:scon "the crowd cheers!")) (:print))
     (:line 1450 (:print (:scon "the crowd awards you")))
     (:line 1460 (:if (:binary :lt (:apply fnc (:var q)) (:fcon 2.4)))
      (:goto 1570))
     (:line 1470 (:if (:binary :lt (:apply fnc (:var q)) (:fcon 4.9)))
      (:goto 1550))
     (:line 1480 (:if (:binary :lt (:apply fnc (:var q)) (:fcon 7.4)))
      (:goto 1520))
     (:line 1500 (:print (:scon "ole!  you are 'muy hombre'!! ole!  ole!")))
     (:line 1510 (:goto 1580))
     (:line 1520 (:print (:scon "both ears of the bull!")))
     (:line 1530 (:print (:scon "ole!"))) (:line 1540 (:goto 1580))
     (:line 1550 (:print (:scon "one ear of the bull.")))
     (:line 1560 (:goto 1580)) (:line 1570 (:print (:scon "nothing at all.")))
     (:line 1580 (:print))
     (:line 1590 (:print (:scon "adios")) (:print) (:print) (:print))
     (:line 1600 (:goto 2030))
     (:line 1610
      (:let (:var b)
       (:binary :mul (:binary :div (:icon 3) (:var a))
        (:apply rnd (:icon 1)))))
     (:line 1620 (:if (:binary :lt (:var b) (:fcon 0.37))) (:goto 1740))
     (:line 1630 (:if (:binary :lt (:var b) (:fcon 0.5))) (:goto 1720))
     (:line 1640 (:if (:binary :lt (:var b) (:fcon 0.63))) (:goto 1700))
     (:line 1650 (:if (:binary :lt (:var b) (:fcon 0.87))) (:goto 1680))
     (:line 1660 (:let (:var c) (:fcon 0.1))) (:line 1670 (:goto 1750))
     (:line 1680 (:let (:var c) (:fcon 0.2))) (:line 1690 (:goto 1750))
     (:line 1700 (:let (:var c) (:fcon 0.3))) (:line 1710 (:goto 1750))
     (:line 1720 (:let (:var c) (:fcon 0.4))) (:line 1730 (:goto 1750))
     (:line 1740 (:let (:var c) (:fcon 0.5)))
     (:line 1750
      (:let (:var t)
       (:apply int
        (:binary :plus (:binary :mul (:icon 10) (:var c)) (:fcon 0.2)))))
     (:line 1760
      (:print (:scon "the ") :semi (:var a$) :semi (:var b$) :semi
       (:scon " did a ") :semi (:apply l$ (:var t)) :semi
       (:scon " job.")))
     (:line 1770 (:if (:binary :gt (:icon 4) (:var t))) (:goto 1900))
     (:line 1780 (:if (:binary :eq (:icon 5) (:var t))) (:goto 1870))
     (:line 1790 (:on-goto (:apply fna (:var k)) (1830 1850)))
     (:line 1800 (:if (:binary :eq (:var a$) (:scon "toread")))
      (:goto 1820))
     (:line 1810
      (:print (:scon "one of the horses of the ") :semi (:var a$) :semi
       (:var b$) :semi (:scon " was killed.")))
     (:line 1820 (:on-goto (:apply fna (:var k)) (1830 1850)))
     (:line 1830
      (:print (:scon "one of the ") :semi (:var a$) :semi (:var b$)
       :semi (:scon " was killed.")))
     (:line 1840 (:goto 1900))
     (:line 1850
      (:print (:scon "no ") :semi (:var a$) :semi (:var b$) :semi
       (:scon " were killed.")))
     (:line 1860 (:goto 1900))
     (:line 1870 (:if (:binary :eq (:var a$) (:scon "toread")))
      (:goto 1890))
     (:line 1880
      (:print (:apply fna (:var k)) :semi
       (:scon "of the horses of the ") :semi (:var a$) :semi (:var b$)
       :semi (:scon " killed.")))
     (:line 1890
      (:print (:apply fna (:var k)) :semi (:scon "of the ") :semi
       (:var a$) :semi (:var b$) :semi (:scon " killed.")))
     (:line 1900 (:print)) (:line 1910 (:return)) (:line 1920 (:rem "
"))
     (:line 1930 (:input nil ((:var a$))))
     (:line 1940 (:if (:binary :eq (:var a$) (:scon "yes"))) (:goto 1990))
     (:line 1950 (:if (:binary :eq (:var a$) (:scon "no"))) (:goto 2010))
     (:line 1970
      (:print (:scon "incorrect answer - - please type 'yes' or 'no'.")))
     (:line 1980 (:goto 1930)) (:line 1990 (:let (:var z1) (:icon 1)))
     (:line 2000 (:goto 2020)) (:line 2010 (:let (:var z1) (:icon 2)))
     (:line 2020 (:return)) (:line 2030 (:end)))))



(defvar *bullseye*
  '(((:line 5 (:print (:apply tab (:icon 32)) :semi (:scon "bullseye")))
     (:line 10
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 20 (:print) (:print) (:print))
     (:line 30
      (:print
       (:scon "in this game, up to 20 players throw darts at a target")))
     (:line 40
      (:print
       (:scon "with 10, 20, 30, and 40 point zones.  the objective is")))
     (:line 50 (:print (:scon "to get 200 points.")) (:print))
     (:line 60
      (:print (:scon "throw") :comma (:apply tab (:icon 20)) :semi
       (:scon "description") :semi (:apply tab (:icon 45)) :semi
       (:scon "probable score")))
     (:line 70
      (:print (:scon " 1") :semi (:apply tab (:icon 20)) :semi
       (:scon "fast overarm") :semi (:apply tab (:icon 45)) :semi
       (:scon "bullseye or complete miss")))
     (:line 80
      (:print (:scon " 2") :semi (:apply tab (:icon 20)) :semi
       (:scon "controlled overarm") :semi (:apply tab (:icon 45)) :semi
       (:scon "10, 20 or 30 points")))
     (:line 90
      (:print (:scon " 3") :semi (:apply tab (:icon 20)) :semi
       (:scon "underarm") :semi (:apply tab (:icon 45)) :semi
       (:scon "anything"))
      (:print))
     (:line 100
      (:dim
       ((:dimd a$ (:icon 20)) (:dimd s (:icon 20))
        (:dimd w (:icon 10))))
      (:let (:var m) (:icon 0)) (:let (:var r) (:icon 0))
      (:for i (:icon 1) (:icon 20) nil)
      (:let (:apply s (:var i)) (:icon 0)) (:next i))
     (:line 110 (:input "how many players" ((:var n))) (:print))
     (:line 120 (:for i (:icon 1) (:var n) nil))
     (:line 130 (:print (:scon "name of player #") :semi (:var i) :semi)
      (:input nil ((:apply a$ (:var i)))))
     (:line 140 (:next i))
     (:line 150 (:let (:var r) (:binary :plus (:var r) (:icon 1)))
      (:print) (:print (:scon "round") :semi (:var r))
      (:print (:scon "---------")))
     (:line 160 (:for i (:icon 1) (:var n) nil))
     (:line 170 (:print)
      (:print (:apply a$ (:var i)) (:scon "'s throw") :semi)
      (:input nil ((:var t))))
     (:line 180
      (:if
       (:lazy-binary :or (:binary :lt (:var t) (:icon 0))
        (:binary :gt (:var t) (:icon 3))))
      (:print (:scon "input 1, 2, or 3!")) (:goto 170))
     (:line 190 (:on-goto (:var t) (200 210 200)))
     (:line 200 (:let (:var p1) (:fcon 0.65))
      (:let (:var p2) (:fcon 0.55)) (:let (:var p3) (:fcon 0.5))
      (:let (:var p4) (:fcon 0.5)) (:goto 230))
     (:line 210 (:let (:var p1) (:fcon 0.98999995))
      (:let (:var p2) (:fcon 0.77)) (:let (:var p3) (:fcon 0.42999998))
      (:let (:var p4) (:fcon 0.01)) (:goto 230))
     (:line 220 (:let (:var p1) (:fcon 0.95))
      (:let (:var p2) (:fcon 0.75)) (:let (:var p3) (:fcon 0.45))
      (:let (:var p4) (:fcon 0.049999997)))
     (:line 230 (:let (:var u) (:apply rnd (:icon 1))))
     (:line 240 (:if (:binary :ge (:var u) (:var p1)))
      (:print (:scon "bullseye!!  40 points!")) (:let (:var b) (:icon 40))
      (:goto 290))
     (:line 250 (:if (:binary :ge (:var u) (:var p2)))
      (:print (:scon "30-point zone!")) (:let (:var b) (:icon 30))
      (:goto 290))
     (:line 260 (:if (:binary :ge (:var u) (:var p3)))
      (:print (:scon "20-point zone")) (:let (:var b) (:icon 20))
      (:goto 290))
     (:line 270 (:if (:binary :ge (:var u) (:var p4)))
      (:print (:scon "whew!  10 points.")) (:let (:var b) (:icon 10))
      (:goto 290))
     (:line 280 (:print (:scon "missed the target!  too bad."))
      (:let (:var b) (:icon 0)))
     (:line 290
      (:let (:apply s (:var i))
       (:binary :plus (:apply s (:var i)) (:var b)))
      (:print (:scon "total score =") :semi (:apply s (:var i)))
      (:next i))
     (:line 300 (:for i (:icon 1) (:var n) nil))
     (:line 310 (:if (:binary :ge (:apply s (:var i)) (:icon 200)))
      (:let (:var m) (:binary :plus (:var m) (:icon 1)))
      (:let (:apply w (:var m)) (:var i)))
     (:line 320 (:next i))
     (:line 330 (:if (:binary :eq (:var m) (:icon 0))) (:goto 150))
     (:line 340 (:print) (:print (:scon "we have a winner!!")) (:print))
     (:line 350 (:for i (:icon 1) (:var m) nil)
      (:print (:apply a$ (:apply w (:var i))) :semi
       (:scon " scored") :semi (:apply s (:apply w (:var i))) :semi
       (:scon "points."))
      (:next i))
     (:line 360 (:print) (:print (:scon "thanks for the game.")) (:end)))))



(defvar *bunny*
  '(((:line 10 (:print (:apply tab (:icon 33)) :semi (:scon "bunny")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print))
     (:line 100 (:rem "  \"bunny\" from ahl's 'basic computer games'
"))
     (:line 110 (:rem "
"))
     (:line 120 (:for i (:icon 0) (:icon 4) nil)
      (:read (:apply b (:var i))) (:next i))
     (:line 130 (:gosub 260))
     (:line 140 (:let (:var l) (:icon 64))
      (:rem "  ascii letter code...
"))
     (:line 150 (:rem "
")) (:line 160 (:print))
     (:line 170 (:read (:var x)) (:if (:binary :lt (:var x) (:icon 0)))
      (:goto 160))
     (:line 175 (:if (:binary :gt (:var x) (:icon 128))) (:goto 240))
     (:line 180 (:print (:apply tab (:var x)) :semi)
      (:read (:var y)))
     (:line 190 (:for i (:var x) (:var y) nil)
      (:let (:var j)
       (:binary :minus (:var i)
        (:binary :mul (:icon 5)
         (:apply int (:binary :div (:var i) (:icon 5)))))))
     (:line 200
      (:print
       (:apply chr$
        (:binary :plus (:var l) (:apply b (:var j))))
       :semi))
     (:line 210 (:next i)) (:line 220 (:goto 170)) (:line 230 (:rem "
"))
     (:line 240 (:gosub 260) (:goto 450)) (:line 250 (:rem "
"))
     (:line 260 (:for i (:icon 1) (:icon 6) nil)
      (:print (:apply chr$ (:icon 10)) :semi) (:next i))
     (:line 270 (:return)) (:line 280 (:rem "
"))
     (:line 290 (:data (:icon 2) (:icon 21) (:icon 14) (:icon 14) (:icon 25)))
     (:line 300
      (:data (:icon 1) (:icon 2) (:uminus (:icon 1)) (:icon 0) (:icon 2)
       (:icon 45) (:icon 50) (:uminus (:icon 1)) (:icon 0) (:icon 5) (:icon 43)
       (:icon 52) (:uminus (:icon 1)) (:icon 0) (:icon 7) (:icon 41) (:icon 52)
       (:uminus (:icon 1))))
     (:line 310
      (:data (:icon 1) (:icon 9) (:icon 37) (:icon 50) (:uminus (:icon 1))
       (:icon 2) (:icon 11) (:icon 36) (:icon 50) (:uminus (:icon 1)) (:icon 3)
       (:icon 13) (:icon 34) (:icon 49) (:uminus (:icon 1)) (:icon 4)
       (:icon 14) (:icon 32) (:icon 48) (:uminus (:icon 1))))
     (:line 320
      (:data (:icon 5) (:icon 15) (:icon 31) (:icon 47) (:uminus (:icon 1))
       (:icon 6) (:icon 16) (:icon 30) (:icon 45) (:uminus (:icon 1)) (:icon 7)
       (:icon 17) (:icon 29) (:icon 44) (:uminus (:icon 1)) (:icon 8)
       (:icon 19) (:icon 28) (:icon 43) (:uminus (:icon 1))))
     (:line 330
      (:data (:icon 9) (:icon 20) (:icon 27) (:icon 41) (:uminus (:icon 1))
       (:icon 10) (:icon 21) (:icon 26) (:icon 40) (:uminus (:icon 1))
       (:icon 11) (:icon 22) (:icon 25) (:icon 38) (:uminus (:icon 1))
       (:icon 12) (:icon 22) (:icon 24) (:icon 36) (:uminus (:icon 1))))
     (:line 340
      (:data (:icon 13) (:icon 34) (:uminus (:icon 1)) (:icon 14) (:icon 33)
       (:uminus (:icon 1)) (:icon 15) (:icon 31) (:uminus (:icon 1)) (:icon 17)
       (:icon 29) (:uminus (:icon 1)) (:icon 18) (:icon 27)
       (:uminus (:icon 1))))
     (:line 350
      (:data (:icon 19) (:icon 26) (:uminus (:icon 1)) (:icon 16) (:icon 28)
       (:uminus (:icon 1)) (:icon 13) (:icon 30) (:uminus (:icon 1)) (:icon 11)
       (:icon 31) (:uminus (:icon 1)) (:icon 10) (:icon 32)
       (:uminus (:icon 1))))
     (:line 360
      (:data (:icon 8) (:icon 33) (:uminus (:icon 1)) (:icon 7) (:icon 34)
       (:uminus (:icon 1)) (:icon 6) (:icon 13) (:icon 16) (:icon 34)
       (:uminus (:icon 1)) (:icon 5) (:icon 12) (:icon 16) (:icon 35)
       (:uminus (:icon 1))))
     (:line 370
      (:data (:icon 4) (:icon 12) (:icon 16) (:icon 35) (:uminus (:icon 1))
       (:icon 3) (:icon 12) (:icon 15) (:icon 35) (:uminus (:icon 1)) (:icon 2)
       (:icon 35) (:uminus (:icon 1)) (:icon 1) (:icon 35)
       (:uminus (:icon 1))))
     (:line 380
      (:data (:icon 2) (:icon 34) (:uminus (:icon 1)) (:icon 3) (:icon 34)
       (:uminus (:icon 1)) (:icon 4) (:icon 33) (:uminus (:icon 1)) (:icon 6)
       (:icon 33) (:uminus (:icon 1)) (:icon 10) (:icon 32) (:icon 34)
       (:icon 34) (:uminus (:icon 1))))
     (:line 390
      (:data (:icon 14) (:icon 17) (:icon 19) (:icon 25) (:icon 28) (:icon 31)
       (:icon 35) (:icon 35) (:uminus (:icon 1)) (:icon 15) (:icon 19)
       (:icon 23) (:icon 30) (:icon 36) (:icon 36) (:uminus (:icon 1))))
     (:line 400
      (:data (:icon 14) (:icon 18) (:icon 21) (:icon 21) (:icon 24) (:icon 30)
       (:icon 37) (:icon 37) (:uminus (:icon 1)) (:icon 13) (:icon 18)
       (:icon 23) (:icon 29) (:icon 33) (:icon 38) (:uminus (:icon 1))))
     (:line 410
      (:data (:icon 12) (:icon 29) (:icon 31) (:icon 33) (:uminus (:icon 1))
       (:icon 11) (:icon 13) (:icon 17) (:icon 17) (:icon 19) (:icon 19)
       (:icon 22) (:icon 22) (:icon 24) (:icon 31) (:uminus (:icon 1))))
     (:line 420
      (:data (:icon 10) (:icon 11) (:icon 17) (:icon 18) (:icon 22) (:icon 22)
       (:icon 24) (:icon 24) (:icon 29) (:icon 29) (:uminus (:icon 1))))
     (:line 430
      (:data (:icon 22) (:icon 23) (:icon 26) (:icon 29) (:uminus (:icon 1))
       (:icon 27) (:icon 29) (:uminus (:icon 1)) (:icon 28) (:icon 29)
       (:uminus (:icon 1)) (:icon 4096)))
     (:line 440 (:rem "
")) (:line 450 (:end)))))



(defvar *buzzword*
  '(((:line 10
      (:print (:apply tab (:icon 26)) :semi (:scon "buzzword generator")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print))
     (:line 40
      (:print (:scon "this program prints highly acceptable phrases in")))
     (:line 50
      (:print (:scon "'educator-speak'that you can work into reports")))
     (:line 60
      (:print (:scon "and speeches.  whenever a question mark is printed,")))
     (:line 70
      (:print (:scon "type a 'y' for another phrase or 'n' to quit.")))
     (:line 80 (:print) (:print) (:print (:scon "here's the first phrase:")))
     (:line 90 (:dim ((:dimd a$ (:icon 40)))))
     (:line 100 (:for i (:icon 1) (:icon 39) nil)
      (:read (:apply a$ (:var i))) (:next i))
     (:line 110
      (:print
       (:apply a$
        (:apply int
         (:binary :plus (:binary :mul (:icon 13) (:apply rnd (:icon 1)))
          (:icon 1))))
       :semi (:scon " ") :semi))
     (:line 120
      (:print
       (:apply a$
        (:apply int
         (:binary :plus (:binary :mul (:icon 13) (:apply rnd (:icon 1)))
          (:icon 14))))
       :semi (:scon " ") :semi))
     (:line 130
      (:print
       (:apply a$
        (:apply int
         (:binary :plus (:binary :mul (:icon 13) (:apply rnd (:icon 1)))
          (:icon 27)))))
      (:print))
     (:line 150 (:input nil ((:var y$)))
      (:if (:binary :eq (:var y$) (:scon "y"))) (:goto 110))
     (:line 160 (:goto 999))
     (:line 200
      (:data (:scon "ability") (:scon "basal") (:scon "behavioral")
       (:scon "child-centered")))
     (:line 210
      (:data (:scon "differentiated") (:scon "discovery") (:scon "flexible")
       (:scon "heterogeneous")))
     (:line 220
      (:data (:scon "homogeneous") (:scon "manipulative") (:scon "modular")
       (:scon "tavistock")))
     (:line 230
      (:data (:scon "individualized") (:scon "learning") (:scon "evaluative")
       (:scon "objective")))
     (:line 240
      (:data (:scon "cognitive") (:scon "enrichment") (:scon "scheduling")
       (:scon "humanistic")))
     (:line 250
      (:data (:scon "integrated") (:scon "non-graded") (:scon "training")
       (:scon "vertical age")))
     (:line 260
      (:data (:scon "motivational") (:scon "creative") (:scon "grouping")
       (:scon "modification")))
     (:line 270
      (:data (:scon "accountability") (:scon "process")
       (:scon "core curriculum") (:scon "algorithm")))
     (:line 280
      (:data (:scon "performance") (:scon "reinforcement")
       (:scon "open classroom") (:scon "resource")))
     (:line 290
      (:data (:scon "structure") (:scon "facility") (:scon "environment")))
     (:line 999
      (:print (:scon "come back when you need help with another report!"))
      (:end)))))



(defvar *calendar*
  '(((:line 10 (:print (:apply tab (:icon 32)) :semi (:scon "calendar")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print))
     (:line 100 (:rem "     values for 1979 - see notes
"))
     (:line 110 (:dim ((:dimd m (:icon 12)))))
     (:line 120 (:for i (:icon 1) (:icon 6) nil)
      (:print (:apply chr$ (:icon 10)) :semi) (:next i))
     (:line 130 (:let (:var d) (:icon 1))
      (:rem " 1979 starts on monday (0=sun, -1=mon, -2=tues...)
"))
     (:line 140 (:let (:var s) (:icon 0)))
     (:line 150 (:rem "     read days of each month
"))
     (:line 160 (:for n (:icon 0) (:icon 12) nil)
      (:read (:apply m (:var n))) (:next n))
     (:line 170 (:rem "
")) (:line 180 (:for n (:icon 1) (:icon 12) nil))
     (:line 190 (:print) (:print)
      (:let (:var s)
       (:binary :plus (:var s)
        (:apply m (:binary :minus (:var n) (:icon 1))))))
     (:line 200
      (:print (:scon "**") :semi (:var s) :semi (:apply tab (:icon 7))
       :semi))
     (:line 210 (:for i (:icon 1) (:icon 18) nil)
      (:print (:scon "*") :semi) (:next i))
     (:line 220
      (:on-goto (:var n)
       (230 240 250 260 270 280 290 300 310 320 330 340)))
     (:line 230 (:print (:scon " january ") :semi) (:goto 350))
     (:line 240 (:print (:scon " february") :semi) (:goto 350))
     (:line 250 (:print (:scon "  march  ") :semi) (:goto 350))
     (:line 260 (:print (:scon "  april  ") :semi) (:goto 350))
     (:line 270 (:print (:scon "   may   ") :semi) (:goto 350))
     (:line 280 (:print (:scon "   june  ") :semi) (:goto 350))
     (:line 290 (:print (:scon "   july  ") :semi) (:goto 350))
     (:line 300 (:print (:scon "  august ") :semi) (:goto 350))
     (:line 310 (:print (:scon "september") :semi) (:goto 350))
     (:line 320 (:print (:scon " october ") :semi) (:goto 350))
     (:line 330 (:print (:scon " november") :semi) (:goto 350))
     (:line 340 (:print (:scon " december") :semi))
     (:line 350 (:for i (:icon 1) (:icon 18) nil)
      (:print (:scon "*") :semi) (:next i))
     (:line 360
      (:print (:binary :minus (:icon 365) (:var s)) :semi (:scon "**")
       :semi))
     (:line 370 (:rem "   366-s;     on leap years
"))
     (:line 380 (:print (:apply chr$ (:icon 10)))
      (:print (:scon "     s       m       t       w") :semi))
     (:line 390 (:print (:scon "       t       f       s")))
     (:line 400 (:print))
     (:line 410 (:for i (:icon 1) (:icon 59) nil)
      (:print (:scon "*") :semi) (:next i))
     (:line 420 (:rem "
")) (:line 430 (:for w (:icon 1) (:icon 6) nil))
     (:line 440 (:print (:apply chr$ (:icon 10))))
     (:line 450 (:print (:apply tab (:icon 4)))) (:line 460 (:rem "
"))
     (:line 470 (:for g (:icon 1) (:icon 7) nil))
     (:line 480 (:let (:var d) (:binary :plus (:var d) (:icon 1))))
     (:line 490
      (:let (:var d2) (:binary :minus (:var d) (:var s))))
     (:line 500 (:if (:binary :gt (:var d2) (:apply m (:var n))))
      (:goto 580))
     (:line 510 (:if (:binary :gt (:var d2) (:icon 0)))
      (:print (:var d2) :semi))
     (:line 520
      (:print
       (:apply tab
        (:binary :plus (:icon 4) (:binary :mul (:icon 8) (:var g))))
       :semi))
     (:line 530 (:next g)) (:line 540 (:rem "
"))
     (:line 550 (:if (:binary :eq (:var d2) (:apply m (:var n))))
      (:goto 590))
     (:line 560 (:next w)) (:line 570 (:rem "
"))
     (:line 580 (:let (:var d) (:binary :minus (:var d) (:var g))))
     (:line 590 (:next n)) (:line 600 (:rem "
"))
     (:line 610 (:for i (:icon 1) (:icon 6) nil)
      (:print (:apply chr$ (:icon 10)) :semi) (:next i))
     (:line 620
      (:data (:icon 0) (:icon 31) (:icon 28) (:icon 31) (:icon 30) (:icon 31)
       (:icon 30) (:icon 31) (:icon 31) (:icon 30) (:icon 31) (:icon 30)
       (:icon 31)))
     (:line 630 (:rem "  0,31,29,  ..., on leap years
")) (:line 640 (:end)))))



(defvar *change*
  '(((:line 2 (:print (:apply tab (:icon 33)) :semi (:scon "change")))
     (:line 4
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 5 (:print) (:print) (:print))
     (:line 6
      (:print (:scon "i, your friendly microcomputer, will determine")))
     (:line 8
      (:print (:scon "the correct change for items costing up to $100.")))
     (:line 9 (:print) (:print))
     (:line 10 (:print (:scon "cost of item") :semi)
      (:input nil ((:var a))) (:print (:scon "amount of payment") :semi)
      (:input nil ((:var p))))
     (:line 20 (:let (:var c) (:binary :minus (:var p) (:var a)))
      (:let (:var m) (:var c))
      (:if (:binary :ne (:var c) (:icon 0))) (:goto 90))
     (:line 25 (:print (:scon "correct amount, thank you.")))
     (:line 30 (:goto 400))
     (:line 90 (:if (:binary :gt (:var c) (:icon 0))) (:goto 120))
     (:line 95
      (:print (:scon "sorry, you have short-changed me $") :semi
       (:binary :minus (:var a) (:var p))))
     (:line 100 (:goto 10))
     (:line 120 (:print (:scon "your change, $") :semi (:var c)))
     (:line 130
      (:let (:var d)
       (:apply int (:binary :div (:var c) (:icon 10)))))
     (:line 140 (:if (:binary :eq (:var d) (:icon 0))) (:goto 155))
     (:line 150 (:print (:var d) :semi (:scon "ten dollar bill(s)")))
     (:line 155
      (:let (:var c)
       (:binary :minus (:var m) (:binary :mul (:var d) (:icon 10)))))
     (:line 160
      (:let (:var e)
       (:apply int (:binary :div (:var c) (:icon 5)))))
     (:line 170 (:if (:binary :eq (:var e) (:icon 0))) (:goto 185))
     (:line 180 (:print (:var e) :semi (:scon "five dollars bill(s)")))
     (:line 185
      (:let (:var c)
       (:binary :minus (:var m)
        (:binary :plus (:binary :mul (:var d) (:icon 10))
         (:binary :mul (:var e) (:icon 5))))))
     (:line 190 (:let (:var f) (:apply int (:var c))))
     (:line 200 (:if (:binary :eq (:var f) (:icon 0))) (:goto 215))
     (:line 210 (:print (:var f) :semi (:scon "one dollar bill(s)")))
     (:line 215
      (:let (:var c)
       (:binary :minus (:var m)
        (:binary :plus
         (:binary :plus (:binary :mul (:var d) (:icon 10))
          (:binary :mul (:var e) (:icon 5)))
         (:var f)))))
     (:line 220 (:let (:var c) (:binary :mul (:var c) (:icon 100))))
     (:line 225 (:let (:var n) (:var c)))
     (:line 230
      (:let (:var g)
       (:apply int (:binary :div (:var c) (:icon 50)))))
     (:line 240 (:if (:binary :eq (:var g) (:icon 0))) (:goto 255))
     (:line 250 (:print (:var g) :semi (:scon "one half dollar(s)")))
     (:line 255
      (:let (:var c)
       (:binary :minus (:var n) (:binary :mul (:var g) (:icon 50)))))
     (:line 260
      (:let (:var h)
       (:apply int (:binary :div (:var c) (:icon 25)))))
     (:line 270 (:if (:binary :eq (:var h) (:icon 0))) (:goto 285))
     (:line 280 (:print (:var h) :semi (:scon "quarter(s)")))
     (:line 285
      (:let (:var c)
       (:binary :minus (:var n)
        (:binary :plus (:binary :mul (:var g) (:icon 50))
         (:binary :mul (:var h) (:icon 25))))))
     (:line 290
      (:let (:var i)
       (:apply int (:binary :div (:var c) (:icon 10)))))
     (:line 300 (:if (:binary :eq (:var i) (:icon 0))) (:goto 315))
     (:line 310 (:print (:var i) :semi (:scon "dime(s)")))
     (:line 315
      (:let (:var c)
       (:binary :minus (:var n)
        (:binary :plus
         (:binary :plus (:binary :mul (:var g) (:icon 50))
          (:binary :mul (:var h) (:icon 25)))
         (:binary :mul (:var i) (:icon 10))))))
     (:line 320
      (:let (:var j)
       (:apply int (:binary :div (:var c) (:icon 5)))))
     (:line 330 (:if (:binary :eq (:var j) (:icon 0))) (:goto 345))
     (:line 340 (:print (:var j) :semi (:scon "nickel(s)")))
     (:line 345
      (:let (:var c)
       (:binary :minus (:var n)
        (:binary :plus
         (:binary :plus
          (:binary :plus (:binary :mul (:var g) (:icon 50))
           (:binary :mul (:var h) (:icon 25)))
          (:binary :mul (:var i) (:icon 10)))
         (:binary :mul (:var j) (:icon 5))))))
     (:line 350
      (:let (:var k)
       (:apply int (:binary :plus (:var c) (:fcon 0.5)))))
     (:line 360 (:if (:binary :eq (:var k) (:icon 0))) (:goto 380))
     (:line 370 (:print (:var k) :semi (:scon "penny(s)")))
     (:line 380 (:print (:scon "thank you, come again.")))
     (:line 390 (:print) (:print)) (:line 400 (:goto 10)) (:line 410 (:end)))))



(defvar *checkers*
  '(((:line 5 (:print (:apply tab (:icon 32)) :semi (:scon "checkers")))
     (:line 10
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 15 (:print) (:print) (:print))
     (:line 20
      (:print (:scon "this is the game of checkers.  the computer is x,")))
     (:line 25
      (:print (:scon "and you are o.  the computer will move first.")))
     (:line 30
      (:print (:scon "squares are referred to by a coordinate system.")))
     (:line 35 (:print (:scon "(0,0) is the lower left corner")))
     (:line 40 (:print (:scon "(0,7) is the upper left corner")))
     (:line 45 (:print (:scon "(7,0) is the lower right corner")))
     (:line 50 (:print (:scon "(7,7) is the upper right corner")))
     (:line 55
      (:print (:scon "the computer will type '+to' when you have another")))
     (:line 60
      (:print (:scon "jump.  type two negative numbers if you cannot jump.")))
     (:line 65 (:print) (:print) (:print))
     (:line 80
      (:dim ((:dimd r (:icon 4)) (:dimd2 s (:icon 7) (:icon 7))))
      (:let (:var g) (:uminus (:icon 1)))
      (:let (:apply r (:icon 0)) (:uminus (:icon 99))))
     (:line 90
      (:data (:icon 1) (:icon 0) (:icon 1) (:icon 0) (:icon 0) (:icon 0)
       (:uminus (:icon 1)) (:icon 0) (:icon 0) (:icon 1) (:icon 0) (:icon 0)
       (:icon 0) (:uminus (:icon 1)) (:icon 0) (:uminus (:icon 1)) (:icon 15)))
     (:line 120 (:for x (:icon 0) (:icon 7) nil)
      (:for y (:icon 0) (:icon 7) nil) (:read (:var j))
      (:if (:binary :eq (:var j) (:icon 15))) (:goto 180))
     (:line 160 (:let (:apply s (:var x) (:var y)) (:var j))
      (:goto 200))
     (:line 180 :restore (:read (:apply s (:var x) (:var y))))
     (:line 200 (:next y x))
     (:line 230 (:for x (:icon 0) (:icon 7) nil)
      (:for y (:icon 0) (:icon 7) nil)
      (:if
       (:binary :gt (:apply s (:var x) (:var y))
        (:uminus (:icon 1))))
      (:goto 350))
     (:line 310
      (:if
       (:binary :eq (:apply s (:var x) (:var y))
        (:uminus (:icon 1))))
      (:for a (:uminus (:icon 1)) (:icon 1) (:icon 2))
      (:let (:var b) (:var g)) (:gosub 650) (:next a))
     (:line 330
      (:if
       (:binary :eq (:apply s (:var x) (:var y))
        (:uminus (:icon 2))))
      (:for a (:uminus (:icon 1)) (:icon 1) (:icon 2))
      (:for b (:uminus (:icon 1)) (:icon 1) (:icon 2)) (:gosub 650)
      (:next b a))
     (:line 350 (:next y x) (:goto 1140))
     (:line 650 (:let (:var u) (:binary :plus (:var x) (:var a)))
      (:let (:var v) (:binary :plus (:var y) (:var b)))
      (:if
       (:lazy-binary :or
        (:lazy-binary :or
         (:lazy-binary :or (:binary :lt (:var u) (:icon 0))
          (:binary :gt (:var u) (:icon 7)))
         (:binary :lt (:var v) (:icon 0)))
        (:binary :gt (:var v) (:icon 7))))
      (:goto 870))
     (:line 740
      (:if (:binary :eq (:apply s (:var u) (:var v)) (:icon 0)))
      (:gosub 910) (:goto 870))
     (:line 770
      (:if (:binary :lt (:apply s (:var u) (:var v)) (:icon 0)))
      (:goto 870))
     (:line 790 (:let (:var u) (:binary :plus (:var u) (:var a)))
      (:let (:var v) (:binary :plus (:var v) (:var b)))
      (:if
       (:lazy-binary :or
        (:lazy-binary :or
         (:lazy-binary :or (:binary :lt (:var u) (:icon 0))
          (:binary :lt (:var v) (:icon 0)))
         (:binary :gt (:var u) (:icon 7)))
        (:binary :gt (:var v) (:icon 7))))
      (:goto 870))
     (:line 850
      (:if (:binary :eq (:apply s (:var u) (:var v)) (:icon 0)))
      (:gosub 910))
     (:line 870 (:return))
     (:line 910
      (:if
       (:lazy-binary :and (:binary :eq (:var v) (:icon 0))
        (:binary :eq (:apply s (:var x) (:var y))
         (:uminus (:icon 1)))))
      (:let (:var q) (:binary :plus (:var q) (:icon 2))))
     (:line 920
      (:if
       (:binary :eq (:apply abs (:binary :minus (:var y) (:var v)))
        (:icon 2)))
      (:let (:var q) (:binary :plus (:var q) (:icon 5))))
     (:line 960 (:if (:binary :eq (:var y) (:icon 7)))
      (:let (:var q) (:binary :minus (:var q) (:icon 2))))
     (:line 980
      (:if
       (:lazy-binary :or (:binary :eq (:var u) (:icon 0))
        (:binary :eq (:var u) (:icon 7))))
      (:let (:var q) (:binary :plus (:var q) (:icon 1))))
     (:line 1030 (:for c (:uminus (:icon 1)) (:icon 1) (:icon 2))
      (:if
       (:lazy-binary :or
        (:lazy-binary :or
         (:binary :lt (:binary :plus (:var u) (:var c)) (:icon 0))
         (:binary :gt (:binary :plus (:var u) (:var c)) (:icon 7)))
        (:binary :lt (:binary :plus (:var v) (:var g)) (:icon 0))))
      (:goto 1080))
     (:line 1035
      (:if
       (:binary :lt
        (:apply s (:binary :plus (:var u) (:var c))
         (:binary :plus (:var v) (:var g)))
        (:icon 0)))
      (:let (:var q) (:binary :plus (:var q) (:icon 1))) (:goto 1080))
     (:line 1040
      (:if
       (:lazy-binary :or
        (:lazy-binary :or
         (:binary :lt (:binary :minus (:var u) (:var c)) (:icon 0))
         (:binary :gt (:binary :minus (:var u) (:var c)) (:icon 7)))
        (:binary :gt (:binary :minus (:var v) (:var g)) (:icon 7))))
      (:goto 1080))
     (:line 1045
      (:if
       (:lazy-binary :and
        (:binary :gt
         (:apply s (:binary :plus (:var u) (:var c))
          (:binary :plus (:var v) (:var g)))
         (:icon 0))
        (:lazy-binary :or
         (:binary :eq
          (:apply s (:binary :minus (:var u) (:var c))
           (:binary :minus (:var v) (:var g)))
          (:icon 0))
         (:lazy-binary :and
          (:binary :eq (:binary :minus (:var u) (:var c)) (:var x))
          (:binary :eq (:binary :minus (:var v) (:var g))
           (:var y))))))
      (:let (:var q) (:binary :minus (:var q) (:icon 2))))
     (:line 1080 (:next c)
      (:if (:binary :gt (:var q) (:apply r (:icon 0))))
      (:let (:apply r (:icon 0)) (:var q))
      (:let (:apply r (:icon 1)) (:var x))
      (:let (:apply r (:icon 2)) (:var y))
      (:let (:apply r (:icon 3)) (:var u))
      (:let (:apply r (:icon 4)) (:var v)))
     (:line 1100 (:let (:var q) (:icon 0)) (:return))
     (:line 1140
      (:if (:binary :eq (:apply r (:icon 0)) (:uminus (:icon 99))))
      (:goto 1880))
     (:line 1230
      (:print (:apply chr$ (:icon 30)) (:scon "from")
       (:apply r (:icon 1)) :semi (:apply r (:icon 2)) (:scon "to")
       (:apply r (:icon 3)) :semi (:apply r (:icon 4)) :semi)
      (:let (:apply r (:icon 0)) (:uminus (:icon 99))))
     (:line 1240 (:if (:binary :eq (:apply r (:icon 4)) (:icon 0)))
      (:let (:apply s (:apply r (:icon 3)) (:apply r (:icon 4)))
       (:uminus (:icon 2)))
      (:goto 1420))
     (:line 1250
      (:let (:apply s (:apply r (:icon 3)) (:apply r (:icon 4)))
       (:apply s (:apply r (:icon 1)) (:apply r (:icon 2)))))
     (:line 1310
      (:let (:apply s (:apply r (:icon 1)) (:apply r (:icon 2)))
       (:icon 0))
      (:if
       (:binary :ne
        (:apply abs
         (:binary :minus (:apply r (:icon 1)) (:apply r (:icon 3))))
        (:icon 2)))
      (:goto 1420))
     (:line 1330
      (:let
       (:apply s
        (:binary :div
         (:binary :plus (:apply r (:icon 1)) (:apply r (:icon 3)))
         (:icon 2))
        (:binary :div
         (:binary :plus (:apply r (:icon 2)) (:apply r (:icon 4)))
         (:icon 2)))
       (:icon 0)))
     (:line 1340 (:let (:var x) (:apply r (:icon 3)))
      (:let (:var y) (:apply r (:icon 4)))
      (:if
       (:binary :eq (:apply s (:var x) (:var y))
        (:uminus (:icon 1))))
      (:let (:var b) (:uminus (:icon 2)))
      (:for a (:uminus (:icon 2)) (:icon 2) (:icon 4)) (:gosub 1370))
     (:line 1350
      (:if
       (:binary :eq (:apply s (:var x) (:var y))
        (:uminus (:icon 2))))
      (:for a (:uminus (:icon 2)) (:icon 2) (:icon 4))
      (:for b (:uminus (:icon 2)) (:icon 2) (:icon 4)) (:gosub 1370)
      (:next b))
     (:line 1360 (:next a)
      (:if (:binary :ne (:apply r (:icon 0)) (:uminus (:icon 99))))
      (:print (:scon "to") (:apply r (:icon 3)) :semi
       (:apply r (:icon 4)) :semi)
      (:let (:apply r (:icon 0)) (:uminus (:icon 99))) (:goto 1240))
     (:line 1365 (:goto 1420))
     (:line 1370 (:let (:var u) (:binary :plus (:var x) (:var a)))
      (:let (:var v) (:binary :plus (:var y) (:var b)))
      (:if
       (:lazy-binary :or
        (:lazy-binary :or
         (:lazy-binary :or (:binary :lt (:var u) (:icon 0))
          (:binary :gt (:var u) (:icon 7)))
         (:binary :lt (:var v) (:icon 0)))
        (:binary :gt (:var v) (:icon 7))))
      (:goto 1400))
     (:line 1380
      (:if
       (:lazy-binary :and
        (:binary :eq (:apply s (:var u) (:var v)) (:icon 0))
        (:binary :gt
         (:apply s
          (:binary :plus (:var x) (:binary :div (:var a) (:icon 2)))
          (:binary :plus (:var y) (:binary :div (:var b) (:icon 2))))
         (:icon 0))))
      (:gosub 910))
     (:line 1400 (:return))
     (:line 1420 (:print) (:print) (:print)
      (:for y (:icon 7) (:icon 0) (:uminus (:icon 1)))
      (:for x (:icon 0) (:icon 7) nil)
      (:let (:var i) (:binary :mul (:icon 5) (:var x)))
      (:print (:apply tab (:var i)) :semi))
     (:line 1430
      (:if (:binary :eq (:apply s (:var x) (:var y)) (:icon 0)))
      (:print (:scon ".") :semi))
     (:line 1470
      (:if (:binary :eq (:apply s (:var x) (:var y)) (:icon 1)))
      (:print (:scon "o") :semi))
     (:line 1490
      (:if
       (:binary :eq (:apply s (:var x) (:var y))
        (:uminus (:icon 1))))
      (:print (:scon "x") :semi))
     (:line 1510
      (:if
       (:binary :eq (:apply s (:var x) (:var y))
        (:uminus (:icon 2))))
      (:print (:scon "x*") :semi))
     (:line 1530
      (:if (:binary :eq (:apply s (:var x) (:var y)) (:icon 2)))
      (:print (:scon "o*") :semi))
     (:line 1550 (:next x) (:print (:scon " ")) (:print) (:next y)
      (:print))
     (:line 1552 (:for l (:icon 0) (:icon 7) nil))
     (:line 1554 (:for m (:icon 0) (:icon 7) nil))
     (:line 1556
      (:if
       (:lazy-binary :or
        (:binary :eq (:apply s (:var l) (:var m)) (:icon 1))
        (:binary :eq (:apply s (:var l) (:var m)) (:icon 2))))
      (:let (:var z) (:icon 1)))
     (:line 1558
      (:if
       (:lazy-binary :or
        (:binary :eq (:apply s (:var l) (:var m))
         (:uminus (:icon 1)))
        (:binary :eq (:apply s (:var l) (:var m))
         (:uminus (:icon 2)))))
      (:let (:var t) (:icon 1)))
     (:line 1560 (:next m)) (:line 1562 (:next l))
     (:line 1564 (:if (:binary :ne (:var z) (:icon 1))) (:goto 1885))
     (:line 1566 (:if (:binary :ne (:var t) (:icon 1))) (:goto 1880))
     (:line 1570 (:let (:var z) (:icon 0)) (:let (:var t) (:icon 0)))
     (:line 1590 (:input "from" ((:var e) (:var h)))
      (:let (:var x) (:var e)) (:let (:var y) (:var h))
      (:if (:binary :le (:apply s (:var x) (:var y)) (:icon 0)))
      (:goto 1590))
     (:line 1670 (:input "to" ((:var a) (:var b)))
      (:let (:var x) (:var a)) (:let (:var y) (:var b)))
     (:line 1680
      (:if
       (:lazy-binary :and
        (:lazy-binary :and
         (:binary :eq (:apply s (:var x) (:var y)) (:icon 0))
         (:binary :le
          (:apply abs (:binary :minus (:var a) (:var e)))
          (:icon 2)))
        (:binary :eq
         (:apply abs (:binary :minus (:var a) (:var e)))
         (:apply abs (:binary :minus (:var b) (:var h))))))
      (:goto 1700))
     (:line 1690
      (:print (:apply chr$ (:icon 7)) (:apply chr$ (:icon 11)) :semi)
      (:goto 1670))
     (:line 1700 (:let (:var i) (:icon 46)))
     (:line 1750
      (:let (:apply s (:var a) (:var b))
       (:apply s (:var e) (:var h)))
      (:let (:apply s (:var e) (:var h)) (:icon 0))
      (:if
       (:binary :ne (:apply abs (:binary :minus (:var e) (:var a)))
        (:icon 2)))
      (:goto 1810))
     (:line 1800
      (:let
       (:apply s
        (:binary :div (:binary :plus (:var e) (:var a)) (:icon 2))
        (:binary :div (:binary :plus (:var h) (:var b)) (:icon 2)))
       (:icon 0)))
     (:line 1802 (:input "+to" ((:var a1) (:var b1)))
      (:if (:binary :lt (:var a1) (:icon 0))) (:goto 1810))
     (:line 1804
      (:if
       (:lazy-binary :or
        (:lazy-binary :or
         (:binary :ne (:apply s (:var a1) (:var b1)) (:icon 0))
         (:binary :ne
          (:apply abs (:binary :minus (:var a1) (:var a)))
          (:icon 2)))
        (:binary :ne
         (:apply abs (:binary :minus (:var b1) (:var b)))
         (:icon 2))))
      (:goto 1802))
     (:line 1806 (:let (:var e) (:var a))
      (:let (:var h) (:var b)) (:let (:var a) (:var a1))
      (:let (:var b) (:var b1))
      (:let (:var i) (:binary :plus (:var i) (:icon 15))) (:goto 1750))
     (:line 1810 (:if (:binary :eq (:var b) (:icon 7)))
      (:let (:apply s (:var a) (:var b)) (:icon 2)))
     (:line 1830 (:goto 230))
     (:line 1880 (:print) (:print (:scon "you win.")) (:end))
     (:line 1885 (:print) (:print (:scon "i win.")) (:end)))))



(defvar *chemist*
  '(((:line 3 (:print (:apply tab (:icon 33)) :semi (:scon "chemist")))
     (:line 6
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 8 (:print) (:print) (:print))
     (:line 10
      (:print
       (:scon "the fictitious checmical kryptocyanic acid can only be")))
     (:line 20
      (:print
       (:scon "diluted by the ratio of 7 parts water to 3 parts acid.")))
     (:line 30
      (:print
       (:scon "if any other ratio is attempted, the acid becomes unstable")))
     (:line 40
      (:print
       (:scon "and soon explodes.  given the amount of acid, you must")))
     (:line 50
      (:print
       (:scon "decide who much water to add for dilution.  if you miss")))
     (:line 60 (:print (:scon "you face the consequences.")))
     (:line 100
      (:let (:var a)
       (:apply int (:binary :mul (:apply rnd (:icon 1)) (:icon 50)))))
     (:line 110
      (:let (:var w)
       (:binary :div (:binary :mul (:icon 7) (:var a)) (:icon 3))))
     (:line 120
      (:print (:var a) :semi
       (:scon "liters of kryptocyanic acid.  how much water") :semi))
     (:line 130 (:input nil ((:var r))))
     (:line 140
      (:let (:var d)
       (:apply abs (:binary :minus (:var w) (:var r)))))
     (:line 150
      (:if (:binary :gt (:var d) (:binary :div (:var w) (:icon 20))))
      (:goto 200))
     (:line 160
      (:print
       (:scon " good job! you may breathe now, but don't inhale the fumes!")))
     (:line 170 (:print)) (:line 180 (:goto 100))
     (:line 200
      (:print (:scon " sizzle!  you have just been desalinated into a blob")))
     (:line 210 (:print (:scon " of quivering protoplasm!")))
     (:line 220 (:let (:var t) (:binary :plus (:var t) (:icon 1))))
     (:line 230 (:if (:binary :eq (:var t) (:icon 9))) (:goto 260))
     (:line 240
      (:print (:scon " however, you may try again with another life.")))
     (:line 250 (:goto 100))
     (:line 260
      (:print
       (:scon " your 9 lives are used, but you will be long remembered for")))
     (:line 270
      (:print
       (:scon " your contributions to the field of comic book chemistry.")))
     (:line 280 (:end)))))



(defvar *chief*
  '(((:line 2 (:print (:apply tab (:icon 30)) (:scon "chief")))
     (:line 4
      (:print (:apply tab (:icon 15))
       (:scon "creative computing  morristown, new jersey")))
     (:line 6 (:print) (:print) (:print))
     (:line 10
      (:print (:scon "i am chief numbers freek, the great indian math god.")))
     (:line 20
      (:print (:scon "are you ready to take the test you called me out for")
       :semi))
     (:line 30 (:input nil ((:var a$))))
     (:line 40 (:if (:binary :eq (:var a$) (:scon "yes"))) (:goto 60))
     (:line 50 (:print (:scon "shut up, pale face with wise tongue.")))
     (:line 60
      (:print (:scon " take a number and add 3. divide this number by 5 and")))
     (:line 70
      (:print
       (:scon "multiply by 8. divide by 5 and add the same. subtract 1.")))
     (:line 80 (:print (:scon "  what do you have") :semi))
     (:line 90 (:input nil ((:var b))))
     (:line 100
      (:let (:var c)
       (:binary :minus
        (:binary :mul
         (:binary :div
          (:binary :mul
           (:binary :minus (:binary :plus (:var b) (:icon 1)) (:icon 5))
           (:icon 5))
          (:icon 8))
         (:icon 5))
        (:icon 3))))
     (:line 110
      (:print (:scon "i bet your number was") (:var c)
       (:scon ". am i right") :semi))
     (:line 120 (:input nil ((:var d$))))
     (:line 130 (:if (:binary :eq (:var d$) (:scon "yes"))) (:goto 500))
     (:line 140 (:print (:scon "what was your original number") :semi))
     (:line 150 (:input nil ((:var k))))
     (:line 155 (:let (:var f) (:binary :plus (:var k) (:icon 3))))
     (:line 160 (:let (:var g) (:binary :div (:var f) (:icon 5))))
     (:line 170 (:let (:var h) (:binary :mul (:var g) (:icon 8))))
     (:line 180
      (:let (:var i)
       (:binary :plus (:binary :div (:var h) (:icon 5)) (:icon 5))))
     (:line 190 (:let (:var j) (:binary :minus (:var i) (:icon 1))))
     (:line 200 (:print (:scon "so you think you're so smart, eh?")))
     (:line 210 (:print (:scon "now watch.")))
     (:line 230
      (:print (:var k) (:scon "plus 3 equals") (:var f)
       (:scon ". this divided by 5 equals") (:var g) (:scon ";")))
     (:line 240
      (:print (:scon "this times 8 equals") (:var h)
       (:scon ". if we divide by 5 and add 5,")))
     (:line 250
      (:print (:scon "we get") (:var i) (:scon ", which, minus 1, equals")
       (:var j) (:scon ".")))
     (:line 260 (:print (:scon "now do you believe me") :semi))
     (:line 270 (:input nil ((:var z$))))
     (:line 290 (:if (:binary :eq (:var z$) (:scon "yes"))) (:goto 500))
     (:line 295 (:print (:scon "you have made me mad!!!")))
     (:line 300 (:print (:scon "there must be a great lightning bolt!")))
     (:line 310 (:print) (:print))
     (:line 330 (:for x (:icon 30) (:icon 22) (:uminus (:icon 1))))
     (:line 340 (:print (:apply tab (:var x)) (:scon "x x")))
     (:line 350 (:next x))
     (:line 360 (:print (:apply tab (:icon 21)) (:scon "x xxx")))
     (:line 370 (:print (:apply tab (:icon 20)) (:scon "x   x")))
     (:line 380 (:print (:apply tab (:icon 19)) (:scon "xx x")))
     (:line 390 (:for y (:icon 20) (:icon 13) (:uminus (:icon 1))))
     (:line 400 (:print (:apply tab (:var y)) (:scon "x x")))
     (:line 410 (:next y))
     (:line 420 (:print (:apply tab (:icon 12)) (:scon "xx")))
     (:line 430 (:print (:apply tab (:icon 11)) (:scon "x")))
     (:line 440 (:print (:apply tab (:icon 10)) (:scon "*")))
     (:line 450 (:print) (:print (:scon "#########################")) (:print))
     (:line 470 (:print (:scon "i hope you believe me now, for your sake!!")))
     (:line 480 (:goto 520)) (:line 510 (:print (:scon "bye!!!")))
     (:line 520 (:end)))))



(defvar *chomp*
  '(((:line 10 (:print (:apply tab (:icon 33)) :semi (:scon "chomp")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print))
     (:line 40 (:dim ((:dimd2 a (:icon 10) (:icon 10)))))
     (:line 100 (:rem " *** the game of chomp *** copyright pcc 1973 ***
"))
     (:line 110 (:print))
     (:line 120
      (:print
       (:scon "this is the game of chomp (scientific american, jan 1973)")))
     (:line 130 (:print (:scon "do you want the rules (1=yes, 0=no!)") :semi))
     (:line 140 (:input nil ((:var r))))
     (:line 150 (:if (:binary :eq (:var r) (:icon 0))) (:goto 340))
     (:line 160 (:let (:var f) (:icon 1)))
     (:line 170 (:let (:var r) (:icon 5)))
     (:line 180 (:let (:var c) (:icon 7)))
     (:line 190
      (:print (:scon "chomp is for 1 or more players (humans only).")))
     (:line 200 (:print))
     (:line 210
      (:print (:scon "here's how a board looks (this one is 5 by 7):")))
     (:line 220 (:gosub 540)) (:line 230 (:print))
     (:line 240
      (:print (:scon "the board is a big cookie - r rows high and c columns")))
     (:line 250
      (:print
       (:scon "wide. you input r and c at the start. in the upper left")))
     (:line 260
      (:print
       (:scon "corner of the cookie is a poison square (p). the one who")))
     (:line 270
      (:print
       (:scon "chomps the poison square loses. to take a chomp, type the")))
     (:line 280
      (:print (:scon "row and column of one of the squares on the cookie.")))
     (:line 290
      (:print
       (:scon "all of the squares below and to the right of that square")))
     (:line 300
      (:print (:scon "(including that square, too) disappear -- chomp!!")))
     (:line 310
      (:print
       (:scon "no fair chomping squares that have already been chomped,")))
     (:line 320
      (:print
       (:scon "or that are outside the original dimensions of the cookie.")))
     (:line 330 (:print)) (:line 340 (:print (:scon "here we go...")))
     (:line 350 (:rem " 
")) (:line 360 (:let (:var f) (:icon 0)))
     (:line 370 (:for i (:icon 1) (:icon 10) nil))
     (:line 372 (:for j (:icon 1) (:icon 10) nil))
     (:line 375 (:let (:apply a (:var i) (:var j)) (:icon 0)))
     (:line 377 (:next j)) (:line 379 (:next i)) (:line 380 (:print))
     (:line 390 (:print (:scon "how many players") :semi))
     (:line 400 (:input nil ((:var p))))
     (:line 410 (:let (:var i1) (:icon 0)))
     (:line 420 (:print (:scon "how many rows") :semi))
     (:line 430 (:input nil ((:var r))))
     (:line 440 (:if (:binary :le (:var r) (:icon 9))) (:goto 470))
     (:line 450 (:print (:scon "too many rows (9 is maximum). now, ") :semi))
     (:line 460 (:goto 420))
     (:line 470 (:print (:scon "how many columns") :semi))
     (:line 480 (:input nil ((:var c))))
     (:line 490 (:if (:binary :le (:var c) (:icon 9))) (:goto 530))
     (:line 500
      (:print (:scon "too many columns (9 is maximum). now, ") :semi))
     (:line 510 (:goto 470)) (:line 530 (:print))
     (:line 540 (:for i (:icon 1) (:var r) nil))
     (:line 550 (:for j (:icon 1) (:var c) nil))
     (:line 560 (:let (:apply a (:var i) (:var j)) (:icon 1)))
     (:line 570 (:next j)) (:line 580 (:next i))
     (:line 590 (:let (:apply a (:icon 1) (:icon 1)) (:uminus (:icon 1))))
     (:line 600 (:rem " print the board
")) (:line 610 (:print))
     (:line 620
      (:print (:apply tab (:icon 7)) :semi (:scon "1 2 3 4 5 6 7 8 9")))
     (:line 630 (:for i (:icon 1) (:var r) nil))
     (:line 640 (:print (:var i) :semi (:apply tab (:icon 7)) :semi))
     (:line 650 (:for j (:icon 1) (:var c) nil))
     (:line 660
      (:if
       (:binary :eq (:apply a (:var i) (:var j))
        (:uminus (:icon 1))))
      (:goto 700))
     (:line 670
      (:if (:binary :eq (:apply a (:var i) (:var j)) (:icon 0)))
      (:goto 720))
     (:line 680 (:print (:scon "* ") :semi)) (:line 690 (:goto 710))
     (:line 700 (:print (:scon "p ") :semi)) (:line 710 (:next j))
     (:line 720 (:print)) (:line 730 (:next i)) (:line 740 (:print))
     (:line 750 (:if (:binary :eq (:var f) (:icon 0))) (:goto 770))
     (:line 760 (:return))
     (:line 770 (:rem " get chomps for each player in turn
"))
     (:line 780 (:let (:var i1) (:binary :plus (:var i1) (:icon 1))))
     (:line 790
      (:let (:var p1)
       (:binary :minus (:var i1)
        (:binary :mul
         (:apply int (:binary :div (:var i1) (:var p)))
         (:var p)))))
     (:line 800 (:if (:binary :ne (:var p1) (:icon 0))) (:goto 820))
     (:line 810 (:let (:var p1) (:var p)))
     (:line 820 (:print (:scon "player") :semi (:var p1)))
     (:line 830 (:print (:scon "coordinates of chomp (row,column)") :semi))
     (:line 840 (:input nil ((:var r1) (:var c1))))
     (:line 850 (:if (:binary :lt (:var r1) (:icon 1))) (:goto 920))
     (:line 860 (:if (:binary :gt (:var r1) (:var r))) (:goto 920))
     (:line 870 (:if (:binary :lt (:var c1) (:icon 1))) (:goto 920))
     (:line 880 (:if (:binary :gt (:var c1) (:var c))) (:goto 920))
     (:line 890
      (:if (:binary :eq (:apply a (:var r1) (:var c1)) (:icon 0)))
      (:goto 920))
     (:line 900
      (:if
       (:binary :eq (:apply a (:var r1) (:var c1))
        (:uminus (:icon 1))))
      (:goto 1010))
     (:line 910 (:goto 940))
     (:line 920
      (:print (:scon "no fair. you're trying to chomp on empty space!")))
     (:line 930 (:goto 820))
     (:line 940 (:for i (:var r1) (:var r) nil))
     (:line 950 (:for j (:var c1) (:var c) nil))
     (:line 960 (:let (:apply a (:var i) (:var j)) (:icon 0)))
     (:line 970 (:next j)) (:line 980 (:next i))
     (:line 990 (:goto 610))
     (:line 1000 (:rem " end of game detected in line 900
"))
     (:line 1010 (:print (:scon "you lose, player") :semi (:var p1)))
     (:line 1020 (:print))
     (:line 1030 (:print (:scon "again (1=yes, 0=no!)") :semi))
     (:line 1040 (:input nil ((:var r$))))
     (:line 1050 (:if (:binary :eq (:var r) (:icon 1))) (:goto 340))
     (:line 1060 (:end)))))



(defvar *civilwar*
  '(((:line 2 (:print (:apply tab (:icon 26)) (:scon "civil war")))
     (:line 4
      (:print (:apply tab (:icon 15))
       (:scon "creative computing  morristown, new jersey")))
     (:line 6 (:print) (:print) (:print))
     (:line 20
      (:rem " original game design: cram, goodie, hibbard lexington h.s.
"))
     (:line 30 (:rem " modifications: g. paul, r. hess (ties), 1973
"))
     (:line 50
      (:dim
       ((:dimd s (:icon 4)) (:dimd c$ (:icon 14))
        (:dimd m1 (:icon 14)) (:dimd m2 (:icon 14))
        (:dimd c1 (:icon 14)) (:dimd c2 (:icon 14))
        (:dimd m (:icon 14)))))
     (:line 60 (:rem " union info on likely confederate strategy
"))
     (:line 70 (:let (:apply s (:icon 1)) (:icon 25))
      (:let (:apply s (:icon 2)) (:icon 25))
      (:let (:apply s (:icon 3)) (:icon 25))
      (:let (:apply s (:icon 4)) (:icon 25)))
     (:line 82 (:rem " read historical data.
"))
     (:line 84 (:for d (:icon 1) (:icon 14) nil))
     (:line 86
      (:read (:apply c$ (:var d)) (:apply m1 (:var d))
       (:apply m2 (:var d)) (:apply c1 (:var d))
       (:apply c2 (:var d)) (:apply m (:var d))))
     (:line 88 (:next d))
     (:line 89 (:let (:var d) (:apply rnd (:uminus (:icon 1)))))
     (:line 90 (:print))
     (:line 100 (:print (:scon "do you want instructions") :semi))
     (:line 110 (:input nil ((:var x$))))
     (:line 120 (:if (:binary :eq (:var x$) (:scon "yes"))) (:goto 160))
     (:line 130 (:if (:binary :eq (:var x$) (:scon "no"))) (:goto 370))
     (:line 140 (:print (:scon "yes or no -- ") :semi)) (:line 150 (:goto 110))
     (:line 160 (:print) (:print) (:print) (:print))
     (:line 170 (:print (:scon "this is a civil war simulation.")))
     (:line 180
      (:print (:scon "to play type a response when the computer asks.")))
     (:line 190
      (:print
       (:scon "remember that all factors are interrelated and that your")))
     (:line 200
      (:print
       (:scon "responses could change history. facts and figures used are")))
     (:line 210
      (:print
       (:scon "based on the actual occurrence. most battles tend to result")))
     (:line 220
      (:print
       (:scon "as they did in the civil war, but it all depends on you!!")))
     (:line 230 (:print))
     (:line 240
      (:print (:scon "the object of the game is to win as many battles as ")
       :semi))
     (:line 245 (:print (:scon "possible."))) (:line 250 (:print))
     (:line 260 (:print (:scon "your choices for defensive strategy are:")))
     (:line 270 (:print (:scon "        (1) artillery attack")))
     (:line 280
      (:print (:scon "        (2) fortification against frontal attack")))
     (:line 290
      (:print (:scon "        (3) fortification against flanking maneuvers")))
     (:line 300 (:print (:scon "        (4) falling back")))
     (:line 310 (:print (:scon " your choices for offensive strategy are:")))
     (:line 320 (:print (:scon "        (1) artillery attack")))
     (:line 330 (:print (:scon "        (2) frontal attack")))
     (:line 340 (:print (:scon "        (3) flanking maneuvers")))
     (:line 350 (:print (:scon "        (4) encirclement")))
     (:line 360
      (:print (:scon "you may surrender by typing a '5' for your strategy.")))
     (:line 370 (:print) (:print) (:print)
      (:print (:scon "are there two generals present ") :semi))
     (:line 380 (:print (:scon "(answer yes or no)") :semi))
     (:line 390 (:input nil ((:var b$))))
     (:line 400 (:if (:binary :eq (:var b$) (:scon "yes"))) (:goto 430))
     (:line 410 (:if (:binary :ne (:var b$) (:scon "no"))) (:goto 380))
     (:line 420 (:print)
      (:print (:scon "you are the confederacy.   good luck!")))
     (:line 425 (:print)) (:line 430 (:let (:var d) (:icon 1)))
     (:line 440 (:if (:binary :ne (:var b$) (:scon "yes"))) (:goto 460))
     (:line 450 (:let (:var d) (:icon 2)))
     (:line 460
      (:print (:scon "select a battle by typing a number from 1 to 14 on")))
     (:line 470
      (:print
       (:scon "request.  type any other number to end the simulation.")))
     (:line 480
      (:print (:scon "but '0' brings back exact previous battle situation")))
     (:line 490 (:print (:scon "allowing you to replay it")))
     (:line 500 (:print))
     (:line 510
      (:print (:scon "note: a negative food$ entry causes the program to ")))
     (:line 520 (:print (:scon "use the entries from the previous battle")))
     (:line 530 (:print))
     (:line 540
      (:print (:scon "after requesting a battle, do you wish ") :semi))
     (:line 550 (:print (:scon "battle descriptions ") :semi))
     (:line 560 (:print (:scon "(answer yes or no)") :semi))
     (:line 570 (:input nil ((:var x$))))
     (:line 580 (:if (:binary :eq (:var x$) (:scon "yes"))) (:goto 600))
     (:line 590 (:if (:binary :ne (:var x$) (:scon "no"))) (:goto 560))
     (:line 600 (:let (:var l) (:icon 0)) (:let (:var w) (:icon 0))
      (:let (:var r1) (:icon 0)) (:let (:var q1) (:icon 0))
      (:let (:var m3) (:icon 0)) (:let (:var m4) (:icon 0))
      (:let (:var p1) (:icon 0)) (:let (:var p2) (:icon 0))
      (:let (:var t1) (:icon 0)) (:let (:var t2) (:icon 0)))
     (:line 610 (:let (:apply f (:icon 2)) (:icon 0))
      (:let (:apply h (:icon 2)) (:icon 0))
      (:let (:apply b (:icon 2)) (:icon 0)) (:let (:var r2) (:icon 0))
      (:let (:var q2) (:icon 0)) (:let (:var c6) (:icon 0))
      (:let (:var f) (:icon 0)) (:let (:var w0) (:icon 0))
      (:let (:var y) (:icon 0)) (:let (:var y2) (:icon 0))
      (:let (:var u) (:icon 0)) (:let (:var u2) (:icon 0)))
     (:line 620 (:print) (:print) (:print))
     (:line 630 (:print (:scon "which battle do you wish to simulate") :semi))
     (:line 640 (:input nil ((:var a))))
     (:line 650 (:if (:binary :ne (:var a) (:icon 0))) (:goto 660))
     (:line 655 (:if (:binary :ne (:var r) (:icon 0))) (:goto 1140))
     (:line 660 (:if (:binary :le (:var a) (:icon 0))) (:goto 2860))
     (:line 665 (:if (:binary :ge (:var a) (:icon 15))) (:goto 2860))
     (:line 670 (:let (:var c$) (:apply c$ (:var a))))
     (:line 680 (:let (:var m1) (:apply m1 (:var a))))
     (:line 690 (:let (:var m2) (:apply m2 (:var a))))
     (:line 700 (:let (:var c1) (:apply c1 (:var a))))
     (:line 710 (:let (:var c2) (:apply c2 (:var a))))
     (:line 720 (:let (:var m) (:apply m (:var a))))
     (:line 960 (:let (:var u) (:icon 0)))
     (:line 970 (:rem "  inflation calc
"))
     (:line 980
      (:let (:var i1)
       (:binary :plus (:icon 10)
        (:binary :mul (:binary :minus (:var l) (:var w)) (:icon 2)))))
     (:line 990
      (:let (:var i2)
       (:binary :plus (:icon 10)
        (:binary :mul (:binary :minus (:var w) (:var l)) (:icon 2)))))
     (:line 1000 (:rem " - money available
"))
     (:line 1010
      (:let (:apply d (:icon 1))
       (:binary :mul (:icon 100)
        (:apply int
         (:binary :plus
          (:binary :mul
           (:binary :div
            (:binary :mul (:var m1)
             (:binary :minus (:icon 100) (:var i1)))
            (:icon 2000))
           (:binary :plus (:icon 1)
            (:binary :div (:binary :minus (:var r1) (:var q1))
             (:binary :plus (:var r1) (:icon 1)))))
          (:fcon 0.5))))))
     (:line 1020
      (:let (:apply d (:icon 2))
       (:binary :mul (:icon 100)
        (:apply int
         (:binary :plus
          (:binary :div
           (:binary :mul (:var m2)
            (:binary :minus (:icon 100) (:var i2)))
           (:icon 2000))
          (:fcon 0.5))))))
     (:line 1030 (:if (:binary :ne (:var b$) (:scon "yes"))) (:goto 1050))
     (:line 1040
      (:let (:apply d (:icon 2))
       (:binary :mul (:icon 100)
        (:apply int
         (:binary :plus
          (:binary :mul
           (:binary :div
            (:binary :mul (:var m2)
             (:binary :minus (:icon 100) (:var i2)))
            (:icon 2000))
           (:binary :plus (:icon 1)
            (:binary :div (:binary :minus (:var r2) (:var q2))
             (:binary :plus (:var r2) (:icon 1)))))
          (:fcon 0.5))))))
     (:line 1050 (:rem " - men   available
"))
     (:line 1060
      (:let (:var m5)
       (:apply int
        (:binary :mul (:var m1)
         (:binary :plus (:icon 1)
          (:binary :div (:binary :minus (:var p1) (:var t1))
           (:binary :plus (:var m3) (:icon 1))))))))
     (:line 1070
      (:let (:var m6)
       (:apply int
        (:binary :mul (:var m2)
         (:binary :plus (:icon 1)
          (:binary :div (:binary :minus (:var p2) (:var t2))
           (:binary :plus (:var m4) (:icon 1))))))))
     (:line 1080
      (:let (:var f1)
       (:binary :div (:binary :mul (:icon 5) (:var m1)) (:icon 6))))
     (:line 1090 (:print) (:print) (:print) (:print) (:print))
     (:line 1100 (:print (:scon "this is the battle of ") :semi (:var c$)))
     (:line 1110 (:if (:binary :eq (:var x$) (:scon "no"))) (:goto 1150))
     (:line 1120 (:if (:binary :gt (:var a) (:icon 11))) (:goto 1130))
     (:line 1125
      (:on-goto (:var a)
       (3580 3620 3650 3690 3720 3750 3780 3800 3830 3860 3890)))
     (:line 1130
      (:on-goto (:binary :minus (:var a) (:icon 11)) (3920 3950 3980)))
     (:line 1140 (:print (:var c$) (:scon " instant replay")))
     (:line 1150 (:print))
     (:line 1160
      (:print (:scon " ") :comma (:scon "confederacy") :comma
       (:scon " union")))
     (:line 1170
      (:print (:scon "men") :comma (:scon " ") (:var m5) :comma (:scon " ")
       (:var m6)))
     (:line 1180
      (:print (:scon "money") :comma (:scon "$") :semi (:apply d (:icon 1))
       :comma (:scon "$") :semi (:apply d (:icon 2))))
     (:line 1190
      (:print (:scon "inflation") :comma (:scon " ") :semi
       (:binary :plus (:var i1) (:icon 15)) :semi (:scon "%") :comma
       (:scon " ") :semi (:var i2) :semi (:scon "%")))
     (:line 1195 (:print))
     (:line 1200 (:rem " - only in printout is confed inflation = i1+15%
"))
     (:line 1210 (:rem " - if two generals, input confed. first
"))
     (:line 1220 (:for i (:icon 1) (:var d) nil))
     (:line 1230 (:if (:binary :ne (:var b$) (:scon "yes"))) (:goto 1260))
     (:line 1240 (:if (:binary :eq (:var i) (:icon 2))) (:goto 1260))
     (:line 1250 (:print (:scon "confederate general---") :semi))
     (:line 1260 (:print (:scon "how much do you wish to spend for")))
     (:line 1270 (:print (:scon " - food......") :semi))
     (:line 1280 (:input nil ((:var f))))
     (:line 1290 (:if (:binary :ge (:var f) (:icon 0))) (:goto 1360))
     (:line 1300 (:if (:binary :ne (:var r1) (:icon 0))) (:goto 1330))
     (:line 1310 (:print (:scon "no previous entries")))
     (:line 1320 (:goto 1270))
     (:line 1330 (:print (:scon "assume you want to keep same allocations")))
     (:line 1340 (:print)) (:line 1350 (:goto 1510))
     (:line 1360 (:let (:apply f (:var i)) (:var f)))
     (:line 1370 (:print (:scon " - salaries..") :semi))
     (:line 1380 (:input nil ((:apply h (:var i)))))
     (:line 1390 (:let (:var n) (:icon 1)))
     (:line 1400 (:if (:binary :lt (:apply h (:var i)) (:icon 0)))
      (:goto 1490))
     (:line 1410 (:print (:scon " - ammunition") :semi))
     (:line 1420 (:input nil ((:apply b (:var i)))))
     (:line 1430 (:let (:var n) (:icon 2)))
     (:line 1440 (:if (:binary :lt (:apply b (:var i)) (:icon 0)))
      (:goto 1490))
     (:line 1450 (:print))
     (:line 1460
      (:if
       (:binary :le
        (:binary :plus
         (:binary :plus (:apply f (:var i))
          (:apply h (:var i)))
         (:apply b (:var i)))
        (:apply d (:var i))))
      (:goto 1510))
     (:line 1470
      (:print (:scon "think again! you have only $")
       (:apply d (:var i))))
     (:line 1480 (:goto 1270))
     (:line 1490 (:print (:scon "negative values not allowed.")))
     (:line 1500 (:on-goto (:var n) (1370 1410)))
     (:line 1510 (:if (:binary :ne (:var b$) (:scon "yes"))) (:goto 1550))
     (:line 1520 (:if (:binary :eq (:var i) (:icon 2))) (:goto 1550))
     (:line 1530 (:print (:scon "union general---") :semi))
     (:line 1540 (:next i))
     (:line 1550 (:for z (:icon 1) (:var d) nil))
     (:line 1560 (:if (:binary :ne (:var b$) (:scon "yes"))) (:goto 1620))
     (:line 1570 (:on-goto (:var z) (1580 1600)))
     (:line 1580 (:print (:scon "confederate ") :semi))
     (:line 1590 (:goto 1620))
     (:line 1600 (:print (:scon "      union ") :semi))
     (:line 1610 (:rem " - find morale
"))
     (:line 1620
      (:let (:var o)
       (:binary :plus
        (:binary :div
         (:binary :plus
          (:binary :mul (:icon 2) (:exp (:apply f (:var z)) (:icon 2)))
          (:exp (:apply h (:var z)) (:icon 2)))
         (:exp (:var f1) (:icon 2)))
        (:icon 1))))
     (:line 1630 (:if (:binary :lt (:var o) (:icon 10))) (:goto 1660))
     (:line 1640 (:print (:scon "morale is high"))) (:line 1650 (:goto 1700))
     (:line 1660 (:if (:binary :lt (:var o) (:icon 5))) (:goto 1690))
     (:line 1670 (:print (:scon "morale is fair"))) (:line 1680 (:goto 1700))
     (:line 1690 (:print (:scon "morale is poor")))
     (:line 1700 (:if (:binary :ne (:var b$) (:scon "yes"))) (:goto 1760))
     (:line 1710 (:let (:apply o (:var z)) (:var o)))
     (:line 1720 (:next z))
     (:line 1730 (:let (:var o2) (:apply o (:icon 2))))
     (:line 1740 (:let (:var o) (:apply o (:icon 1))))
     (:line 1750 (:print (:scon "confederate general---") :semi))
     (:line 1760 (:rem " - actual off/def battle situation
"))
     (:line 1770 (:if (:binary :ne (:var m) (:icon 3))) (:goto 1800))
     (:line 1780 (:print (:scon "you are on the offensive")))
     (:line 1790 (:goto 1840))
     (:line 1800 (:if (:binary :ne (:var m) (:icon 1))) (:goto 1830))
     (:line 1810 (:print (:scon "you are on the defensive")))
     (:line 1820 (:goto 1840))
     (:line 1830 (:print (:scon "both sides are on the offensive ")))
     (:line 1840 (:print)) (:line 1850 (:rem " - choose strategies
"))
     (:line 1860 (:if (:binary :ne (:var b$) (:scon "yes"))) (:goto 1910))
     (:line 1870 (:for i (:icon 1) (:icon 2) nil))
     (:line 1880 (:on-goto (:var i) (1890 1920)))
     (:line 1890 (:print (:scon "confederate strategy ") :semi))
     (:line 1900 (:goto 1920))
     (:line 1910 (:print (:scon "your strategy ") :semi))
     (:line 1920 (:input nil ((:var y))))
     (:line 1930
      (:if
       (:binary :lt (:apply abs (:binary :minus (:var y) (:icon 3)))
        (:icon 3)))
      (:goto 1960))
     (:line 1940
      (:print (:scon "strategy") :semi (:var y) :semi
       (:scon "not allowed.")))
     (:line 1950 (:goto 1910))
     (:line 1960 (:if (:binary :eq (:var b$) (:scon "yes"))) (:goto 2000))
     (:line 1970 (:if (:binary :eq (:var y) (:icon 5))) (:goto 2830))
     (:line 1980 (:gosub 3110)) (:line 1990 (:goto 2170))
     (:line 2000 (:if (:binary :eq (:var i) (:icon 2))) (:goto 2040))
     (:line 2010 (:let (:var y1) (:var y)))
     (:line 2020 (:print (:scon "union strategy ") :semi))
     (:line 2030 (:next i)) (:line 2040 (:let (:var y2) (:var y)))
     (:line 2050 (:let (:var y) (:var y1)))
     (:line 2060 (:if (:binary :eq (:var y2) (:icon 5))) (:goto 2020))
     (:line 2070 (:rem " : simulated losses-north
"))
     (:line 2080
      (:let (:var c6)
       (:binary :mul
        (:binary :div (:binary :mul (:icon 2) (:var c2)) (:icon 5))
        (:binary :plus (:icon 1)
         (:binary :div (:icon 1)
          (:binary :mul (:icon 2)
           (:binary :plus
            (:apply abs (:binary :minus (:var y2) (:var y)))
            (:icon 1))))))))
     (:line 2090
      (:let (:var c6)
       (:binary :mul (:var c6)
        (:binary :plus (:fcon 1.28)
         (:binary :div
          (:binary :div (:binary :mul (:icon 5) (:var m2)) (:icon 6))
          (:binary :plus (:apply b (:icon 2)) (:icon 1)))))))
     (:line 2100
      (:let (:var c6)
       (:apply int
        (:binary :plus
         (:binary :mul (:var c6)
          (:binary :plus (:icon 1) (:binary :div (:icon 1) (:var o2))))
         (:fcon 0.5)))))
     (:line 2110 (:rem " - if loss > men present, rescale losses
"))
     (:line 2120 (:let (:var e2) (:binary :div (:icon 100) (:var o2))))
     (:line 2130
      (:if
       (:binary :lt
        (:apply int (:binary :plus (:var c6) (:var e2)))
        (:var m6)))
      (:goto 2190))
     (:line 2140
      (:let (:var c6)
       (:apply int
        (:binary :div (:binary :mul (:icon 13) (:var m6)) (:icon 20)))))
     (:line 2150
      (:let (:var e2)
       (:binary :div (:binary :mul (:icon 7) (:var c6)) (:icon 13))))
     (:line 2160 (:let (:var u2) (:icon 1)))
     (:line 2170 (:rem " - calculate simulated losses
")) (:line 2180 (:print))
     (:line 2190 (:print) (:print)
      (:print :comma (:scon "confederacy") :comma (:scon "union")))
     (:line 2200
      (:let (:var c5)
       (:binary :mul
        (:binary :div (:binary :mul (:icon 2) (:var c1)) (:icon 5))
        (:binary :plus (:icon 1)
         (:binary :div (:icon 1)
          (:binary :mul (:icon 2)
           (:binary :plus
            (:apply abs (:binary :minus (:var y2) (:var y)))
            (:icon 1))))))))
     (:line 2210
      (:let (:var c5)
       (:apply int
        (:binary :plus
         (:binary :mul
          (:binary :mul (:var c5)
           (:binary :plus (:icon 1) (:binary :div (:icon 1) (:var o))))
          (:binary :plus (:fcon 1.28)
           (:binary :div (:var f1)
            (:binary :plus (:apply b (:icon 1)) (:icon 1)))))
         (:fcon 0.5)))))
     (:line 2220 (:let (:var e) (:binary :div (:icon 100) (:var o))))
     (:line 2230
      (:if
       (:binary :lt
        (:binary :plus (:var c5) (:binary :div (:icon 100) (:var o)))
        (:binary :mul (:var m1)
         (:binary :plus (:icon 1)
          (:binary :div (:binary :minus (:var p1) (:var t1))
           (:binary :plus (:var m3) (:icon 1)))))))
      (:goto 2270))
     (:line 2240
      (:let (:var c5)
       (:apply int
        (:binary :mul
         (:binary :div (:binary :mul (:icon 13) (:var m1)) (:icon 20))
         (:binary :plus (:icon 1)
          (:binary :div (:binary :minus (:var p1) (:var t1))
           (:binary :plus (:var m3) (:icon 1))))))))
     (:line 2250
      (:let (:var e)
       (:binary :div (:binary :mul (:icon 7) (:var c5)) (:icon 13))))
     (:line 2260 (:let (:var u) (:icon 1)))
     (:line 2270 (:if (:binary :eq (:var d) (:icon 1))) (:goto 2500))
     (:line 2280
      (:print (:scon "casualties") :comma (:var c5) :comma (:var c6)))
     (:line 2290
      (:print (:scon "desertions") :comma (:apply int (:var e)) :comma
       (:apply int (:var e2))))
     (:line 2300 (:print))
     (:line 2310 (:if (:binary :ne (:var b$) (:scon "yes"))) (:goto 2350))
     (:line 2320
      (:print (:scon "compared to the actual casualties at ") (:var c$)))
     (:line 2330
      (:print (:scon "confederate:")
       (:apply int
        (:binary :plus
         (:binary :mul (:icon 100) (:binary :div (:var c5) (:var c1)))
         (:fcon 0.5)))
       (:scon "% of the original")))
     (:line 2340
      (:print (:scon "union:      ")
       (:apply int
        (:binary :plus
         (:binary :mul (:icon 100) (:binary :div (:var c6) (:var c2)))
         (:fcon 0.5)))
       (:scon "% of the original")))
     (:line 2350 (:print)) (:line 2360 (:rem " - 1 who one
"))
     (:line 2370 (:if (:binary :ne (:var u) (:icon 1))) (:goto 2380))
     (:line 2375 (:if (:binary :eq (:var u2) (:icon 1))) (:goto 2460))
     (:line 2380 (:if (:binary :eq (:var u) (:icon 1))) (:goto 2420))
     (:line 2390 (:if (:binary :eq (:var u2) (:icon 1))) (:goto 2440))
     (:line 2400
      (:if
       (:binary :eq (:binary :plus (:var c5) (:var e))
        (:binary :plus (:var c6) (:var e2))))
      (:goto 2460))
     (:line 2410
      (:if
       (:binary :lt (:binary :plus (:var c5) (:var e))
        (:binary :plus (:var c6) (:var e2))))
      (:goto 2440))
     (:line 2420 (:print (:scon "the union wins ") (:var c$)))
     (:line 2430 (:goto 2600))
     (:line 2440 (:print (:scon "the confederacy wins ") (:var c$)))
     (:line 2450 (:goto 2660))
     (:line 2460 (:print (:scon "battle outcome unresolved")))
     (:line 2470 (:let (:var w0) (:binary :plus (:var w0) (:icon 1))))
     (:line 2480 (:if (:binary :eq (:var a) (:icon 0))) (:goto 2790))
     (:line 2490 (:goto 2680))
     (:line 2500
      (:let (:var c6)
       (:apply int
        (:binary :div
         (:binary :mul (:binary :mul (:icon 17) (:var c2)) (:var c1))
         (:binary :mul (:var c5) (:icon 20))))))
     (:line 2510 (:let (:var e2) (:binary :mul (:icon 5) (:var o))))
     (:line 2520 (:goto 2280))
     (:line 2530
      (:print (:scon "your casualties were ")
       (:apply int
        (:binary :plus
         (:binary :mul (:icon 100) (:binary :div (:var c5) (:var c1)))
         (:fcon 0.5)))
       (:scon "% of ")))
     (:line 2540
      (:print (:scon "the actual casualties at ") :semi (:var c$)))
     (:line 2550 (:print)) (:line 2560 (:rem " - find who won
"))
     (:line 2570 (:if (:binary :eq (:var u) (:icon 1))) (:goto 2590))
     (:line 2580
      (:if
       (:binary :lt (:binary :plus (:var c5) (:var e))
        (:binary :plus
         (:binary :div
          (:binary :mul (:binary :mul (:icon 17) (:var c2)) (:var c1))
          (:binary :mul (:var c5) (:icon 20)))
         (:binary :mul (:icon 5) (:var o)))))
      (:goto 2630))
     (:line 2590 (:print (:scon "you lose ") :semi (:var c$)))
     (:line 2600 (:if (:binary :eq (:var a) (:icon 0))) (:goto 2790))
     (:line 2610 (:let (:var l) (:binary :plus (:var l) (:icon 1))))
     (:line 2620 (:goto 2680))
     (:line 2630 (:print (:scon "you win ") :semi (:var c$)))
     (:line 2640 (:rem " - cumulative battle factors which alter historical
"))
     (:line 2650 (:rem "  resources available.if a replay don't update.
"))
     (:line 2660 (:if (:binary :eq (:var a) (:icon 0))) (:goto 2790))
     (:line 2670 (:let (:var w) (:binary :plus (:var w) (:icon 1))))
     (:line 2680
      (:let (:var t1)
       (:binary :plus (:binary :plus (:var t1) (:var c5))
        (:var e))))
     (:line 2690
      (:let (:var t2)
       (:binary :plus (:binary :plus (:var t2) (:var c6))
        (:var e2))))
     (:line 2700
      (:let (:var p1) (:binary :plus (:var p1) (:var c1))))
     (:line 2710
      (:let (:var p2) (:binary :plus (:var p2) (:var c2))))
     (:line 2720
      (:let (:var q1)
       (:binary :plus (:var q1)
        (:binary :plus
         (:binary :plus (:apply f (:icon 1)) (:apply h (:icon 1)))
         (:apply b (:icon 1))))))
     (:line 2730
      (:let (:var q2)
       (:binary :plus (:var q2)
        (:binary :plus
         (:binary :plus (:apply f (:icon 2)) (:apply h (:icon 2)))
         (:apply b (:icon 2))))))
     (:line 2740
      (:let (:var r1)
       (:binary :plus (:var r1)
        (:binary :div
         (:binary :mul (:var m1)
          (:binary :minus (:icon 100) (:var i1)))
         (:icon 20)))))
     (:line 2750
      (:let (:var r2)
       (:binary :plus (:var r2)
        (:binary :div
         (:binary :mul (:var m2)
          (:binary :minus (:icon 100) (:var i2)))
         (:icon 20)))))
     (:line 2760
      (:let (:var m3) (:binary :plus (:var m3) (:var m1))))
     (:line 2770
      (:let (:var m4) (:binary :plus (:var m4) (:var m2))))
     (:line 2780 (:gosub 3300))
     (:line 2790 (:let (:var u) (:icon 0)) (:let (:var u2) (:icon 0)))
     (:line 2800 (:print (:scon "---------------"))) (:line 2810 (:goto 620))
     (:line 2820 (:rem "------finish off
"))
     (:line 2830 (:print (:scon "the confederacy has surrendered")))
     (:line 2840 (:goto 2860))
     (:line 2850 (:print (:scon "the union has surrendered.")))
     (:line 2860 (:print) (:print) (:print) (:print) (:print) (:print))
     (:line 2870 (:print (:scon "the confederacy ") :semi))
     (:line 2880
      (:print (:scon "has won ") (:var w) (:scon " battles and lost ")
       (:var l)))
     (:line 2890 (:if (:binary :eq (:var y) (:icon 5))) (:goto 2940))
     (:line 2900 (:if (:binary :eq (:var y2) (:icon 5))) (:goto 2920))
     (:line 2910 (:if (:binary :le (:var w) (:var l))) (:goto 2940))
     (:line 2915 (:if (:binary :eq (:var y) (:icon 5))) (:goto 2940))
     (:line 2920 (:print (:scon "the confederacy has won the war")))
     (:line 2930 (:goto 2950))
     (:line 2940 (:print (:scon "the union has won the war")))
     (:line 2950 (:print))
     (:line 2960 (:if (:binary :eq (:var r1) (:icon 0))) (:goto 3100))
     (:line 2970
      (:print (:scon "for the ")
       (:binary :plus (:binary :plus (:var w) (:var l)) (:var w0))
       (:scon " battles fought (excuding reruns)")))
     (:line 2980
      (:print (:scon " ") :comma (:scon " ") :comma (:scon " ") :semi))
     (:line 2990 (:print (:scon "confederacy") :comma (:scon " union")))
     (:line 3000
      (:print (:scon "historical losses") :comma
       (:apply int (:binary :plus (:var p1) (:fcon 0.5))) :comma
       (:apply int (:binary :plus (:var p2) (:fcon 0.5)))))
     (:line 3010
      (:print (:scon "simulated losses") :comma
       (:apply int (:binary :plus (:var t1) (:fcon 0.5))) :comma
       (:apply int (:binary :plus (:var t2) (:fcon 0.5)))))
     (:line 3020 (:print))
     (:line 3030
      (:print (:scon "    % of original") :comma
       (:apply int
        (:binary :plus
         (:binary :mul (:icon 100) (:binary :div (:var t1) (:var p1)))
         (:fcon 0.5)))
       :comma
       (:apply int
        (:binary :plus
         (:binary :mul (:icon 100) (:binary :div (:var t2) (:var p2)))
         (:fcon 0.5)))))
     (:line 3040 (:if (:binary :eq (:var b$) (:scon "yes"))) (:goto 3100))
     (:line 3050 (:print))
     (:line 3060
      (:print (:scon "union intelligence suggests that the south used ")))
     (:line 3070
      (:print (:scon "strategies 1, 2, 3, 4 in the following percentages")))
     (:line 3080
      (:print (:apply s (:icon 1)) :semi (:apply s2 (:icon 2)) :semi
       (:apply s (:icon 3)) :semi (:apply s (:icon 4))))
     (:line 3090 (:rem "---------------------------------
"))
     (:line 3100 (:stop))
     (:line 3110 (:rem " - union strategy is computer chosen
"))
     (:line 3120 (:print (:scon "union strategy is ") :semi))
     (:line 3130 (:if (:binary :ne (:var a) (:icon 0))) (:goto 3180))
     (:line 3140 (:input nil ((:var y2))))
     (:line 3150 (:if (:binary :le (:var y2) (:icon 0))) (:goto 3160))
     (:line 3155 (:if (:binary :lt (:var y2) (:icon 5))) (:goto 3290))
     (:line 3160
      (:print
       (:scon "enter 1 , 2 ,3 , or 4 (usually previous union strategy)")))
     (:line 3170 (:goto 3140)) (:line 3180 (:let (:var s0) (:icon 0)))
     (:line 3190
      (:let (:var r)
       (:binary :mul (:icon 100) (:apply rnd (:icon 0)))))
     (:line 3200 (:for i (:icon 1) (:icon 4) nil))
     (:line 3210
      (:let (:var s0)
       (:binary :plus (:var s0) (:apply s (:var i)))))
     (:line 3220
      (:rem " - if actual strategy info is in program data statements
"))
     (:line 3230
      (:rem "   then r-100 is extra weight given to that stategy.
"))
     (:line 3240 (:if (:binary :lt (:var r) (:var s0))) (:goto 3270))
     (:line 3250 (:next i))
     (:line 3260
      (:rem " - if actual strat. in,then here is y2= hist. strat.
"))
     (:line 3270 (:let (:var y2) (:var i)))
     (:line 3280 (:print (:var y2))) (:line 3290 (:return))
     (:line 3300 (:rem " learn  present strategy, start forgetting old ones
"))
     (:line 3310
      (:rem " - present strategy of south gains 3*s, others lose s
"))
     (:line 3320
      (:rem "   probability points, unless a strategy falls below 5%.
"))
     (:line 3330 (:let (:var s) (:icon 3)))
     (:line 3340 (:let (:var s0) (:icon 0)))
     (:line 3350 (:for i (:icon 1) (:icon 4) nil))
     (:line 3360 (:if (:binary :le (:apply s (:var i)) (:icon 5)))
      (:goto 3390))
     (:line 3370
      (:let (:apply s (:var i))
       (:binary :minus (:apply s (:var i)) (:var s))))
     (:line 3380
      (:let (:var s0) (:binary :plus (:var s0) (:var s))))
     (:line 3390 (:next i))
     (:line 3400
      (:let (:apply s (:var y))
       (:binary :plus (:apply s (:var y)) (:var s0))))
     (:line 3410 (:return))
     (:line 3420
      (:rem " - historical data...can add more (strat.,etc) by inserting
"))
     (:line 3430
      (:rem "   data statements after appro. info, and adjusting read
"))
     (:line 3440
      (:data (:scon "bull run") (:icon 18000) (:icon 18500) (:icon 1967)
       (:icon 2708) (:icon 1)))
     (:line 3450
      (:data (:scon "shiloh") (:icon 40000) (:icon 44894) (:icon 10699)
       (:icon 13047) (:icon 3)))
     (:line 3460
      (:data (:scon "seven days") (:icon 95000) (:icon 115000) (:icon 20614)
       (:icon 15849) (:icon 3)))
     (:line 3470
      (:data (:scon "second bull run") (:icon 54000) (:icon 63000)
       (:icon 10000) (:icon 14000) (:icon 2)))
     (:line 3480
      (:data (:scon "antietam") (:icon 40000) (:icon 50000) (:icon 10000)
       (:icon 12000) (:icon 3)))
     (:line 3490
      (:data (:scon "fredericksburg") (:icon 75000) (:icon 120000) (:icon 5377)
       (:icon 12653) (:icon 1)))
     (:line 3500
      (:data (:scon "murfreesboro") (:icon 38000) (:icon 45000) (:icon 11000)
       (:icon 12000) (:icon 1)))
     (:line 3510
      (:data (:scon "chancellorsville") (:icon 32000) (:icon 90000)
       (:icon 13000) (:icon 17197) (:icon 2)))
     (:line 3520
      (:data (:scon "vicksburg") (:icon 50000) (:icon 70000) (:icon 12000)
       (:icon 19000) (:icon 1)))
     (:line 3530
      (:data (:scon "gettysburg") (:icon 72500) (:icon 85000) (:icon 20000)
       (:icon 23000) (:icon 3)))
     (:line 3540
      (:data (:scon "chickamauga") (:icon 66000) (:icon 60000) (:icon 18000)
       (:icon 16000) (:icon 2)))
     (:line 3550
      (:data (:scon "chattanooga") (:icon 37000) (:icon 60000) (:icon 36700)
       (:icon 5800) (:icon 2)))
     (:line 3560
      (:data (:scon "spotsylvania") (:icon 62000) (:icon 110000) (:icon 17723)
       (:icon 18000) (:icon 2)))
     (:line 3570
      (:data (:scon "atlanta") (:icon 65000) (:icon 100000) (:icon 8500)
       (:icon 3700) (:icon 1)))
     (:line 3580
      (:print
       (:scon "july 21, 1861.  gen. beauregard, commanding the south, met")))
     (:line 3590
      (:print
       (:scon "union forces with gen. mcdowell in a premature battle at")))
     (:line 3600
      (:print
       (:scon "bull run. gen. jackson helped push back the union attack.")))
     (:line 3610 (:goto 1150))
     (:line 3620
      (:print (:scon "april 6-7, 1862.  the confederate surprise attack at")))
     (:line 3630 (:print (:scon "shiloh failed due to poor organization.")))
     (:line 3640 (:goto 1150))
     (:line 3650
      (:print (:scon "june 25-july 1, 1862.  general lee (csa) upheld the")))
     (:line 3660
      (:print
       (:scon "offensive throughout the battle and forced gen. mcclellan")))
     (:line 3670 (:print (:scon "and the union forces away from richmond.")))
     (:line 3680 (:goto 1150))
     (:line 3690
      (:print (:scon "aug 29-30, 1862.  the combined confederate forces under")
       :semi))
     (:line 3695 (:print (:scon " lee")))
     (:line 3700
      (:print
       (:scon "and jackson drove the union forces back into washington.")))
     (:line 3710 (:goto 1150))
     (:line 3720
      (:print
       (:scon "sept 17, 1862.  the south failed to incorporate maryland")))
     (:line 3730 (:print (:scon "into the confederacy.")))
     (:line 3740 (:goto 1150))
     (:line 3750
      (:print (:scon "dec 13, 1862.  the confederacy under lee successfully")))
     (:line 3760
      (:print (:scon "repulsed an attack by the union under gen. burnside.")))
     (:line 3770 (:goto 1150))
     (:line 3780
      (:print (:scon "dec 31, 1862.  the south under gen. bragg won a close ")
       :semi))
     (:line 3785 (:print (:scon "battle."))) (:line 3790 (:goto 1150))
     (:line 3800
      (:print
       (:scon "may 1-6, 1863.  the south had a costly victory and lost")))
     (:line 3810
      (:print
       (:scon "one of their outstanding generals, 'stonewall' jackson.")))
     (:line 3820 (:goto 1150))
     (:line 3830
      (:print
       (:scon "july 4, 1863.  vicksburg was a costly defeat for the south")))
     (:line 3840
      (:print (:scon "because it gave the union access to the mississippi.")))
     (:line 3850 (:goto 1150))
     (:line 3860
      (:print (:scon "july 1-3, 1863.  a southern mistake by gen. lee at ")
       :semi))
     (:line 3865 (:print (:scon "gettysburg")))
     (:line 3870
      (:print (:scon "cost them one of the most crucial battles of the war.")))
     (:line 3880 (:goto 1150))
     (:line 3890
      (:print
       (:scon "sept. 15, 1863. confusion in a forest near chickamauga led")))
     (:line 3900 (:print (:scon "to a costly southern victory.")))
     (:line 3910 (:goto 1150))
     (:line 3920
      (:print
       (:scon "nov. 25, 1863. after the south had sieged gen. rosencrans'")))
     (:line 3930
      (:print (:scon "army for three months, gen. grant broke the siege.")))
     (:line 3940 (:goto 1150))
     (:line 3950
      (:print
       (:scon "may 5, 1864.  grant's plan to keep lee isolated began to")))
     (:line 3960
      (:print
       (:scon "fail here, and continued at cold harbor and petersburg.")))
     (:line 3970 (:goto 1150))
     (:line 3980
      (:print
       (:scon "august, 1864.  sherman and three veteran armies converged")))
     (:line 3990
      (:print
       (:scon "on atlanta and dealt the death blow to the confederacy.")))
     (:line 4000 (:goto 1150)) (:line 4010 (:end)))))



(defvar *combat*
  '(((:line 1 (:print (:apply tab (:icon 33)) :semi (:scon "combat")))
     (:line 2
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 3 (:print) (:print) (:print))
     (:line 4 (:print (:scon "i am at war with you."))
      (:print (:scon "we have 72000 soldiers apiece.")))
     (:line 5 (:print) (:print (:scon "distribute your forces.")))
     (:line 6 (:print :comma (:scon "me") :comma (:scon "  you")))
     (:line 7 (:print (:scon "army") :comma (:icon 30000) :comma))
     (:line 8 (:input nil ((:var a))))
     (:line 9 (:print (:scon "navy") :comma (:icon 20000) :comma))
     (:line 10 (:input nil ((:var b))))
     (:line 11 (:print (:scon "a. f.") :comma (:icon 22000) :comma))
     (:line 12 (:input nil ((:var c))))
     (:line 13
      (:if
       (:binary :gt
        (:binary :plus (:binary :plus (:var a) (:var b)) (:var c))
        (:icon 72000)))
      (:goto 5))
     (:line 14 (:let (:var d) (:icon 30000)))
     (:line 15 (:let (:var e) (:icon 20000)))
     (:line 16 (:let (:var f) (:icon 22000)))
     (:line 17
      (:print (:scon "you attack first. type (1) for army; (2) for navy;")))
     (:line 18 (:print (:scon "and (3) for air force.")))
     (:line 19 (:input nil ((:var y))))
     (:line 20 (:print (:scon "how many men")))
     (:line 21 (:input nil ((:var x))))
     (:line 22 (:if (:binary :lt (:var x) (:icon 0))) (:goto 20))
     (:line 23 (:on-goto (:var y) (100 200 300)))
     (:line 100 (:if (:binary :gt (:var x) (:var a))) (:goto 20))
     (:line 105
      (:if (:binary :lt (:var x) (:binary :div (:var a) (:icon 3))))
      (:goto 120))
     (:line 110
      (:if
       (:binary :lt (:var x)
        (:binary :div (:binary :mul (:icon 2) (:var a)) (:icon 3))))
      (:goto 150))
     (:line 115 (:goto 270))
     (:line 120
      (:print (:scon "you lost") :semi (:var x) :semi
       (:scon "men from your army.")))
     (:line 125
      (:let (:var a)
       (:apply int (:binary :minus (:var a) (:var x)))))
     (:line 130 (:goto 500))
     (:line 150
      (:print (:scon "you lost") :semi
       (:apply int (:binary :div (:var x) (:icon 3))) :semi
       (:scon "men, but i lost ") :semi
       (:apply int
        (:binary :div (:binary :mul (:icon 2) (:var d)) (:icon 3)))))
     (:line 155
      (:let (:var a)
       (:apply int
        (:binary :minus (:var a) (:binary :div (:var x) (:icon 3))))))
     (:line 160 (:let (:var d) (:icon 0))) (:line 165 (:goto 500))
     (:line 200 (:if (:binary :gt (:var x) (:var b))) (:goto 20))
     (:line 210
      (:if (:binary :lt (:var x) (:binary :div (:var e) (:icon 3))))
      (:goto 230))
     (:line 215
      (:if
       (:binary :lt (:var x)
        (:binary :div (:binary :mul (:icon 2) (:var e)) (:icon 3))))
      (:goto 250))
     (:line 220 (:goto 270))
     (:line 230 (:print (:scon "your attack was stopped!")))
     (:line 232
      (:let (:var b)
       (:apply int (:binary :minus (:var b) (:var x)))))
     (:line 235 (:goto 500))
     (:line 250
      (:print (:scon "you destroyed") :semi
       (:apply int
        (:binary :div (:binary :mul (:icon 2) (:var e)) (:icon 3)))
       :semi (:scon "of my army.")))
     (:line 255
      (:let (:var e)
       (:apply int (:binary :div (:var e) (:icon 3)))))
     (:line 260 (:goto 500))
     (:line 270
      (:print (:scon "you sunk one of my patrol boats, but i wiped out two")))
     (:line 275 (:print (:scon "of your air force bases and 3 army bases.")))
     (:line 280
      (:let (:var a)
       (:apply int (:binary :div (:var a) (:icon 3)))))
     (:line 285
      (:let (:var c)
       (:apply int (:binary :div (:var c) (:icon 3)))))
     (:line 290
      (:let (:var e)
       (:apply int
        (:binary :div (:binary :mul (:icon 2) (:var e)) (:icon 3)))))
     (:line 293 (:goto 500))
     (:line 300 (:if (:binary :gt (:var x) (:var c))) (:goto 20))
     (:line 310
      (:if (:binary :lt (:var x) (:binary :div (:var c) (:icon 3))))
      (:goto 350))
     (:line 320
      (:if
       (:binary :lt (:var x)
        (:binary :div (:binary :mul (:icon 2) (:var c)) (:icon 3))))
      (:goto 370))
     (:line 330 (:goto 380))
     (:line 350 (:print (:scon "your attack was wiped out.")))
     (:line 355
      (:let (:var c)
       (:apply int (:binary :minus (:var c) (:var x)))))
     (:line 360 (:goto 500))
     (:line 370
      (:print
       (:scon "we had a dogfight. you won - and finished your mission.")))
     (:line 375
      (:let (:var d)
       (:apply int
        (:binary :div (:binary :mul (:icon 2) (:var d)) (:icon 3)))))
     (:line 377
      (:let (:var e)
       (:apply int (:binary :div (:var e) (:icon 3)))))
     (:line 378
      (:let (:var f)
       (:apply int (:binary :div (:var f) (:icon 3)))))
     (:line 379 (:goto 500))
     (:line 380
      (:print (:scon "you wiped out one of my army patrols, but i destroyed")))
     (:line 381 (:print (:scon "two navy bases and bombed three army bases.")))
     (:line 385
      (:let (:var a)
       (:apply int (:binary :div (:var a) (:icon 4)))))
     (:line 387
      (:let (:var b)
       (:apply int (:binary :div (:var b) (:icon 3)))))
     (:line 390
      (:let (:var d)
       (:apply int
        (:binary :div (:binary :mul (:icon 2) (:var d)) (:icon 3)))))
     (:line 500 (:print))
     (:line 501 (:print :comma (:scon "you") :comma (:scon "me")))
     (:line 510
      (:print (:scon "army") :comma (:var a) :comma (:var d)))
     (:line 520
      (:print (:scon "navy") :comma (:var b) :comma (:var e)))
     (:line 530
      (:print (:scon "a. f.") :comma (:var c) :comma (:var f)))
     (:line 1000 (:print (:scon "what is your next move?")))
     (:line 1010 (:print (:scon "army=1  navy=2  air force=3")))
     (:line 1020 (:input nil ((:var g))))
     (:line 1030 (:print (:scon "how many men")))
     (:line 1040 (:input nil ((:var t))))
     (:line 1045 (:if (:binary :lt (:var t) (:icon 0))) (:goto 1030))
     (:line 1050 (:on-goto (:var g) (1600 1700 1800)))
     (:line 1600 (:if (:binary :gt (:var t) (:var a))) (:goto 1030))
     (:line 1610
      (:if (:binary :lt (:var t) (:binary :div (:var d) (:icon 2))))
      (:goto 1630))
     (:line 1615 (:print (:scon "you destroyed my army!")))
     (:line 1616 (:let (:var d) (:icon 0))) (:line 1617 (:goto 2000))
     (:line 1630 (:print (:scon "i wiped out your attack!")))
     (:line 1635
      (:let (:var a) (:binary :minus (:var a) (:var t))))
     (:line 1640 (:goto 2000))
     (:line 1700 (:if (:binary :gt (:var t) (:var b))) (:goto 1030))
     (:line 1710
      (:if (:binary :lt (:var t) (:binary :div (:var e) (:icon 2))))
      (:goto 1750))
     (:line 1720 (:goto 1770))
     (:line 1750
      (:print (:scon "i sunk two of your battleships, and my air force")))
     (:line 1751 (:print (:scon "wiped out your ungaurded capitol.")))
     (:line 1755 (:let (:var a) (:binary :div (:var a) (:icon 4))))
     (:line 1760 (:let (:var b) (:binary :div (:var b) (:icon 2))))
     (:line 1765 (:goto 2000))
     (:line 1770
      (:print (:scon "your navy shot down three of my xiii planes,")))
     (:line 1771 (:print (:scon "and sunk three battleships.")))
     (:line 1775
      (:let (:var f)
       (:binary :div (:binary :mul (:icon 2) (:var f)) (:icon 3))))
     (:line 1780 (:let (:var e) (:binary :div (:var e) (:icon 2))))
     (:line 1790 (:goto 2000))
     (:line 1800 (:if (:binary :gt (:var t) (:var c))) (:goto 1030))
     (:line 1810
      (:if (:binary :gt (:var t) (:binary :div (:var f) (:icon 2))))
      (:goto 1830))
     (:line 1820 (:goto 1850))
     (:line 1830
      (:print (:scon "my navy and air force in a combined attack left")))
     (:line 1831 (:print (:scon "your country in shambles.")))
     (:line 1835 (:let (:var a) (:binary :div (:var a) (:icon 3))))
     (:line 1837 (:let (:var b) (:binary :div (:var b) (:icon 3))))
     (:line 1840 (:let (:var c) (:binary :div (:var c) (:icon 3))))
     (:line 1845 (:goto 2000))
     (:line 1850
      (:print (:scon "one of your planes crashed into my house. i am dead.")))
     (:line 1851 (:print (:scon "my country fell apart.")))
     (:line 1860 (:goto 2010)) (:line 2000 (:print))
     (:line 2001 (:print (:scon "from the results of both of your attacks,")))
     (:line 2002
      (:if
       (:binary :gt
        (:binary :plus (:binary :plus (:var a) (:var b)) (:var c))
        (:binary :mul (:binary :div (:icon 3) (:icon 2))
         (:binary :plus (:binary :plus (:var d) (:var e))
          (:var f)))))
      (:goto 2010))
     (:line 2005
      (:if
       (:binary :lt
        (:binary :plus (:binary :plus (:var a) (:var b)) (:var c))
        (:binary :mul (:binary :div (:icon 2) (:icon 3))
         (:binary :plus (:binary :plus (:var d) (:var e))
          (:var f)))))
      (:goto 2015))
     (:line 2006
      (:print (:scon "the treaty of paris concluded that we take our")))
     (:line 2007 (:print (:scon "respective countries and live in peace.")))
     (:line 2008 (:goto 2020))
     (:line 2010 (:print (:scon "you won, oh! shucks!!!!")))
     (:line 2012 (:goto 2020))
     (:line 2015
      (:print (:scon "you lost-i conquered your country.  it serves you")))
     (:line 2016 (:print (:scon "right for playing this stupid game!!!")))
     (:line 2020 (:end)))))



(defvar *craps*
  '(((:line 5 (:print (:apply tab (:icon 33)) :semi (:scon "craps")))
     (:line 10
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 12 (:print) (:print) (:print))
     (:line 15 (:let (:var r) (:icon 0)))
     (:line 20
      (:print
       (:scon
        "2,3,12 are losers; 4,5,6,8,9,10 are points; 7,11 are natural winners.")))
     (:line 21 (:let (:var t) (:icon 1)))
     (:line 22 (:print (:scon "pick a number and input to roll dice") :semi))
     (:line 23 (:input nil ((:var z))))
     (:line 24 (:let (:var x) (:apply rnd (:icon 0))))
     (:line 25 (:let (:var t) (:binary :plus (:var t) (:icon 1))))
     (:line 26 (:if (:binary :le (:var t) (:var z))) (:goto 24))
     (:line 27 (:print (:scon "input the amount of your wager.") :semi))
     (:line 28 (:input nil ((:var f))))
     (:line 30 (:print (:scon "i will now throw the dice")))
     (:line 40
      (:let (:var e)
       (:apply int (:binary :mul (:icon 7) (:apply rnd (:icon 1))))))
     (:line 41
      (:let (:var s)
       (:apply int (:binary :mul (:icon 7) (:apply rnd (:icon 1))))))
     (:line 42 (:let (:var x) (:binary :plus (:var e) (:var s))))
     (:line 50 (:if (:binary :eq (:var x) (:icon 7))) (:goto 180))
     (:line 55 (:if (:binary :eq (:var x) (:icon 11))) (:goto 180))
     (:line 60 (:if (:binary :eq (:var x) (:icon 1))) (:goto 40))
     (:line 62 (:if (:binary :eq (:var x) (:icon 2))) (:goto 195))
     (:line 65 (:if (:binary :eq (:var x) (:icon 0))) (:goto 40))
     (:line 70 (:if (:binary :eq (:var x) (:icon 2))) (:goto 200))
     (:line 80 (:if (:binary :eq (:var x) (:icon 3))) (:goto 200))
     (:line 90 (:if (:binary :eq (:var x) (:icon 12))) (:goto 200))
     (:line 125 (:if (:binary :eq (:var x) (:icon 5))) (:goto 220))
     (:line 130 (:if (:binary :eq (:var x) (:icon 6))) (:goto 220))
     (:line 140 (:if (:binary :eq (:var x) (:icon 8))) (:goto 220))
     (:line 150 (:if (:binary :eq (:var x) (:icon 9))) (:goto 220))
     (:line 160 (:if (:binary :eq (:var x) (:icon 10))) (:goto 220))
     (:line 170 (:if (:binary :eq (:var x) (:icon 4))) (:goto 220))
     (:line 180 (:print (:var x) (:scon "- natural....a winner!!!!")))
     (:line 185
      (:print (:var x) (:scon "pays even money, you win") (:var f)
       (:scon "dollars")))
     (:line 190 (:goto 210))
     (:line 195 (:print (:var x) (:scon "- snake eyes....you lose.")))
     (:line 196 (:print (:scon "you lose") (:var f) (:scon "dollars.")))
     (:line 197 (:let (:var f) (:binary :minus (:icon 0) (:var f))))
     (:line 198 (:goto 210))
     (:line 200 (:print (:var x) (:scon " - craps...you lose.")))
     (:line 205 (:print (:scon "you lose") (:var f) (:scon "dollars.")))
     (:line 206 (:let (:var f) (:binary :minus (:icon 0) (:var f))))
     (:line 210 (:let (:var r) (:binary :plus (:var r) (:var f))))
     (:line 211 (:goto 320))
     (:line 220
      (:print (:var x) (:scon "is the point. i will roll again")))
     (:line 230
      (:let (:var h)
       (:apply int (:binary :mul (:icon 7) (:apply rnd (:icon 1))))))
     (:line 231
      (:let (:var q)
       (:apply int (:binary :mul (:icon 7) (:apply rnd (:icon 1))))))
     (:line 232 (:let (:var o) (:binary :plus (:var h) (:var q))))
     (:line 240 (:if (:binary :eq (:var o) (:icon 1))) (:goto 230))
     (:line 250 (:if (:binary :eq (:var o) (:icon 7))) (:goto 290))
     (:line 255 (:if (:binary :eq (:var o) (:icon 0))) (:goto 230))
     (:line 260 (:if (:binary :eq (:var o) (:var x))) (:goto 310))
     (:line 270 (:print (:var o) (:scon " - no point. i will roll again")))
     (:line 280 (:goto 230))
     (:line 290 (:print (:var o) (:scon "- craps. you lose.")))
     (:line 291 (:print (:scon "you lose $") (:var f)))
     (:line 292 (:let (:var f) (:binary :minus (:icon 0) (:var f))))
     (:line 293 (:goto 210)) (:line 300 (:goto 320))
     (:line 310
      (:print (:var x) (:scon "- a winner.........congrats!!!!!!!!")))
     (:line 311
      (:print (:var x) (:scon "at 2 to 1 odds pays you...let me see...")
       (:binary :mul (:icon 2) (:var f)) (:scon "dollars")))
     (:line 312 (:let (:var f) (:binary :mul (:icon 2) (:var f))))
     (:line 313 (:goto 210))
     (:line 320
      (:print (:scon " if you want to play again print 5 if not print 2")
       :semi))
     (:line 330 (:input nil ((:var m))))
     (:line 331 (:if (:binary :lt (:var r) (:icon 0))) (:goto 334))
     (:line 332 (:if (:binary :gt (:var r) (:icon 0))) (:goto 336))
     (:line 333 (:if (:binary :eq (:var r) (:icon 0))) (:goto 338))
     (:line 334
      (:print (:scon "you are now under $") :semi (:uminus (:var r))))
     (:line 335 (:goto 340))
     (:line 336 (:print (:scon "you are now ahead $") :semi (:var r)))
     (:line 337 (:goto 340))
     (:line 338 (:print (:scon "you are now even at 0")))
     (:line 340 (:if (:binary :eq (:var m) (:icon 5))) (:goto 27))
     (:line 341 (:if (:binary :lt (:var r) (:icon 0))) (:goto 350))
     (:line 342 (:if (:binary :gt (:var r) (:icon 0))) (:goto 353))
     (:line 343 (:if (:binary :eq (:var r) (:icon 0))) (:goto 355))
     (:line 350 (:print (:scon "too bad, you are in the hole. come again.")))
     (:line 351 (:goto 360))
     (:line 353
      (:print (:scon "congratulations---you came out a winner. come again!")))
     (:line 354 (:goto 360))
     (:line 355
      (:print
       (:scon "congratulations---you came out even, not bad for an amateur")))
     (:line 360 (:end)))))



(defvar *cube*
  '(((:line 10 (:print (:apply tab (:icon 34)) :semi (:scon "cube")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print))
     (:line 100
      (:print (:scon "do you want to see the instructions? (yes--1,no--0)")))
     (:line 110 (:input nil ((:var b7))))
     (:line 120 (:if (:binary :eq (:var b7) (:icon 0))) (:goto 370))
     (:line 130
      (:print
       (:scon "this is a game in which you will be playing against the")))
     (:line 140
      (:print
       (:scon "random decision of the computer. the field of play is a")))
     (:line 150
      (:print
       (:scon "cube of side 3. any of the 27 locations can be designated")))
     (:line 160
      (:print
       (:scon "by inputing three numbers such as 2,3,1. at the start,")))
     (:line 170
      (:print
       (:scon "you are automatically at location 1,1,1. the object of")))
     (:line 180
      (:print
       (:scon "the game is to get to location 3,3,3. one minor detail:")))
     (:line 190
      (:print
       (:scon "the computer will pick, at random, 5 locations at which")))
     (:line 200
      (:print
       (:scon "it will plant land mines. if you hit one of these locations")))
     (:line 210
      (:print
       (:scon "you lose. one other detail: you may move only one space ")))
     (:line 220
      (:print
       (:scon "in one direction each move. for  example: from 1,1,2 you")))
     (:line 230
      (:print (:scon "may move to 2,1,2 or 1,1,3. you may not change")))
     (:line 240
      (:print
       (:scon "two of the numbers on the same move. if you make an illegal")))
     (:line 250
      (:print
       (:scon "move, you lose and the computer takes the money you may")))
     (:line 260 (:print (:scon "have bet on that round.")))
     (:line 270 (:print)) (:line 280 (:print))
     (:line 290
      (:print
       (:scon "all yes or no questions will be answered by a 1 for yes")))
     (:line 300 (:print (:scon "or a 0 (zero) for no."))) (:line 310 (:print))
     (:line 320
      (:print
       (:scon "when stating the amount of a wager, print only the number")))
     (:line 330
      (:print
       (:scon
        "of dollars (example: 250)  you are automatically started with")))
     (:line 340 (:print (:scon "500 dollars in your account.")))
     (:line 350 (:print)) (:line 360 (:print (:scon "good luck!")))
     (:line 370 (:let (:var a1) (:icon 500)))
     (:line 380
      (:let (:var a)
       (:apply int
        (:binary :mul (:icon 3) (:apply rnd (:var x))))))
     (:line 390 (:if (:binary :ne (:var a) (:icon 0))) (:goto 410))
     (:line 400 (:let (:var a) (:icon 3)))
     (:line 410
      (:let (:var b)
       (:apply int
        (:binary :mul (:icon 3) (:apply rnd (:var x))))))
     (:line 420 (:if (:binary :ne (:var b) (:icon 0))) (:goto 440))
     (:line 430 (:let (:var b) (:icon 2)))
     (:line 440
      (:let (:var c)
       (:apply int
        (:binary :mul (:icon 3) (:apply rnd (:var x))))))
     (:line 450 (:if (:binary :ne (:var c) (:icon 0))) (:goto 470))
     (:line 460 (:let (:var c) (:icon 3)))
     (:line 470
      (:let (:var d)
       (:apply int
        (:binary :mul (:icon 3) (:apply rnd (:var x))))))
     (:line 480 (:if (:binary :ne (:var d) (:icon 0))) (:goto 500))
     (:line 490 (:let (:var d) (:icon 1)))
     (:line 500
      (:let (:var e)
       (:apply int
        (:binary :mul (:icon 3) (:apply rnd (:var x))))))
     (:line 510 (:if (:binary :ne (:var e) (:icon 0))) (:goto 530))
     (:line 520 (:let (:var e) (:icon 3)))
     (:line 530
      (:let (:var f)
       (:apply int
        (:binary :mul (:icon 3) (:apply rnd (:var x))))))
     (:line 540 (:if (:binary :ne (:var f) (:icon 0))) (:goto 560))
     (:line 550 (:let (:var f) (:icon 3)))
     (:line 560
      (:let (:var g)
       (:apply int
        (:binary :mul (:icon 3) (:apply rnd (:var x))))))
     (:line 570 (:if (:binary :ne (:var g) (:icon 0))) (:goto 590))
     (:line 580 (:let (:var g) (:icon 3)))
     (:line 590
      (:let (:var h)
       (:apply int
        (:binary :mul (:icon 3) (:apply rnd (:var x))))))
     (:line 600 (:if (:binary :ne (:var h) (:icon 0))) (:goto 620))
     (:line 610 (:let (:var h) (:icon 3)))
     (:line 620
      (:let (:var i)
       (:apply int
        (:binary :mul (:icon 3) (:apply rnd (:var x))))))
     (:line 630 (:if (:binary :ne (:var i) (:icon 0))) (:goto 650))
     (:line 640 (:let (:var i) (:icon 2)))
     (:line 650
      (:let (:var j)
       (:apply int
        (:binary :mul (:icon 3) (:apply rnd (:var x))))))
     (:line 660 (:if (:binary :ne (:var j) (:icon 0))) (:goto 680))
     (:line 670 (:let (:var j) (:icon 3)))
     (:line 680
      (:let (:var k)
       (:apply int
        (:binary :mul (:icon 3) (:apply rnd (:var x))))))
     (:line 690 (:if (:binary :ne (:var k) (:icon 0))) (:goto 710))
     (:line 700 (:let (:var k) (:icon 2)))
     (:line 710
      (:let (:var l)
       (:apply int
        (:binary :mul (:icon 3) (:apply rnd (:var x))))))
     (:line 720 (:if (:binary :ne (:var l) (:icon 0))) (:goto 740))
     (:line 730 (:let (:var l) (:icon 3)))
     (:line 740
      (:let (:var m)
       (:apply int
        (:binary :mul (:icon 3) (:apply rnd (:var x))))))
     (:line 750 (:if (:binary :ne (:var m) (:icon 0))) (:goto 770))
     (:line 760 (:let (:var m) (:icon 3)))
     (:line 770
      (:let (:var n)
       (:apply int
        (:binary :mul (:icon 3) (:apply rnd (:var x))))))
     (:line 780 (:if (:binary :ne (:var n) (:icon 0))) (:goto 800))
     (:line 790 (:let (:var n) (:icon 1)))
     (:line 800
      (:let (:var o)
       (:apply int
        (:binary :mul (:icon 3) (:apply rnd (:var x))))))
     (:line 810 (:if (:binary :ne (:var o) (:icon 0))) (:goto 830))
     (:line 820 (:let (:var o) (:icon 3)))
     (:line 830 (:print (:scon "want to make a wager?")))
     (:line 840 (:input nil ((:var z))))
     (:line 850 (:if (:binary :eq (:var z) (:icon 0))) (:goto 920))
     (:line 860 (:print (:scon "how much ") :semi))
     (:line 870 (:input nil ((:var z1))))
     (:line 876 (:if (:binary :lt (:var a1) (:var z1))) (:goto 1522))
     (:line 880 (:let (:var w) (:icon 1)))
     (:line 890 (:let (:var x) (:icon 1)))
     (:line 900 (:let (:var y) (:icon 1))) (:line 910 (:print))
     (:line 920 (:print (:scon "it's your move:  ") :semi))
     (:line 930 (:input nil ((:var p) (:var q) (:var r))))
     (:line 940
      (:if (:binary :gt (:var p) (:binary :plus (:var w) (:icon 1))))
      (:goto 1030))
     (:line 950
      (:if (:binary :eq (:var p) (:binary :plus (:var w) (:icon 1))))
      (:goto 1000))
     (:line 960
      (:if (:binary :gt (:var q) (:binary :plus (:var x) (:icon 1))))
      (:goto 1030))
     (:line 970
      (:if (:binary :eq (:var q) (:binary :plus (:var x) (:icon 1))))
      (:goto 1010))
     (:line 980
      (:if (:binary :gt (:var r) (:binary :plus (:var y) (:icon 1))))
      (:goto 1030))
     (:line 990 (:goto 1050))
     (:line 1000
      (:if (:binary :ge (:var q) (:binary :plus (:var x) (:icon 1))))
      (:goto 1030))
     (:line 1010
      (:if (:binary :ge (:var r) (:binary :plus (:var y) (:icon 1))))
      (:goto 1030))
     (:line 1020 (:goto 1050))
     (:line 1030 (:print) (:print (:scon "illegal move. you lose.")))
     (:line 1040 (:goto 1440)) (:line 1050 (:let (:var w) (:var p)))
     (:line 1060 (:let (:var x) (:var q)))
     (:line 1070 (:let (:var y) (:var r)))
     (:line 1080 (:if (:binary :eq (:var p) (:icon 3))) (:goto 1100))
     (:line 1090 (:goto 1130))
     (:line 1100 (:if (:binary :eq (:var q) (:icon 3))) (:goto 1120))
     (:line 1110 (:goto 1130))
     (:line 1120 (:if (:binary :eq (:var r) (:icon 3))) (:goto 1530))
     (:line 1130 (:if (:binary :eq (:var p) (:var a))) (:goto 1150))
     (:line 1140 (:goto 1180))
     (:line 1150 (:if (:binary :eq (:var q) (:var b))) (:goto 1170))
     (:line 1160 (:goto 1180))
     (:line 1170 (:if (:binary :eq (:var r) (:var c))) (:goto 1400))
     (:line 1180 (:if (:binary :eq (:var p) (:var d))) (:goto 1200))
     (:line 1190 (:goto 1230))
     (:line 1200 (:if (:binary :eq (:var q) (:var e))) (:goto 1220))
     (:line 1210 (:goto 1230))
     (:line 1220 (:if (:binary :eq (:var r) (:var f))) (:goto 1400))
     (:line 1230 (:if (:binary :eq (:var p) (:var g))) (:goto 1250))
     (:line 1240 (:goto 1280))
     (:line 1250 (:if (:binary :eq (:var q) (:var h))) (:goto 1270))
     (:line 1260 (:goto 1280))
     (:line 1270 (:if (:binary :eq (:var r) (:var i))) (:goto 1400))
     (:line 1280 (:if (:binary :eq (:var p) (:var j))) (:goto 1300))
     (:line 1290 (:goto 1330))
     (:line 1300 (:if (:binary :eq (:var q) (:var k))) (:goto 1320))
     (:line 1310 (:goto 1330))
     (:line 1320 (:if (:binary :eq (:var r) (:var l))) (:goto 1440))
     (:line 1330 (:if (:binary :eq (:var p) (:var m))) (:goto 1350))
     (:line 1340 (:goto 1380))
     (:line 1350 (:if (:binary :eq (:var q) (:var n))) (:goto 1370))
     (:line 1360 (:goto 1380))
     (:line 1370 (:if (:binary :eq (:var r) (:var o))) (:goto 1400))
     (:line 1380 (:print (:scon "next move: ") :semi)) (:line 1390 (:goto 930))
     (:line 1400 (:print (:scon "******bang******")))
     (:line 1410 (:print (:scon "you lose!"))) (:line 1420 (:print))
     (:line 1430 (:print))
     (:line 1440 (:if (:binary :eq (:var z) (:icon 0))) (:goto 1580))
     (:line 1450 (:print))
     (:line 1460
      (:let (:var z2) (:binary :minus (:var a1) (:var z1))))
     (:line 1470 (:if (:binary :gt (:var z2) (:icon 0))) (:goto 1500))
     (:line 1480 (:print (:scon "you bust."))) (:line 1490 (:goto 1610))
     (:line 1500
      (:print (:scon " you now have") :semi (:var z2) :semi
       (:scon "dollars.")))
     (:line 1510 (:let (:var a1) (:var z2))) (:line 1520 (:goto 1580))
     (:line 1522 (:print (:scon "tried to fool me; bet again") :semi))
     (:line 1525 (:goto 870)) (:line 1530 (:print (:scon "congratulations!")))
     (:line 1540 (:if (:binary :eq (:var z) (:icon 0))) (:goto 1580))
     (:line 1550
      (:let (:var z2) (:binary :plus (:var a1) (:var z1))))
     (:line 1560
      (:print (:scon "you now have") :semi (:var z2) :semi
       (:scon "dollars.")))
     (:line 1570 (:let (:var a1) (:var z2)))
     (:line 1580 (:print (:scon "do you want to try again ") :semi))
     (:line 1590 (:input nil ((:var s))))
     (:line 1600 (:if (:binary :eq (:var s) (:icon 1))) (:goto 380))
     (:line 1610 (:print (:scon "tough luck!"))) (:line 1620 (:print))
     (:line 1630 (:print (:scon "goodbye."))) (:line 1640 (:end)))))



(defvar *depthcharge*
  '(((:line 2
      (:print (:apply tab (:icon 30)) :semi (:scon "depth charge")))
     (:line 4
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 6 (:print) (:print) (:print))
     (:line 20 (:input "dimension of search area" ((:var g))) (:print))
     (:line 30
      (:let (:var n)
       (:binary :plus
        (:apply int
         (:binary :div (:apply log (:var g))
          (:apply log (:icon 2))))
        (:icon 1))))
     (:line 40
      (:print (:scon "you are the captain of the destroyer uss computer")))
     (:line 50
      (:print (:scon "an enemy sub has been causing you trouble.  your")))
     (:line 60
      (:print (:scon "mission is to destroy it.  you have") :semi (:var n)
       :semi (:scon "shots.")))
     (:line 70 (:print (:scon "specify depth charge explosion point with a")))
     (:line 80 (:print (:scon "trio of numbers -- the first two are the")))
     (:line 90 (:print (:scon "surface coordinates; the third is the depth.")))
     (:line 100 (:print) (:print (:scon "good luck !")) (:print))
     (:line 110
      (:let (:var a)
       (:apply int (:binary :mul (:var g) (:apply rnd (:icon 1)))))
      (:let (:var b)
       (:apply int (:binary :mul (:var g) (:apply rnd (:icon 1)))))
      (:let (:var c)
       (:apply int
        (:binary :mul (:var g) (:apply rnd (:icon 1))))))
     (:line 120 (:for d (:icon 1) (:var n) nil) (:print)
      (:print (:scon "trial #") :semi (:var d) :semi)
      (:input nil ((:var x) (:var y) (:var z))))
     (:line 130
      (:if
       (:binary :eq
        (:binary :plus
         (:binary :plus
          (:apply abs (:binary :minus (:var x) (:var a)))
          (:apply abs (:binary :minus (:var y) (:var b))))
         (:apply abs (:binary :minus (:var z) (:var c))))
        (:icon 0)))
      (:goto 300))
     (:line 140 (:gosub 500) (:print) (:next d))
     (:line 200 (:print)
      (:print (:scon "you have been torpedoed!  abandon ship!")))
     (:line 210
      (:print (:scon "the submarine was at") :semi (:var a) :semi
       (:scon ",") :semi (:var b) :semi (:scon ",") :semi (:var c))
      (:goto 400))
     (:line 300 (:print)
      (:print (:scon "b o o m ! ! you found it in") :semi (:var d) :semi
       (:scon "tries!")))
     (:line 400 (:print) (:print)
      (:input "another game (y or n)" ((:var a$))))
     (:line 410 (:if (:binary :eq (:var a$) (:scon "y"))) (:goto 100))
     (:line 420 (:print (:scon "ok.  hope you enjoyed yourself.")) (:goto 600))
     (:line 500 (:print (:scon "sonar reports shot was ") :semi))
     (:line 510 (:if (:binary :gt (:var y) (:var b)))
      (:print (:scon "north") :semi))
     (:line 520 (:if (:binary :lt (:var y) (:var b)))
      (:print (:scon "south") :semi))
     (:line 530 (:if (:binary :gt (:var x) (:var a)))
      (:print (:scon "east") :semi))
     (:line 540 (:if (:binary :lt (:var x) (:var a)))
      (:print (:scon "west") :semi))
     (:line 550
      (:if
       (:lazy-binary :or (:binary :ne (:var y) (:var b))
        (:binary :ne (:var x) (:var a))))
      (:print (:scon " and") :semi))
     (:line 560 (:if (:binary :gt (:var z) (:var c)))
      (:print (:scon " too low.")))
     (:line 570 (:if (:binary :lt (:var z) (:var c)))
      (:print (:scon " too high.")))
     (:line 580 (:if (:binary :eq (:var z) (:var c)))
      (:print (:scon " depth ok.")))
     (:line 590 (:return)) (:line 600 (:end)))))



(defvar *diamond*
  '(((:line 1 (:print (:apply tab (:icon 33)) :semi (:scon "diamond")))
     (:line 2
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 3 (:print) (:print) (:print))
     (:line 4 (:print (:scon "for a pretty diamond pattern,")))
     (:line 5 (:input "type in an odd number between 5 and 21" ((:var r)))
      (:print))
     (:line 6
      (:let (:var q)
       (:apply int (:binary :div (:icon 60) (:var r))))
      (:let (:var a$) (:scon "cc")))
     (:line 8 (:for l (:icon 1) (:var q) nil))
     (:line 10 (:let (:var x) (:icon 1)) (:let (:var y) (:var r))
      (:let (:var z) (:icon 2)))
     (:line 20 (:for n (:var x) (:var y) (:var z)))
     (:line 25
      (:print
       (:apply tab
        (:binary :div (:binary :minus (:var r) (:var n)) (:icon 2)))
       :semi))
     (:line 28 (:for m (:icon 1) (:var q) nil))
     (:line 29 (:let (:var c) (:icon 1)))
     (:line 30 (:for a (:icon 1) (:var n) nil))
     (:line 32 (:if (:binary :gt (:var c) (:apply len (:var a$))))
      (:print (:scon "!") :semi) (:goto 50))
     (:line 34
      (:print (:apply mid$ (:var a$) (:var c) (:icon 1)) :semi))
     (:line 36 (:let (:var c) (:binary :plus (:var c) (:icon 1))))
     (:line 50 (:next a))
     (:line 53 (:if (:binary :eq (:var m) (:var q))) (:goto 60))
     (:line 55
      (:print
       (:apply tab
        (:binary :plus (:binary :mul (:var r) (:var m))
         (:binary :div (:binary :minus (:var r) (:var n)) (:icon 2))))
       :semi))
     (:line 56 (:next m)) (:line 60 (:print)) (:line 70 (:next n))
     (:line 83 (:if (:binary :ne (:var x) (:icon 1))) (:goto 95))
     (:line 85 (:let (:var x) (:binary :minus (:var r) (:icon 2)))
      (:let (:var y) (:icon 1)) (:let (:var z) (:uminus (:icon 2))))
     (:line 90 (:goto 20)) (:line 95 (:next l)) (:line 99 (:end)))))



(defvar *dice*
  '(((:line 2 (:print (:apply tab (:icon 34)) :semi (:scon "dice")))
     (:line 4
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 6 (:print) (:print) (:print))
     (:line 10 (:dim ((:dimd f (:icon 12)))))
     (:line 20 (:rem "  danny freidus
"))
     (:line 30 (:print (:scon "this program simulates the rolling of a")))
     (:line 40 (:print (:scon "pair of dice.")))
     (:line 50
      (:print
       (:scon "you enter the number of times you want the computer to")))
     (:line 60
      (:print (:scon "'roll' the dice.  watch out, very large numbers take")))
     (:line 70
      (:print (:scon "a long time.  in particular, numbers over 5000.")))
     (:line 80 (:for q (:icon 1) (:icon 12) nil))
     (:line 90 (:let (:apply f (:var q)) (:icon 0)))
     (:line 100 (:next q))
     (:line 110 (:print) (:print (:scon "how many rolls") :semi))
     (:line 120 (:input nil ((:var x))))
     (:line 130 (:for s (:icon 1) (:var x) nil))
     (:line 140
      (:let (:var a)
       (:apply int
        (:binary :plus (:binary :mul (:icon 6) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 150
      (:let (:var b)
       (:apply int
        (:binary :plus (:binary :mul (:icon 6) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 160 (:let (:var r) (:binary :plus (:var a) (:var b))))
     (:line 170
      (:let (:apply f (:var r))
       (:binary :plus (:apply f (:var r)) (:icon 1))))
     (:line 180 (:next s)) (:line 185 (:print))
     (:line 190
      (:print (:scon "total spots") :comma (:scon "number of times")))
     (:line 200 (:for v (:icon 2) (:icon 12) nil))
     (:line 210 (:print (:var v) :comma (:apply f (:var v))))
     (:line 220 (:next v)) (:line 221 (:print))
     (:line 222 (:print) (:print (:scon "try again") :semi))
     (:line 223 (:input nil ((:var z$))))
     (:line 224 (:if (:binary :eq (:var z$) (:scon "yes"))) (:goto 80))
     (:line 240 (:end)))))



(defvar *digits*
  '(((:line 10 (:print (:apply tab (:icon 33)) :semi (:scon "digits")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print))
     (:line 210 (:print (:scon "this is a game of guessing.")))
     (:line 220
      (:print (:scon "for instructions, type '1', else type '0'") :semi))
     (:line 230 (:input nil ((:var e))))
     (:line 240 (:if (:binary :eq (:var e) (:icon 0))) (:goto 360))
     (:line 250 (:print))
     (:line 260 (:print (:scon "please take a piece of paper and write down")))
     (:line 270
      (:print (:scon "the digits '0', '1', or '2' thirty times at random.")))
     (:line 280
      (:print (:scon "arrange them in three lines of ten digits each.")))
     (:line 290 (:print (:scon "i will ask for then ten at a time.")))
     (:line 300
      (:print (:scon "i will always guess them first and then look at your")))
     (:line 310
      (:print (:scon "next number to see if i was right. by pure luck,")))
     (:line 320
      (:print
       (:scon "i ought to be right ten times. but i hope to do better")))
     (:line 330 (:print (:scon "than that *****")))
     (:line 340 (:print) (:print))
     (:line 360 (:read (:var a) (:var b) (:var c)))
     (:line 370 (:data (:icon 0) (:icon 1) (:icon 3)))
     (:line 380
      (:dim
       ((:dimd2 m (:icon 26) (:icon 2)) (:dimd2 k (:icon 2) (:icon 2))
        (:dimd2 l (:icon 8) (:icon 2)))))
     (:line 400 (:for i (:icon 0) (:icon 26) nil)
      (:for j (:icon 0) (:icon 2) nil)
      (:let (:apply m (:var i) (:var j)) (:icon 1)) (:next j)
      (:next i))
     (:line 410 (:for i (:icon 0) (:icon 2) nil)
      (:for j (:icon 0) (:icon 2) nil)
      (:let (:apply k (:var i) (:var j)) (:icon 9)) (:next j)
      (:next i))
     (:line 420 (:for i (:icon 0) (:icon 8) nil)
      (:for j (:icon 0) (:icon 2) nil)
      (:let (:apply l (:var i) (:var j)) (:icon 3)) (:next j)
      (:next i))
     (:line 450 (:let (:apply l (:icon 0) (:icon 0)) (:icon 2))
      (:let (:apply l (:icon 4) (:icon 1)) (:icon 2))
      (:let (:apply l (:icon 8) (:icon 2)) (:icon 2)))
     (:line 480 (:let (:var z) (:icon 26)) (:let (:var z1) (:icon 8))
      (:let (:var z2) (:icon 2)))
     (:line 510 (:let (:var x) (:icon 0)))
     (:line 520 (:for t (:icon 1) (:icon 3) nil)) (:line 530 (:print))
     (:line 540 (:print (:scon "ten numbers, please") :semi))
     (:line 550
      (:input nil
       ((:apply n (:icon 1)) (:apply n (:icon 2))
        (:apply n (:icon 3)) (:apply n (:icon 4))
        (:apply n (:icon 5)) (:apply n (:icon 6))
        (:apply n (:icon 7)) (:apply n (:icon 8))
        (:apply n (:icon 9)) (:apply n (:icon 10)))))
     (:line 560 (:for i (:icon 1) (:icon 10) nil))
     (:line 570
      (:let (:var w)
       (:binary :minus (:apply n (:var i)) (:icon 1))))
     (:line 580 (:if (:binary :eq (:var w) (:apply sgn (:var w))))
      (:goto 620))
     (:line 590 (:print (:scon "only use the digits '0', '1', or '2'.")))
     (:line 600 (:print (:scon "let's try again.")) (:goto 530))
     (:line 620 (:next i))
     (:line 630 (:print)
      (:print (:scon "my guess") :comma (:scon "your no.") :comma
       (:scon "result") :comma (:scon "no. right"))
      (:print))
     (:line 660 (:for u (:icon 1) (:icon 10) nil))
     (:line 670 (:let (:var n) (:apply n (:var u)))
      (:let (:var s) (:icon 0)))
     (:line 690 (:for j (:icon 0) (:icon 2) nil))
     (:line 700
      (:let (:var s1)
       (:binary :plus
        (:binary :plus
         (:binary :mul (:var a) (:apply k (:var z2) (:var j)))
         (:binary :mul (:var b) (:apply l (:var z1) (:var j))))
        (:binary :mul (:var c) (:apply m (:var z) (:var j))))))
     (:line 710 (:if (:binary :gt (:var s) (:var s1))) (:goto 760))
     (:line 720 (:if (:binary :lt (:var s) (:var s1))) (:goto 740))
     (:line 730 (:if (:binary :lt (:apply rnd (:icon 1)) (:fcon 0.5)))
      (:goto 760))
     (:line 740 (:let (:var s) (:var s1))
      (:let (:var g) (:var j)))
     (:line 760 (:next j))
     (:line 770
      (:print (:scon "  ") :semi (:var g) :comma (:scon "   ") :semi
       (:apply n (:var u)) :comma))
     (:line 780 (:if (:binary :eq (:var g) (:apply n (:var u))))
      (:goto 810))
     (:line 790 (:print (:scon " wrong") :comma (:var x)))
     (:line 800 (:goto 880))
     (:line 810 (:let (:var x) (:binary :plus (:var x) (:icon 1))))
     (:line 820 (:print (:scon " right") :comma (:var x)))
     (:line 830
      (:let (:apply m (:var z) (:var n))
       (:binary :plus (:apply m (:var z) (:var n)) (:icon 1))))
     (:line 840
      (:let (:apply l (:var z1) (:var n))
       (:binary :plus (:apply l (:var z1) (:var n)) (:icon 1))))
     (:line 850
      (:let (:apply k (:var z2) (:var n))
       (:binary :plus (:apply k (:var z2) (:var n)) (:icon 1))))
     (:line 860
      (:let (:var z)
       (:binary :minus (:var z)
        (:binary :mul (:apply int (:binary :div (:var z) (:icon 9)))
         (:icon 9)))))
     (:line 870
      (:let (:var z)
       (:binary :plus (:binary :mul (:icon 3) (:var z))
        (:apply n (:var u)))))
     (:line 880
      (:let (:var z1)
       (:binary :minus (:var z)
        (:binary :mul (:apply int (:binary :div (:var z) (:icon 9)))
         (:icon 9)))))
     (:line 890 (:let (:var z2) (:apply n (:var u))))
     (:line 900 (:next u)) (:line 910 (:next t)) (:line 920 (:print))
     (:line 930 (:if (:binary :gt (:var x) (:icon 10))) (:goto 980))
     (:line 940 (:if (:binary :lt (:var x) (:icon 10))) (:goto 1010))
     (:line 950 (:print (:scon "i guessed exactly 1/3 of your numbers.")))
     (:line 960 (:print (:scon "it's a tie game."))) (:line 970 (:goto 1030))
     (:line 980 (:print (:scon "i guessed more than 1/3 of your numbers.")))
     (:line 990 (:print (:scon "i win.")) (:for q (:icon 1) (:icon 10) nil)
      (:print (:apply chr$ (:icon 7)) :semi) (:next q))
     (:line 1000 (:goto 1030))
     (:line 1010 (:print (:scon "i guessed less than 1/3 of your numbers.")))
     (:line 1020 (:print (:scon "you beat me.  congratulations *****")))
     (:line 1030 (:print))
     (:line 1040
      (:print (:scon "do you want to try again (1 for yes, 0 for no)") :semi))
     (:line 1060 (:input nil ((:var x))))
     (:line 1070 (:if (:binary :eq (:var x) (:icon 1))) (:goto 400))
     (:line 1080 (:print) (:print (:scon "thanks for the game.")))
     (:line 1090 (:end)))))



(defvar *evenwins*
  '(((:line 1 (:print (:apply tab (:icon 31)) :semi (:scon "even wins")))
     (:line 2
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 3 (:print) (:print)) (:line 4 (:let (:var y1) (:icon 0)))
     (:line 10 (:let (:var m1) (:icon 0)))
     (:line 20 (:dim ((:dimd m (:icon 20)) (:dimd y (:icon 20)))))
     (:line 30
      (:print (:scon "     this is a two person game called 'even wins.'")))
     (:line 40
      (:print (:scon "to play the game, the players need 27 marbles or")))
     (:line 50 (:print (:scon "other objects on a table.")))
     (:line 60 (:print)) (:line 70 (:print))
     (:line 80
      (:print (:scon "     the 2 players alternate turns, with each player")))
     (:line 90
      (:print (:scon "removing from 1 to 4 marbles on each move.  the game")))
     (:line 100
      (:print (:scon "ends when there are no marbles left, and the winner")))
     (:line 110 (:print (:scon "is the one with an even number of marbles.")))
     (:line 120 (:print)) (:line 130 (:print))
     (:line 140
      (:print
       (:scon "     the only rules are that (1) you must alternate turns,")))
     (:line 150
      (:print (:scon "(2) you must take between 1 and 4 marbles each turn,")))
     (:line 160 (:print (:scon "and (3) you cannot skip a turn.")))
     (:line 170 (:print)) (:line 180 (:print)) (:line 190 (:print))
     (:line 200
      (:print (:scon "     type a '1' if you want to go first, and type")))
     (:line 210 (:print (:scon "a '0' if you want me to go first.")))
     (:line 220 (:input nil ((:var c)))) (:line 225 (:print))
     (:line 230 (:if (:binary :eq (:var c) (:icon 0))) (:goto 250))
     (:line 240 (:goto 1060)) (:line 250 (:let (:var t) (:icon 27)))
     (:line 260 (:let (:var m) (:icon 2)))
     (:line 270 (:print) (:print (:scon "total=") :semi (:var t)) (:print))
     (:line 280
      (:let (:var m1) (:binary :plus (:var m1) (:var m))))
     (:line 290 (:let (:var t) (:binary :minus (:var t) (:var m))))
     (:line 300
      (:print (:scon "i pick up") :semi (:var m) :semi (:scon "marbles.")))
     (:line 310 (:if (:binary :eq (:var t) (:icon 0))) (:goto 880))
     (:line 320 (:print) (:print (:scon "total=") :semi (:var t)))
     (:line 330 (:print))
     (:line 340
      (:print (:scon "     and what is your next move, my total is") :semi
       (:var m1)))
     (:line 350 (:input nil ((:var y)))) (:line 360 (:print))
     (:line 370 (:if (:binary :lt (:var y) (:icon 1))) (:goto 1160))
     (:line 380 (:if (:binary :gt (:var y) (:icon 4))) (:goto 1160))
     (:line 390 (:if (:binary :le (:var y) (:var t))) (:goto 430))
     (:line 400
      (:print
       (:scon "     you have tried to take more marbles than there are")))
     (:line 410 (:print (:scon "left.  try again."))) (:line 420 (:goto 350))
     (:line 430
      (:let (:var y1) (:binary :plus (:var y1) (:var y))))
     (:line 440 (:let (:var t) (:binary :minus (:var t) (:var y))))
     (:line 450 (:if (:binary :eq (:var t) (:icon 0))) (:goto 880))
     (:line 460 (:print (:scon "total=") :semi (:var t)))
     (:line 470 (:print))
     (:line 480 (:print (:scon "your total is") :semi (:var y1)))
     (:line 490 (:if (:binary :lt (:var t) (:fcon 0.5))) (:goto 880))
     (:line 500
      (:let (:var r)
       (:binary :minus (:var t)
        (:binary :mul (:icon 6)
         (:apply int (:binary :div (:var t) (:icon 6)))))))
     (:line 510
      (:if
       (:binary :eq (:apply int (:binary :div (:var y1) (:icon 2)))
        (:binary :div (:var y1) (:icon 2))))
      (:goto 700))
     (:line 520 (:if (:binary :lt (:var t) (:fcon 4.2))) (:goto 580))
     (:line 530 (:if (:binary :gt (:var r) (:fcon 3.4))) (:goto 620))
     (:line 540 (:let (:var m) (:binary :plus (:var r) (:icon 1))))
     (:line 550
      (:let (:var m1) (:binary :plus (:var m1) (:var m))))
     (:line 560 (:let (:var t) (:binary :minus (:var t) (:var m))))
     (:line 570 (:goto 300)) (:line 580 (:let (:var m) (:var t)))
     (:line 590 (:let (:var t) (:binary :minus (:var t) (:var m))))
     (:line 600 (:goto 830)) (:line 610 (:rem "     250 is where i win.
"))
     (:line 620 (:if (:binary :lt (:var r) (:fcon 4.7))) (:goto 660))
     (:line 630 (:if (:binary :gt (:var r) (:fcon 3.5))) (:goto 660))
     (:line 640 (:let (:var m) (:icon 1))) (:line 650 (:goto 670))
     (:line 660 (:let (:var m) (:icon 4)))
     (:line 670 (:let (:var t) (:binary :minus (:var t) (:var m))))
     (:line 680
      (:let (:var m1) (:binary :plus (:var m1) (:var m))))
     (:line 690 (:goto 300))
     (:line 700
      (:rem "     i am ready to encode the strat for when opp tot is even
"))
     (:line 710 (:if (:binary :lt (:var r) (:fcon 1.5))) (:goto 1020))
     (:line 720 (:if (:binary :gt (:var r) (:fcon 5.3))) (:goto 1020))
     (:line 730 (:let (:var m) (:binary :minus (:var r) (:icon 1))))
     (:line 740
      (:let (:var m1) (:binary :plus (:var m1) (:var m))))
     (:line 750 (:let (:var t) (:binary :minus (:var t) (:var m))))
     (:line 760 (:if (:binary :lt (:var t) (:fcon 0.2))) (:goto 790))
     (:line 770 (:rem "     is # zero here
")) (:line 780 (:goto 300))
     (:line 790 (:rem "     is = zero here
"))
     (:line 800
      (:print (:scon "i pick up") :semi (:var m) :semi (:scon "marbles.")))
     (:line 810 (:print)) (:line 820 (:goto 880))
     (:line 830 (:rem "    this is where i win
"))
     (:line 840
      (:print (:scon "i pick up") :semi (:var m) :semi (:scon "marbles.")))
     (:line 850 (:print)) (:line 860 (:print (:scon "total = 0")))
     (:line 870
      (:let (:var m1) (:binary :plus (:var m1) (:var m))))
     (:line 880 (:print (:scon "that is all of the marbles.")))
     (:line 890 (:print))
     (:line 900
      (:print (:scon " my total is") :semi (:var m1) :semi
       (:scon ", your total is") :semi (:var y1)))
     (:line 910 (:print))
     (:line 920
      (:if
       (:binary :eq (:apply int (:binary :div (:var m1) (:icon 2)))
        (:binary :div (:var m1) (:icon 2))))
      (:goto 950))
     (:line 930 (:print (:scon "     you won.  do you want to play")))
     (:line 940 (:goto 960))
     (:line 950 (:print (:scon "     i won.  do you want to play")))
     (:line 960 (:print (:scon "again?  type 1 for yes and 0 for no.")))
     (:line 970 (:input nil ((:var a1))))
     (:line 980 (:if (:binary :eq (:var a1) (:icon 0))) (:goto 1030))
     (:line 990 (:let (:var m1) (:icon 0)))
     (:line 1000 (:let (:var y1) (:icon 0))) (:line 1010 (:goto 200))
     (:line 1020 (:goto 640)) (:line 1030 (:print))
     (:line 1040 (:print (:scon "ok.  see you later.")))
     (:line 1050 (:goto 1230)) (:line 1060 (:let (:var t) (:icon 27)))
     (:line 1070 (:print)) (:line 1080 (:print)) (:line 1090 (:print))
     (:line 1100 (:print (:scon "total=") :semi (:var t)))
     (:line 1110 (:print)) (:line 1120 (:print))
     (:line 1130 (:print (:scon "what is your first move") :semi))
     (:line 1140 (:input nil ((:var y)))) (:line 1150 (:goto 360))
     (:line 1160 (:print))
     (:line 1170
      (:print (:scon "the number of marbles you take must be a positive")))
     (:line 1180 (:print (:scon "integer between 1 and 4.")))
     (:line 1190 (:print))
     (:line 1200 (:print (:scon "     what is your next move?")))
     (:line 1210 (:print)) (:line 1220 (:goto 350)) (:line 1230 (:end)))))



(defvar *flipflop*
  '(((:line 2 (:print (:apply tab (:icon 32)) :semi (:scon "flipflop")))
     (:line 4
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 6 (:print)) (:line 10 (:rem " *** created by michael cass
"))
     (:line 15 (:dim ((:dimd a$ (:icon 20)))))
     (:line 20 (:print (:scon "the object of this puzzle is to change this:")))
     (:line 30 (:print)) (:line 40 (:print (:scon "x x x x x x x x x x")))
     (:line 50 (:print)) (:line 60 (:print (:scon "to this:")))
     (:line 70 (:print)) (:line 80 (:print (:scon "o o o o o o o o o o")))
     (:line 90 (:print))
     (:line 100
      (:print
       (:scon "by typing the number corresponding to the position of the")))
     (:line 110
      (:print (:scon "letter on some numbers, one position will change, on")))
     (:line 120
      (:print
       (:scon "others, two will change.  to reset line to all x's, type 0")))
     (:line 130
      (:print
       (:scon "(zero) and to start over in the middle of a game, type ")))
     (:line 140 (:print (:scon "11 (eleven)."))) (:line 170 (:print))
     (:line 180 (:rem "
"))
     (:line 190 (:let (:var q) (:apply rnd (:icon 1))))
     (:line 200 (:print (:scon "here is the starting line of x's.")))
     (:line 210 (:print)) (:line 220 (:let (:var c) (:icon 0)))
     (:line 230 (:print (:scon "1 2 3 4 5 6 7 8 9 10")))
     (:line 240 (:print (:scon "x x x x x x x x x x"))) (:line 250 (:print))
     (:line 260 (:rem "
")) (:line 270 (:for x (:icon 1) (:icon 10) nil))
     (:line 280 (:let (:apply a$ (:var x)) (:scon "x")))
     (:line 290 (:next x)) (:line 300 (:goto 320))
     (:line 310 (:print (:scon "illegal entry--try again.")))
     (:line 320 (:print (:scon "input the number") :semi))
     (:line 330 (:input nil ((:var n))))
     (:line 340 (:if (:binary :ne (:var n) (:apply int (:var n))))
      (:goto 310))
     (:line 350 (:if (:binary :eq (:var n) (:icon 11))) (:goto 180))
     (:line 360 (:if (:binary :gt (:var n) (:icon 11))) (:goto 310))
     (:line 370 (:if (:binary :eq (:var n) (:icon 0))) (:goto 230))
     (:line 380 (:if (:binary :eq (:var m) (:var n))) (:goto 510))
     (:line 390 (:let (:var m) (:var n)))
     (:line 400 (:if (:binary :eq (:apply a$ (:var n)) (:scon "o")))
      (:goto 480))
     (:line 410 (:let (:apply a$ (:var n)) (:scon "o")))
     (:line 420
      (:let (:var r)
       (:binary :plus
        (:binary :minus
         (:apply tan
          (:binary :minus
           (:binary :plus (:var q)
            (:binary :div (:var n) (:var q)))
           (:var n)))
         (:apply sin (:binary :div (:var q) (:var n))))
        (:binary :mul (:icon 336)
         (:apply sin (:binary :mul (:icon 8) (:var n)))))))
     (:line 430
      (:let (:var n)
       (:binary :minus (:var r) (:apply int (:var r)))))
     (:line 440
      (:let (:var n)
       (:apply int (:binary :mul (:icon 10) (:var n)))))
     (:line 450 (:if (:binary :eq (:apply a$ (:var n)) (:scon "o")))
      (:goto 480))
     (:line 460 (:let (:apply a$ (:var n)) (:scon "o")))
     (:line 470 (:goto 610))
     (:line 480 (:let (:apply a$ (:var n)) (:scon "x")))
     (:line 490 (:if (:binary :eq (:var m) (:var n))) (:goto 420))
     (:line 500 (:goto 610))
     (:line 510 (:if (:binary :eq (:apply a$ (:var n)) (:scon "o")))
      (:goto 590))
     (:line 520 (:let (:apply a$ (:var n)) (:scon "o")))
     (:line 530
      (:let (:var r)
       (:binary :minus
        (:binary :div
         (:binary :mul (:fcon 0.592)
          (:binary :div (:icon 1)
           (:apply tan
            (:binary :plus (:binary :div (:var q) (:var n))
             (:var q)))))
         (:apply sin
          (:binary :plus (:binary :mul (:var n) (:icon 2)) (:var q))))
        (:apply cos (:var n)))))
     (:line 540
      (:let (:var n)
       (:binary :minus (:var r) (:apply int (:var r)))))
     (:line 550
      (:let (:var n)
       (:apply int (:binary :mul (:icon 10) (:var n)))))
     (:line 560 (:if (:binary :eq (:apply a$ (:var n)) (:scon "o")))
      (:goto 590))
     (:line 570 (:let (:apply a$ (:var n)) (:scon "o")))
     (:line 580 (:goto 610))
     (:line 590 (:let (:apply a$ (:var n)) (:scon "x")))
     (:line 600 (:if (:binary :eq (:var m) (:var n))) (:goto 530))
     (:line 610 (:print (:scon "1 2 3 4 5 6 7 8 9 10")))
     (:line 620 (:for z (:icon 1) (:icon 10) nil)
      (:print (:apply a$ (:var z)) :semi (:scon " ") :semi)
      (:next z))
     (:line 630 (:let (:var c) (:binary :plus (:var c) (:icon 1))))
     (:line 640 (:print)) (:line 650 (:for z (:icon 1) (:icon 10) nil))
     (:line 660 (:if (:binary :ne (:apply a$ (:var z)) (:scon "o")))
      (:goto 320))
     (:line 670 (:next z))
     (:line 680 (:if (:binary :gt (:var c) (:icon 12))) (:goto 710))
     (:line 690
      (:print (:scon "very good.  you guessed it in only") :semi (:var c)
       :semi (:scon "guesses.")))
     (:line 700 (:goto 720))
     (:line 710
      (:print (:scon "try harder next time.  it took you") :semi (:var c)
       :semi (:scon "guesses.")))
     (:line 720 (:print (:scon "do you want to try another puzzle") :semi))
     (:line 730 (:input nil ((:var x$))))
     (:line 740
      (:if
       (:binary :eq (:apply left$ (:var x$) (:icon 1)) (:scon "n")))
      (:goto 780))
     (:line 760 (:print)) (:line 770 (:goto 180)) (:line 780 (:end)))))



(defvar *football*
  '(((:line 1 (:print (:apply tab (:icon 32)) :semi (:scon "football")))
     (:line 2
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 3 (:print) (:print) (:print)) (:line 100 (:rem "
"))
     (:line 120
      (:dim
       ((:dimd a (:icon 20)) (:dimd b (:icon 20))
        (:dimd c (:icon 40)) (:dimd h (:icon 2))
        (:dimd t (:icon 2)) (:dimd w (:icon 2)) (:dimd x (:icon 2))
        (:dimd y (:icon 2)) (:dimd z (:icon 2)))))
     (:line 130
      (:dim
       ((:dimd m$ (:icon 2)) (:dimd d (:icon 2))
        (:dimd p$ (:icon 20)))))
     (:line 140
      (:print (:scon "presenting n.f.u. football (no fortran used)")))
     (:line 145 (:print) (:print))
     (:line 150 (:input "do you want instructions" ((:var a$))))
     (:line 160 (:if (:binary :eq (:var a$) (:scon "no"))) (:goto 290))
     (:line 165 (:if (:binary :ne (:var a$) (:scon "yes"))) (:goto 150))
     (:line 170
      (:print
       (:scon "this is a football game for two teams in which players must")))
     (:line 180
      (:print
       (:scon "prepare a tape with a data statement (1770 for team 1,")))
     (:line 190
      (:print
       (:scon "1780 for team 2) in which each team scrambles nos. 1-20")))
     (:line 195
      (:print
       (:scon "these numbers are then assigned to twenty given plays.")))
     (:line 200
      (:print (:scon "a list of nos. and their plays is provided with")))
     (:line 210
      (:print
       (:scon "both teams having the same plays. the more similar the")))
     (:line 220
      (:print (:scon "plays the less yardage gained.  scores are given")))
     (:line 223
      (:print (:scon "whenever scores are made. scores may also be obtained")))
     (:line 225
      (:print (:scon "by inputting 99,99 for play nos. to punt or attempt a")))
     (:line 227
      (:print
       (:scon "field goal, input 77,77 for play numbers. questions will be")))
     (:line 230
      (:print
       (:scon "asked then. on 4th down, you will also be asked whether")))
     (:line 240
      (:print
       (:scon "you want to punt or attempt a field goal. if the answer to")))
     (:line 250
      (:print (:scon "both questions is no it will be assumed you want to")))
     (:line 260
      (:print (:scon "try and gain yardage. answer all questions yes or no.")))
     (:line 270
      (:print
       (:scon "the game is played until players terminate (control-c).")))
     (:line 280 (:print (:scon "please prepare a tape and run.")) (:stop))
     (:line 290 (:print)
      (:print (:scon "please input score limit on game") :semi)
      (:input nil ((:var e))))
     (:line 300 (:for i (:icon 1) (:icon 40) nil) (:read (:var n))
      (:if (:binary :gt (:var i) (:icon 20))) (:goto 350))
     (:line 330 (:let (:apply a (:var n)) (:var i)) (:goto 360))
     (:line 350
      (:let (:apply b (:var n))
       (:binary :minus (:var i) (:icon 20))))
     (:line 360 (:let (:apply c (:var i)) (:var n)) (:next i))
     (:line 370 (:for i (:icon 1) (:icon 20) nil)
      (:read (:apply p$ (:var i))) (:next i))
     (:line 380 (:let (:var l) (:icon 0)) (:let (:var t) (:icon 1)))
     (:line 410
      (:print (:scon "team") :semi (:var t) :semi (:scon "play chart")))
     (:line 420 (:print (:scon "no.      play")))
     (:line 430 (:for i (:icon 1) (:icon 20) nil)) (:line 440 (:rem "
"))
     (:line 450
      (:print (:apply c (:binary :plus (:var i) (:var l))) :semi
       (:apply tab (:icon 6)) :semi (:apply p$ (:var i))))
     (:line 460 (:next i))
     (:line 630 (:let (:var l) (:binary :plus (:var l) (:icon 20)))
      (:let (:var t) (:icon 2)))
     (:line 640 (:print))
     (:line 650
      (:print
       (:scon "tear off here----------------------------------------------")))
     (:line 660 (:for x (:icon 1) (:icon 11) nil) (:print) (:next x))
     (:line 670 (:for z (:icon 1) (:icon 3000) nil) (:next z))
     (:line 680 (:if (:binary :eq (:var l) (:icon 20))) (:goto 410))
     (:line 690 (:let (:apply d (:icon 1)) (:icon 0))
      (:let (:apply d (:icon 2)) (:icon 3))
      (:let (:apply m$ (:icon 1)) (:scon "--->"))
      (:let (:apply m$ (:icon 2)) (:scon "<---")))
     (:line 700 (:let (:apply h (:icon 1)) (:icon 0))
      (:let (:apply h (:icon 2)) (:icon 0))
      (:let (:apply t (:icon 1)) (:icon 2))
      (:let (:apply t (:icon 2)) (:icon 1)))
     (:line 710 (:let (:apply w (:icon 1)) (:uminus (:icon 1)))
      (:let (:apply w (:icon 2)) (:icon 1))
      (:let (:apply x (:icon 1)) (:icon 100))
      (:let (:apply x (:icon 2)) (:icon 0)))
     (:line 720 (:let (:apply y (:icon 1)) (:icon 1))
      (:let (:apply y (:icon 2)) (:uminus (:icon 1)))
      (:let (:apply z (:icon 1)) (:icon 0))
      (:let (:apply z (:icon 2)) (:icon 100)))
     (:line 725 (:gosub 1910))
     (:line 730
      (:print
       (:scon "team 1 defends 0 yd goal -- team 2 defends 100 yd goal.")))
     (:line 740
      (:let (:var t)
       (:apply int
        (:binary :plus (:binary :mul (:icon 2) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 760 (:print) (:print (:scon "the coin is flipped")))
     (:line 765
      (:let (:var p)
       (:binary :minus (:apply x (:var t))
        (:binary :mul (:apply y (:var t)) (:icon 40)))))
     (:line 770 (:gosub 1860) (:print)
      (:print (:scon "team") :semi (:var t) :semi
       (:scon "receives kick-off")))
     (:line 780
      (:let (:var k)
       (:apply int
        (:binary :plus (:binary :mul (:icon 26) (:apply rnd (:icon 1)))
         (:icon 40)))))
     (:line 790
      (:let (:var p)
       (:binary :minus (:var p)
        (:binary :mul (:apply y (:var t)) (:var k)))))
     (:line 794
      (:if
       (:binary :lt (:binary :mul (:apply w (:var t)) (:var p))
        (:binary :plus (:apply z (:var t)) (:icon 10))))
      (:goto 810))
     (:line 795 (:print)
      (:print (:scon "ball went out of endzone --automatic touchback--")))
     (:line 796 (:goto 870))
     (:line 810
      (:print (:scon "ball went") :semi (:var k) :semi
       (:scon "yards.  now on") :semi (:var p))
      (:gosub 1900))
     (:line 830
      (:print (:scon "team") :semi (:var t) :semi
       (:scon "do you want to runback") :semi)
      (:input nil ((:var a$))))
     (:line 840 (:if (:binary :eq (:var a$) (:scon "yes"))) (:goto 1430))
     (:line 845 (:if (:binary :ne (:var a$) (:scon "no"))) (:goto 830))
     (:line 850
      (:if
       (:binary :lt (:binary :mul (:apply w (:var t)) (:var p))
        (:apply z (:var t))))
      (:goto 880))
     (:line 870
      (:let (:var p)
       (:binary :minus (:apply z (:var t))
        (:binary :mul (:apply w (:var t)) (:icon 20)))))
     (:line 880 (:let (:var d) (:icon 1)) (:let (:var s) (:var p)))
     (:line 885 (:for i (:icon 1) (:icon 72) nil)
      (:print (:scon "=") :semi) (:next i))
     (:line 890 (:print)
      (:print (:scon "team") :semi (:var t) :semi (:scon "down") :semi
       (:var d) :semi (:scon "on") :semi (:var p)))
     (:line 893 (:if (:binary :ne (:var d) (:icon 1))) (:goto 900))
     (:line 895
      (:if
       (:binary :ge
        (:binary :mul (:apply y (:var t))
         (:binary :plus (:var p)
          (:binary :mul (:apply y (:var t)) (:icon 10))))
        (:apply x (:var t))))
      (:goto 898))
     (:line 897 (:let (:var c) (:icon 4)) (:goto 900))
     (:line 898 (:let (:var c) (:icon 8)))
     (:line 900 (:if (:binary :eq (:var c) (:icon 8))) (:goto 904))
     (:line 901
      (:print (:apply tab (:icon 27)) :semi
       (:binary :minus (:icon 10)
        (:binary :minus (:binary :mul (:apply y (:var t)) (:var p))
         (:binary :mul (:apply y (:var t)) (:var s))))
       :semi (:scon "yards to 1st down")))
     (:line 902 (:goto 910))
     (:line 904
      (:print (:apply tab (:icon 27)) :semi
       (:binary :minus (:apply x (:var t))
        (:binary :mul (:apply y (:var t)) (:var p)))
       :semi (:scon "yards")))
     (:line 910 (:gosub 1900) (:if (:binary :eq (:var d) (:icon 4)))
      (:goto 1180))
     (:line 920 (:rem "
"))
     (:line 930
      (:let (:var u)
       (:apply int
        (:binary :minus (:binary :mul (:icon 3) (:apply rnd (:icon 0)))
         (:icon 1))))
      (:goto 940))
     (:line 936 (:print (:scon "illegal play number, check and")))
     (:line 940 (:print (:scon "input offensive play, defensive play") :semi))
     (:line 950 (:if (:binary :eq (:var t) (:icon 2))) (:goto 970))
     (:line 960 (:input nil ((:var p1) (:var p2))) (:goto 975))
     (:line 970 (:input nil ((:var p2) (:var p1))))
     (:line 975 (:if (:binary :eq (:var p1) (:icon 77))) (:goto 1180))
     (:line 980 (:if (:binary :gt (:var p1) (:icon 20))) (:goto 1800))
     (:line 985 (:if (:binary :lt (:var p1) (:icon 1))) (:goto 1800))
     (:line 990 (:if (:binary :gt (:var p2) (:icon 20))) (:goto 1800))
     (:line 992 (:if (:binary :lt (:var p2) (:icon 1))) (:goto 1800))
     (:line 995 (:let (:var p1) (:apply int (:var p1)))
      (:let (:var p2) (:apply int (:var p2))))
     (:line 1000
      (:let (:var y)
       (:apply int
        (:binary :mul
         (:binary :div
          (:apply abs
           (:binary :minus (:apply a (:var p1))
            (:apply b (:var p2))))
          (:icon 19))
         (:binary :minus
          (:binary :mul
           (:binary :plus
            (:binary :minus (:apply x (:var t))
             (:binary :mul (:apply y (:var t)) (:var p)))
            (:icon 25))
           (:apply rnd (:icon 1)))
          (:icon 15))))))
     (:line 1005 (:print) (:if (:binary :eq (:var t) (:icon 2)))
      (:goto 1015))
     (:line 1010 (:if (:binary :lt (:apply a (:var p1)) (:icon 11)))
      (:goto 1048))
     (:line 1012 (:goto 1020))
     (:line 1015 (:if (:binary :lt (:apply b (:var p2)) (:icon 11)))
      (:goto 1048))
     (:line 1020 (:if (:binary :ne (:var u) (:icon 0))) (:goto 1035))
     (:line 1025 (:print (:scon "pass incomplete team") :semi (:var t)))
     (:line 1030 (:let (:var y) (:icon 0)) (:goto 1050))
     (:line 1035 (:let (:var g) (:apply rnd (:icon 1)))
      (:if (:binary :gt (:var g) (:fcon 0.025))) (:goto 1040))
     (:line 1037 (:if (:binary :gt (:var y) (:icon 2))) (:goto 1045))
     (:line 1040 (:print (:scon "quarterback scrambled")) (:goto 1050))
     (:line 1045 (:print (:scon "pass completed")) (:goto 1050))
     (:line 1048 (:print (:scon "the ball was run")))
     (:line 1050
      (:let (:var p)
       (:binary :minus (:var p)
        (:binary :mul (:apply w (:var t)) (:var y)))))
     (:line 1060 (:print)
      (:print (:scon "net yards gained on down") :semi (:var d) :semi
       (:scon "are ") :semi (:var y)))
     (:line 1070 (:let (:var g) (:apply rnd (:icon 1)))
      (:if (:binary :gt (:var g) (:fcon 0.025))) (:goto 1110))
     (:line 1080 (:print)
      (:print (:scon "** loss of possession from team") :semi (:var t)
       :semi (:scon "to team") :semi (:apply t (:var t))))
     (:line 1100 (:gosub 1850) (:print)
      (:let (:var t) (:apply t (:var t))) (:goto 830))
     (:line 1110
      (:if
       (:binary :ge (:binary :mul (:apply y (:var t)) (:var p))
        (:apply x (:var t))))
      (:goto 1320))
     (:line 1120
      (:if
       (:binary :ge (:binary :mul (:apply w (:var t)) (:var p))
        (:apply z (:var t))))
      (:goto 1230))
     (:line 1130
      (:if
       (:binary :ge
        (:binary :minus (:binary :mul (:apply y (:var t)) (:var p))
         (:binary :mul (:apply y (:var t)) (:var s)))
        (:icon 10)))
      (:goto 880))
     (:line 1140 (:let (:var d) (:binary :plus (:var d) (:icon 1)))
      (:if (:binary :ne (:var d) (:icon 5))) (:goto 885))
     (:line 1160 (:print)
      (:print (:scon "conversion unsuccessful team") :semi (:var t))
      (:let (:var t) (:apply t (:var t))))
     (:line 1170 (:gosub 1850) (:goto 880))
     (:line 1180
      (:print (:scon "does team") :semi (:var t) :semi
       (:scon "want to punt") :semi)
      (:input nil ((:var a$))))
     (:line 1185 (:if (:binary :eq (:var a$) (:scon "no"))) (:goto 1200))
     (:line 1187 (:if (:binary :ne (:var a$) (:scon "yes"))) (:goto 1180))
     (:line 1190 (:print)
      (:print (:scon "team") :semi (:var t) :semi (:scon "will punt"))
      (:let (:var g) (:apply rnd (:icon 1)))
      (:if (:binary :lt (:var g) (:fcon 0.025))) (:goto 1080))
     (:line 1195 (:gosub 1850)
      (:let (:var k)
       (:apply int
        (:binary :plus (:binary :mul (:icon 25) (:apply rnd (:icon 1)))
         (:icon 35))))
      (:let (:var t) (:apply t (:var t))) (:goto 790))
     (:line 1200
      (:print (:scon "does team") :semi (:var t) :semi
       (:scon "want to attempt a field goal") :semi)
      (:input nil ((:var a$))))
     (:line 1210 (:if (:binary :eq (:var a$) (:scon "yes"))) (:goto 1640))
     (:line 1215 (:if (:binary :ne (:var a$) (:scon "no"))) (:goto 1200))
     (:line 1217 (:goto 920))
     (:line 1230 (:print)
      (:print (:scon "safety against team") :semi (:var t) :semi
       (:scon "**********************oh-oh")))
     (:line 1240
      (:let (:apply h (:apply t (:var t)))
       (:binary :plus (:apply h (:apply t (:var t))) (:icon 2)))
      (:gosub 1810))
     (:line 1280
      (:print (:scon "team") :semi (:var t) :semi
       (:scon "do you want to punt instead of a kickoff") :semi)
      (:input nil ((:var a$))))
     (:line 1290
      (:let (:var p)
       (:binary :minus (:apply z (:var t))
        (:binary :mul (:apply w (:var t)) (:icon 20))))
      (:if (:binary :eq (:var a$) (:scon "yes"))) (:goto 1190))
     (:line 1320 (:print)
      (:print (:scon "touchdown by team") :semi (:var t) :semi
       (:scon "*********************yea team")))
     (:line 1340 (:let (:var q) (:icon 7))
      (:let (:var g) (:apply rnd (:icon 1)))
      (:if (:binary :gt (:var g) (:fcon 0.1))) (:goto 1380))
     (:line 1360 (:let (:var q) (:icon 6))
      (:print (:scon "extra point no good")) (:goto 1390))
     (:line 1380 (:print (:scon "extra point good")))
     (:line 1390
      (:let (:apply h (:var t))
       (:binary :plus (:apply h (:var t)) (:var q)))
      (:gosub 1810))
     (:line 1420 (:let (:var t) (:apply t (:var t))) (:goto 765))
     (:line 1430
      (:let (:var k)
       (:apply int
        (:binary :plus (:binary :mul (:icon 9) (:apply rnd (:icon 0)))
         (:icon 1)))))
     (:line 1440
      (:let (:var r)
       (:apply int
        (:binary :div
         (:binary :minus
          (:binary :mul
           (:binary :plus
            (:binary :minus (:apply x (:var t))
             (:binary :mul (:apply y (:var t)) (:var p)))
            (:icon 25))
           (:apply rnd (:icon 1)))
          (:icon 15))
         (:var k)))))
     (:line 1460
      (:let (:var p)
       (:binary :minus (:var p)
        (:binary :mul (:apply w (:var t)) (:var r)))))
     (:line 1480 (:print)
      (:print (:scon "runback team") :semi (:var t) :semi (:var r)
       :semi (:scon "yards")))
     (:line 1485 (:let (:var g) (:apply rnd (:icon 1)))
      (:if (:binary :lt (:var g) (:fcon 0.025))) (:goto 1080))
     (:line 1490
      (:if
       (:binary :ge (:binary :mul (:apply y (:var t)) (:var p))
        (:apply x (:var t))))
      (:goto 1320))
     (:line 1500
      (:if
       (:binary :ge (:binary :mul (:apply w (:var t)) (:var p))
        (:apply z (:var t))))
      (:goto 1230))
     (:line 1510 (:goto 880))
     (:line 1640 (:print)
      (:print (:scon "team") :semi (:var t) :semi
       (:scon "will attempt a field goal")))
     (:line 1645 (:let (:var g) (:apply rnd (:icon 1)))
      (:if (:binary :lt (:var g) (:fcon 0.025))) (:goto 1080))
     (:line 1650
      (:let (:var f)
       (:apply int
        (:binary :plus (:binary :mul (:icon 35) (:apply rnd (:icon 1)))
         (:icon 20)))))
     (:line 1660 (:print)
      (:print (:scon "kick is") :semi (:var f) :semi (:scon "yards long")))
     (:line 1680
      (:let (:var p)
       (:binary :minus (:var p)
        (:binary :mul (:apply w (:var t)) (:var f))))
      (:let (:var g) (:apply rnd (:icon 1))))
     (:line 1690 (:if (:binary :lt (:var g) (:fcon 0.35))) (:goto 1735))
     (:line 1700
      (:if
       (:binary :lt (:binary :mul (:apply y (:var t)) (:var p))
        (:apply x (:var t))))
      (:goto 1740))
     (:line 1710
      (:print (:scon "field goal good for team") :semi (:var t) :semi
       (:scon "*********************yea")))
     (:line 1720 (:let (:var q) (:icon 3)) (:goto 1390))
     (:line 1735 (:print (:scon "ball went wide")))
     (:line 1740
      (:print (:scon "field goal unsuccesful team") :semi (:var t) :semi
       (:scon "-----------------too bad")))
     (:line 1742 (:gosub 1850)
      (:if
       (:binary :lt (:binary :mul (:apply y (:var t)) (:var p))
        (:binary :plus (:apply x (:var t)) (:icon 10))))
      (:goto 1745))
     (:line 1744 (:let (:var t) (:apply t (:var t))) (:goto 794))
     (:line 1745 (:print) (:print (:scon "ball now on") :semi (:var p)))
     (:line 1750 (:let (:var t) (:apply t (:var t))) (:gosub 1900)
      (:goto 830))
     (:line 1770
      (:data (:icon 17) (:icon 8) (:icon 4) (:icon 14) (:icon 19) (:icon 3)
       (:icon 10) (:icon 1) (:icon 7) (:icon 11) (:icon 15) (:icon 9) (:icon 5)
       (:icon 20) (:icon 13) (:icon 18) (:icon 16) (:icon 2) (:icon 12)
       (:icon 6)))
     (:line 1780
      (:data (:icon 20) (:icon 2) (:icon 17) (:icon 5) (:icon 8) (:icon 18)
       (:icon 12) (:icon 11) (:icon 1) (:icon 4) (:icon 19) (:icon 14)
       (:icon 10) (:icon 7) (:icon 9) (:icon 15) (:icon 6) (:icon 13)
       (:icon 16) (:icon 3)))
     (:line 1790
      (:data (:scon "pitchout") (:scon "triple reverse") (:scon "draw")
       (:scon "qb sneak") (:scon "end around")))
     (:line 1792
      (:data (:scon "double reverse") (:scon "left sweep")
       (:scon "right sweep") (:scon "off tackle")))
     (:line 1794
      (:data (:scon "wishbone option") (:scon "flare pass")
       (:scon "screen pass")))
     (:line 1796
      (:data (:scon "roll out option") (:scon "right curl") (:scon "left curl")
       (:scon "wishbone option")))
     (:line 1798
      (:data (:scon "sideline pass") (:scon "half-back option")
       (:scon "razzle-dazzle") (:scon "bomb!!!!")))
     (:line 1800 (:if (:binary :ne (:var p1) (:icon 99))) (:goto 936))
     (:line 1810 (:print)
      (:print (:scon "team 1 score is") :semi (:apply h (:icon 1))))
     (:line 1820
      (:print (:scon "team 2 score is") :semi (:apply h (:icon 2)))
      (:print))
     (:line 1825 (:if (:binary :lt (:apply h (:var t)) (:var e)))
      (:goto 1830))
     (:line 1827
      (:print (:scon "team") :semi (:var t) :semi
       (:scon "wins*******************"))
      (:goto 2000))
     (:line 1830 (:if (:binary :eq (:var p1) (:icon 99))) (:goto 940))
     (:line 1835 (:return)) (:line 1850 (:print))
     (:line 1860 (:for x (:icon 1) (:icon 72) nil)
      (:print (:scon "+") :semi) (:next x) (:print))
     (:line 1870 (:return))
     (:line 1900
      (:print
       (:apply tab
        (:binary :plus (:binary :plus (:apply d (:var t)) (:icon 5))
         (:binary :div (:var p) (:icon 2))))
       :semi (:apply m$ (:var t))))
     (:line 1910
      (:print (:scon "team 1 [0   10   20   30   40   50   60   70   80   90")
       :semi))
     (:line 1915 (:print (:scon "   100] team 2"))) (:line 1920 (:print))
     (:line 1930 (:return)) (:line 2000 (:end)))))



(defvar *ftball*
  '(((:line 10 (:print (:apply tab (:icon 33)) :semi (:scon "ftball")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print))
     (:line 220 (:print (:scon "this is dartmouth championship football."))
      (:print))
     (:line 230
      (:print
       (:scon "you will quarterback dartmouth. call plays as follows:")))
     (:line 240
      (:print (:scon "1= simple run; 2= tricky run; 3= short pass;")))
     (:line 250
      (:print (:scon "4= long pass; 5= punt; 6= quick kick; 7= place kick.")))
     (:line 260 (:print))
     (:line 270 (:print (:scon "choose your opponent") :semi))
     (:line 280 (:input nil ((:apply o$ (:icon 1)))))
     (:line 290 (:let (:apply o$ (:icon 0)) (:scon "dartmouth")))
     (:line 300 (:print))
     (:line 310 (:let (:apply s (:icon 0)) (:icon 0))
      (:let (:apply s (:icon 1)) (:icon 0)))
     (:line 320 (:rem "
")) (:line 330 (:dim ((:dimd l$ (:icon 20)))))
     (:line 340 (:for i (:icon 1) (:icon 20) nil)
      (:read (:apply l$ (:var i))) (:next i))
     (:line 350
      (:data (:scon "kick") (:scon "receive") (:scon " yard ")
       (:scon "run back for ") (:scon "ball on ")))
     (:line 360
      (:data (:scon "yard line") (:scon " simple run") (:scon " tricky run")
       (:scon " short pass")))
     (:line 370
      (:data (:scon " long pass") (:scon "punt") (:scon " quick kick ")
       (:scon " place kick") (:scon " loss ")))
     (:line 380
      (:data (:scon " no gain") (:scon "gain ") (:scon " touchdown ")
       (:scon " touchback ") (:scon "safety***")))
     (:line 385 (:data (:scon "junk")))
     (:line 390
      (:let (:var p)
       (:apply int (:binary :mul (:apply rnd (:icon 1)) (:icon 2)))))
     (:line 400
      (:print (:apply o$ (:var p)) :semi (:scon " won the toss")))
     (:line 410
      (:def fnf x
       (:binary :minus (:icon 1) (:binary :mul (:icon 2) (:var p)))))
     (:line 420
      (:def fng z
       (:binary :plus
        (:binary :mul (:var p) (:binary :minus (:var x1) (:var x)))
        (:binary :mul (:binary :minus (:icon 1) (:var p))
         (:binary :minus (:var x) (:var x1))))))
     (:line 430 (:if (:binary :eq (:var p) (:icon 0))) (:goto 470))
     (:line 440
      (:print (:apply o$ (:icon 1)) :semi (:scon " elects to receive.")))
     (:line 450 (:print)) (:line 460 (:goto 580))
     (:line 470 (:print (:scon "do you elect to kick or receive") :semi))
     (:line 480 (:input nil ((:var a$)))) (:line 490 (:print))
     (:line 500 (:for e (:icon 1) (:icon 2) nil))
     (:line 510 (:if (:binary :eq (:var a$) (:apply l$ (:var e))))
      (:goto 550))
     (:line 520 (:next e))
     (:line 530
      (:print (:scon "incorrect answer.  please type 'kick' or 'recieve'")
       :semi))
     (:line 540 (:goto 480))
     (:line 550 (:if (:binary :eq (:var e) (:icon 2))) (:goto 580))
     (:line 560 (:let (:var p) (:icon 1)))
     (:line 580
      (:let (:var x)
       (:binary :plus (:icon 40)
        (:binary :mul (:binary :minus (:icon 1) (:var p)) (:icon 20)))))
     (:line 590
      (:let (:var y)
       (:apply int
        (:binary :plus
         (:binary :mul (:icon 200)
          (:exp (:binary :minus (:apply rnd (:icon 1)) (:fcon 0.5))
           (:icon 3)))
         (:icon 55)))))
     (:line 600
      (:print (:var y) :semi (:apply l$ (:icon 3)) :semi
       (:scon " kickoff")))
     (:line 610
      (:let (:var x)
       (:binary :minus (:var x)
        (:binary :mul (:apply fnf (:icon 1)) (:var y)))))
     (:line 620
      (:if
       (:binary :ge (:apply abs (:binary :minus (:var x) (:icon 50)))
        (:icon 50)))
      (:goto 700))
     (:line 630
      (:let (:var y)
       (:binary :plus
        (:apply int
         (:binary :mul (:icon 50) (:exp (:apply rnd (:icon 1)) (:icon 2))))
        (:binary :mul (:binary :minus (:icon 1) (:var p))
         (:apply int
          (:binary :mul (:icon 50)
           (:exp (:apply rnd (:icon 1)) (:icon 4))))))))
     (:line 640
      (:let (:var x)
       (:binary :plus (:var x)
        (:binary :mul (:apply fnf (:icon 1)) (:var y)))))
     (:line 650
      (:if
       (:binary :ge (:apply abs (:binary :minus (:var x) (:icon 50)))
        (:icon 50)))
      (:goto 655))
     (:line 651
      (:print (:var y) :semi (:apply l$ (:icon 3)) :semi
       (:scon " runback")))
     (:line 652 (:goto 720))
     (:line 655 (:print (:apply l$ (:icon 4)) :semi))
     (:line 660 (:goto 2600))
     (:line 700
      (:print (:scon "touchback for ") :semi (:apply o$ (:var p)) :semi
       (:scon ".")))
     (:line 710
      (:let (:var x)
       (:binary :plus (:icon 20) (:binary :mul (:var p) (:icon 60)))))
     (:line 720 (:rem " first down
")) (:line 730 (:gosub 800))
     (:line 740 (:let (:var x1) (:var x)))
     (:line 750 (:let (:var d) (:icon 1)))
     (:line 760 (:print)
      (:print (:scon "first down ") :semi (:apply o$ (:var p)) :semi
       (:scon "***")))
     (:line 770 (:print)) (:line 780 (:print)) (:line 790 (:goto 860))
     (:line 800 (:rem " print position
"))
     (:line 810 (:if (:binary :gt (:var x) (:icon 50))) (:goto 840))
     (:line 820
      (:print (:apply l$ (:icon 5)) :semi (:apply o$ (:icon 0)) :semi
       (:var x) :semi (:apply l$ (:icon 6))))
     (:line 830 (:goto 850))
     (:line 840
      (:print (:apply l$ (:icon 5)) :semi (:apply o$ (:icon 1)) :semi
       (:binary :minus (:icon 100) (:var x)) :semi
       (:apply l$ (:icon 6))))
     (:line 850 (:return)) (:line 860 (:rem " new play
"))
     (:line 870 (:let (:var t) (:binary :plus (:var t) (:icon 1))))
     (:line 880 (:if (:binary :eq (:var t) (:icon 30))) (:goto 1060))
     (:line 890 (:if (:binary :lt (:var t) (:icon 50))) (:goto 940))
     (:line 900 (:if (:binary :gt (:apply rnd (:icon 1)) (:fcon 0.2)))
      (:goto 940))
     (:line 910 (:print (:scon "end of game  ***")))
     (:line 920
      (:print (:scon "final score:  ") :semi (:apply o$ (:icon 0)) :semi
       (:scon ": ") :semi (:apply s (:icon 0)) :semi (:scon "  ") :semi
       (:apply o$ (:icon 1)) :semi (:scon ": ") :semi
       (:apply s (:icon 1))))
     (:line 930 (:stop))
     (:line 940 (:if (:binary :eq (:var p) (:icon 1))) (:goto 1870))
     (:line 950 (:print (:scon "next play") :semi))
     (:line 960 (:input nil ((:var z))))
     (:line 970 (:if (:binary :ne (:var z) (:apply int (:var z))))
      (:goto 990))
     (:line 980
      (:if
       (:binary :le (:apply abs (:binary :minus (:var z) (:icon 4)))
        (:icon 3)))
      (:goto 1010))
     (:line 990 (:print (:scon "illegal play number, retype") :semi))
     (:line 1000 (:goto 960)) (:line 1010 (:let (:var f) (:icon 0)))
     (:line 1020
      (:print (:apply l$ (:binary :plus (:var z) (:icon 6))) :semi
       (:scon ".  ") :semi))
     (:line 1030
      (:let (:var r)
       (:binary :mul (:apply rnd (:icon 1))
        (:binary :plus (:fcon 0.97999996)
         (:binary :mul (:apply fnf (:icon 1)) (:fcon 0.02))))))
     (:line 1040 (:let (:var r1) (:apply rnd (:icon 1))))
     (:line 1050 (:on-goto (:var z) (1110 1150 1260 1480 1570 1570 1680)))
     (:line 1060 (:rem "  jean's special
"))
     (:line 1070
      (:if
       (:binary :gt (:apply rnd (:icon 1))
        (:binary :div (:icon 1) (:icon 3))))
      (:goto 940))
     (:line 1080 (:print (:scon "game delayed.  dog on field.")))
     (:line 1090 (:print)) (:line 1100 (:goto 940))
     (:line 1110 (:rem "  simple run
"))
     (:line 1120
      (:let (:var y)
       (:apply int
        (:binary :plus
         (:binary :mul (:icon 24)
          (:exp (:binary :minus (:var r) (:fcon 0.5)) (:icon 3)))
         (:icon 3)))))
     (:line 1130
      (:if (:binary :lt (:apply rnd (:icon 1)) (:fcon 0.049999997)))
      (:goto 1180))
     (:line 1140 (:goto 2190)) (:line 1150 (:rem "  tricky run
"))
     (:line 1160
      (:let (:var y)
       (:apply int
        (:binary :minus (:binary :mul (:icon 20) (:var r)) (:icon 5)))))
     (:line 1170 (:if (:binary :gt (:apply rnd (:icon 1)) (:fcon 0.1)))
      (:goto 2190))
     (:line 1180 (:let (:var f) (:uminus (:icon 1))))
     (:line 1190 (:let (:var x3) (:var x)))
     (:line 1200
      (:let (:var x)
       (:binary :plus (:var x)
        (:binary :mul (:apply fnf (:icon 1)) (:var y)))))
     (:line 1210
      (:if
       (:binary :ge (:apply abs (:binary :minus (:var x) (:icon 50)))
        (:icon 50)))
      (:goto 1240))
     (:line 1220 (:print (:scon "***  fumble after ") :semi))
     (:line 1230 (:goto 2230)) (:line 1240 (:print (:scon "***  fumble.")))
     (:line 1250 (:goto 2450)) (:line 1260 (:rem "  short pass
"))
     (:line 1270
      (:let (:var y)
       (:apply int
        (:binary :plus
         (:binary :mul (:icon 60)
          (:exp (:binary :minus (:var r1) (:fcon 0.5)) (:icon 3)))
         (:icon 10)))))
     (:line 1280 (:if (:binary :lt (:var r) (:fcon 0.049999997)))
      (:goto 1330))
     (:line 1290 (:if (:binary :lt (:var r) (:fcon 0.14999999)))
      (:goto 1390))
     (:line 1300 (:if (:binary :lt (:var r) (:fcon 0.55))) (:goto 1420))
     (:line 1310 (:print (:scon "complete.  ") :semi))
     (:line 1320 (:goto 2190))
     (:line 1330 (:if (:binary :eq (:var d) (:icon 4))) (:goto 1420))
     (:line 1340 (:print (:scon "intercepted.")))
     (:line 1350 (:let (:var f) (:uminus (:icon 1))))
     (:line 1360
      (:let (:var x)
       (:binary :plus (:var x)
        (:binary :mul (:apply fnf (:icon 1)) (:var y)))))
     (:line 1370
      (:if
       (:binary :ge (:apply abs (:binary :minus (:var x) (:icon 50)))
        (:icon 50)))
      (:goto 2450))
     (:line 1380 (:goto 2300))
     (:line 1390 (:print (:scon "passer tackled.  ") :semi))
     (:line 1400
      (:let (:var y)
       (:uminus (:apply int (:binary :mul (:icon 10) (:var r1))))))
     (:line 1410 (:goto 2190)) (:line 1420 (:let (:var y) (:icon 0)))
     (:line 1430 (:if (:binary :lt (:apply rnd (:icon 1)) (:fcon 0.3)))
      (:goto 1460))
     (:line 1440 (:print (:scon "incomplete.  ") :semi))
     (:line 1450 (:goto 2190))
     (:line 1460 (:print (:scon "batted down.  ") :semi))
     (:line 1470 (:goto 2190)) (:line 1480 (:rem "  long pass
"))
     (:line 1490
      (:let (:var y)
       (:apply int
        (:binary :plus
         (:binary :mul (:icon 160)
          (:exp (:binary :minus (:var r1) (:fcon 0.5)) (:icon 3)))
         (:icon 30)))))
     (:line 1500 (:if (:binary :lt (:var r) (:fcon 0.1))) (:goto 1330))
     (:line 1510 (:if (:binary :lt (:var r) (:fcon 0.3))) (:goto 1540))
     (:line 1520 (:if (:binary :lt (:var r) (:fcon 0.75))) (:goto 1420))
     (:line 1530 (:goto 1310))
     (:line 1540 (:print (:scon "passer tackled.  ") :semi))
     (:line 1550
      (:let (:var y)
       (:uminus
        (:apply int
         (:binary :plus (:binary :mul (:icon 15) (:var r1)) (:icon 3))))))
     (:line 1560 (:goto 2190)) (:line 1570 (:rem "  punt or kick
"))
     (:line 1580
      (:let (:var y)
       (:apply int
        (:binary :plus
         (:binary :mul (:icon 100)
          (:exp (:binary :minus (:var r) (:fcon 0.5)) (:icon 3)))
         (:icon 35)))))
     (:line 1590 (:if (:binary :eq (:var d) (:icon 4))) (:goto 1610))
     (:line 1600
      (:let (:var y)
       (:apply int (:binary :mul (:var y) (:fcon 1.3)))))
     (:line 1610
      (:print (:var y) :semi (:apply l$ (:icon 3)) :semi
       (:scon " punt")))
     (:line 1620
      (:if
       (:binary :ge
        (:apply abs
         (:binary :minus
          (:binary :plus (:var x)
           (:binary :mul (:var y) (:apply fnf (:icon 1))))
          (:icon 50)))
        (:icon 50)))
      (:goto 1670))
     (:line 1630 (:if (:binary :lt (:var d) (:icon 4))) (:goto 1670))
     (:line 1640
      (:let (:var y1)
       (:apply int
        (:binary :mul (:exp (:var r1) (:icon 2)) (:icon 20)))))
     (:line 1650
      (:print (:var y1) :semi (:apply l$ (:icon 3)) :semi
       (:scon " run back")))
     (:line 1660
      (:let (:var y) (:binary :minus (:var y) (:var y1))))
     (:line 1670 (:goto 1350)) (:line 1680 (:rem "  place kick
"))
     (:line 1690
      (:let (:var y)
       (:apply int
        (:binary :plus
         (:binary :mul (:icon 100)
          (:exp (:binary :minus (:var r) (:fcon 0.5)) (:icon 3)))
         (:icon 35)))))
     (:line 1700 (:if (:binary :gt (:var r1) (:fcon 0.14999999)))
      (:goto 1740))
     (:line 1710 (:print (:scon "kick is blocked  ***")))
     (:line 1720
      (:let (:var x)
       (:binary :minus (:var x)
        (:binary :mul (:icon 5) (:apply fnf (:icon 1))))))
     (:line 1730 (:let (:var p) (:binary :minus (:icon 1) (:var p))))
     (:line 1740 (:goto 720))
     (:line 1750
      (:let (:var x)
       (:binary :plus (:var x)
        (:binary :mul (:apply fnf (:icon 1)) (:var y)))))
     (:line 1760
      (:if
       (:binary :ge (:apply abs (:binary :minus (:var x) (:icon 50)))
        (:icon 60)))
      (:goto 1810))
     (:line 1770 (:print (:scon "kick is short.")))
     (:line 1780
      (:if
       (:binary :ge (:apply abs (:binary :minus (:var x) (:icon 50)))
        (:icon 50)))
      (:goto 2710))
     (:line 1790 (:let (:var p) (:binary :minus (:icon 1) (:var p))))
     (:line 1800 (:goto 630))
     (:line 1810 (:if (:binary :gt (:var r1) (:fcon 0.5))) (:goto 1840))
     (:line 1820 (:print (:scon "kick is off to the side.")))
     (:line 1830 (:goto 2710)) (:line 1840 (:print (:scon "field goal ***")))
     (:line 1850
      (:let (:apply s (:var p))
       (:binary :plus (:apply s (:var p)) (:icon 3))))
     (:line 1860 (:goto 2640)) (:line 1870 (:rem "  opponent's play
"))
     (:line 1880 (:if (:binary :gt (:var d) (:icon 1))) (:goto 1940))
     (:line 1890
      (:if
       (:binary :gt (:apply rnd (:icon 1))
        (:binary :div (:icon 1) (:icon 3))))
      (:goto 1920))
     (:line 1900 (:let (:var z) (:icon 3))) (:line 1910 (:goto 1010))
     (:line 1920 (:let (:var z) (:icon 1))) (:line 1930 (:goto 1010))
     (:line 1940 (:if (:binary :eq (:var d) (:icon 4))) (:goto 2090))
     (:line 1950
      (:if
       (:binary :lt
        (:binary :minus (:binary :plus (:icon 10) (:var x)) (:var x1))
        (:icon 5)))
      (:goto 1890))
     (:line 1960 (:if (:binary :lt (:var x) (:icon 5))) (:goto 1890))
     (:line 1970 (:if (:binary :le (:var x) (:icon 10))) (:goto 2160))
     (:line 1980 (:if (:binary :gt (:var x) (:var x1))) (:goto 2020))
     (:line 1990
      (:let (:var a)
       (:apply int (:binary :mul (:icon 2) (:apply rnd (:icon 1))))))
     (:line 2000
      (:let (:var z)
       (:binary :plus (:icon 2) (:binary :mul (:var a) (:icon 2)))))
     (:line 2010 (:goto 1010))
     (:line 2020 (:if (:binary :lt (:var d) (:icon 3))) (:goto 1990))
     (:line 2030 (:if (:binary :lt (:var x) (:icon 45))) (:goto 1990))
     (:line 2040
      (:if
       (:binary :gt (:apply rnd (:icon 1))
        (:binary :div (:icon 1) (:icon 4))))
      (:goto 2070))
     (:line 2050 (:let (:var z) (:icon 6))) (:line 2060 (:goto 1010))
     (:line 2070 (:let (:var z) (:icon 4))) (:line 2080 (:goto 1010))
     (:line 2090 (:if (:binary :gt (:var x) (:icon 30))) (:goto 2140))
     (:line 2100
      (:if
       (:binary :lt
        (:binary :minus (:binary :plus (:icon 10) (:var x)) (:var x1))
        (:icon 3)))
      (:goto 1890))
     (:line 2110 (:if (:binary :lt (:var x) (:icon 3))) (:goto 1890))
     (:line 2120 (:let (:var z) (:icon 7))) (:line 2130 (:goto 1010))
     (:line 2140 (:let (:var z) (:icon 5))) (:line 2150 (:goto 1010))
     (:line 2160
      (:let (:var a)
       (:apply int (:binary :mul (:icon 2) (:apply rnd (:icon 1))))))
     (:line 2170 (:let (:var z) (:binary :plus (:icon 2) (:var a))))
     (:line 2180 (:goto 1010)) (:line 2190 (:rem " gain or loss
"))
     (:line 2200 (:let (:var x3) (:var x)))
     (:line 2210
      (:let (:var x)
       (:binary :plus (:var x)
        (:binary :mul (:apply fnf (:icon 1)) (:var y)))))
     (:line 2220
      (:if
       (:binary :ge (:apply abs (:binary :minus (:var x) (:icon 50)))
        (:icon 50)))
      (:goto 2450))
     (:line 2230 (:if (:binary :eq (:var y) (:icon 0))) (:goto 2250))
     (:line 2240
      (:print (:apply abs (:var y)) :semi (:apply l$ (:icon 3))
       :semi))
     (:line 2250
      (:print
       (:apply l$
        (:binary :plus (:icon 15) (:apply sgn (:var y))))))
     (:line 2280
      (:if
       (:binary :gt (:apply abs (:binary :minus (:var x3) (:icon 50)))
        (:icon 40)))
      (:goto 2300))
     (:line 2290 (:if (:binary :lt (:apply rnd (:icon 1)) (:fcon 0.1)))
      (:goto 2860))
     (:line 2300 (:gosub 800))
     (:line 2310 (:if (:binary :eq (:var f) (:icon 0))) (:goto 2340))
     (:line 2320 (:let (:var p) (:binary :minus (:icon 1) (:var p))))
     (:line 2330 (:goto 740))
     (:line 2340 (:if (:binary :ge (:apply fng (:icon 1)) (:icon 10)))
      (:goto 740))
     (:line 2350 (:if (:binary :eq (:var d) (:icon 4))) (:goto 2320))
     (:line 2360 (:let (:var d) (:binary :plus (:var d) (:icon 1))))
     (:line 2370
      (:print (:scon "down: ") :semi (:var d) :semi (:scon "     ") :semi))
     (:line 2380
      (:if
       (:binary :lt
        (:binary :mul (:binary :minus (:var x1) (:icon 50))
         (:apply fnf (:icon 1)))
        (:icon 40)))
      (:goto 2410))
     (:line 2390 (:print (:scon "goal to go"))) (:line 2400 (:goto 2420))
     (:line 2410
      (:print (:scon "yards to go: ") :semi
       (:binary :minus (:icon 10) (:apply fng (:icon 1)))))
     (:line 2420 (:print)) (:line 2430 (:print)) (:line 2440 (:goto 860))
     (:line 2450 (:rem " ball in end-zone
"))
     (:line 2460 (:if (:binary :ge (:var x) (:icon 100))) (:goto 2490))
     (:line 2470 (:let (:var e) (:icon 0))) (:line 2480 (:goto 2500))
     (:line 2490 (:let (:var e) (:icon 1)))
     (:line 2500
      (:on-goto
       (:binary :plus
        (:binary :minus (:binary :plus (:icon 1) (:var e))
         (:binary :mul (:var f) (:icon 2)))
        (:binary :mul (:var p) (:icon 4)))
       (2510 2590 2760 2710 2590 2510 2710 2760)))
     (:line 2510 (:rem " safety
"))
     (:line 2520
      (:let (:apply s (:binary :minus (:icon 1) (:var p)))
       (:binary :plus (:apply s (:binary :minus (:icon 1) (:var p)))
        (:icon 2))))
     (:line 2530 (:print (:apply l$ (:icon 19))))
     (:line 2540 (:gosub 2800))
     (:line 2550
      (:print (:apply o$ (:var p)) :semi
       (:scon " kicks off from its 20 yard line.")))
     (:line 2560
      (:let (:var x)
       (:binary :plus (:icon 20) (:binary :mul (:var p) (:icon 60)))))
     (:line 2570 (:let (:var p) (:binary :minus (:icon 1) (:var p))))
     (:line 2580 (:goto 590)) (:line 2590 (:rem " offensive td
"))
     (:line 2600 (:print (:apply l$ (:icon 17)) :semi (:scon "***")))
     (:line 2610 (:if (:binary :gt (:apply rnd (:icon 1)) (:fcon 0.8)))
      (:goto 2680))
     (:line 2620
      (:let (:apply s (:var p))
       (:binary :plus (:apply s (:var p)) (:icon 7))))
     (:line 2630 (:print (:scon "kick is good."))) (:line 2640 (:gosub 2800))
     (:line 2650
      (:print (:apply o$ (:var p)) :semi (:scon " kicks off")))
     (:line 2660 (:let (:var p) (:binary :minus (:icon 1) (:var p))))
     (:line 2670 (:goto 580))
     (:line 2680 (:print (:scon "kick is off to the side")))
     (:line 2690
      (:let (:apply s (:var p))
       (:binary :plus (:apply s (:var p)) (:icon 6))))
     (:line 2700 (:goto 2640)) (:line 2710 (:rem " touchback
"))
     (:line 2720 (:print (:apply l$ (:icon 18))))
     (:line 2730 (:let (:var p) (:binary :minus (:icon 1) (:var p))))
     (:line 2740
      (:let (:var x)
       (:binary :plus (:icon 20) (:binary :mul (:var p) (:icon 60)))))
     (:line 2750 (:goto 720)) (:line 2760 (:rem " defensive td
"))
     (:line 2770
      (:print (:apply l$ (:icon 17)) :semi (:scon "for ") :semi
       (:apply o$ (:binary :minus (:icon 1) (:var p))) :semi
       (:scon "***")))
     (:line 2780 (:let (:var p) (:binary :minus (:icon 1) (:var p))))
     (:line 2790 (:goto 2600)) (:line 2800 (:rem " score
"))
     (:line 2810 (:print))
     (:line 2820
      (:print (:scon "score:  ") :semi (:apply s (:icon 0)) :semi
       (:scon " to ") :semi (:apply s (:icon 1))))
     (:line 2830 (:print)) (:line 2840 (:print)) (:line 2850 (:return))
     (:line 2860 (:rem " penalty
"))
     (:line 2870
      (:let (:var p3)
       (:apply int (:binary :mul (:icon 2) (:apply rnd (:icon 1))))))
     (:line 2880
      (:print (:apply o$ (:var p3)) :semi
       (:scon " offsides -- penalty of 5 yards.")))
     (:line 2890 (:print)) (:line 2900 (:print))
     (:line 2910 (:if (:binary :eq (:var p3) (:icon 0))) (:goto 2980))
     (:line 2920 (:print (:scon "do you accept the penalty") :semi))
     (:line 2930 (:input nil ((:var a$))))
     (:line 2940 (:if (:binary :eq (:var a$) (:scon "no"))) (:goto 2300))
     (:line 2950 (:if (:binary :eq (:var a$) (:scon "yes"))) (:goto 3110))
     (:line 2960 (:print (:scon "type 'yes' or 'no'") :semi))
     (:line 2970 (:goto 2930))
     (:line 2980 (:rem " opponent's strategy on penalty
"))
     (:line 2990 (:if (:binary :eq (:var p) (:icon 1))) (:goto 3040))
     (:line 3000 (:if (:binary :le (:var y) (:icon 0))) (:goto 3080))
     (:line 3010 (:if (:binary :lt (:var f) (:icon 0))) (:goto 3080))
     (:line 3020
      (:if
       (:binary :lt (:apply fng (:icon 1))
        (:binary :minus (:binary :mul (:icon 3) (:var d)) (:icon 2))))
      (:goto 3080))
     (:line 3030 (:goto 3100))
     (:line 3040 (:if (:binary :le (:var y) (:icon 5))) (:goto 3100))
     (:line 3050 (:if (:binary :lt (:var f) (:icon 0))) (:goto 3100))
     (:line 3060 (:if (:binary :lt (:var d) (:icon 4))) (:goto 3080))
     (:line 3070 (:if (:binary :lt (:apply fng (:icon 1)) (:icon 10)))
      (:goto 3100))
     (:line 3080 (:print (:scon "penalty refused."))) (:line 3090 (:goto 2300))
     (:line 3100 (:print (:scon "penalty accepted.")))
     (:line 3110 (:let (:var f) (:icon 0)))
     (:line 3120 (:let (:var d) (:binary :minus (:var d) (:icon 1))))
     (:line 3130 (:if (:binary :ne (:var p) (:var p3))) (:goto 3160))
     (:line 3140
      (:let (:var x)
       (:binary :minus (:var x3)
        (:binary :mul (:apply fnf (:icon 1)) (:icon 5)))))
     (:line 3150 (:goto 2300))
     (:line 3160
      (:let (:var x)
       (:binary :plus (:var x3)
        (:binary :mul (:apply fnf (:icon 1)) (:icon 5)))))
     (:line 3170 (:goto 2300)) (:line 3180 (:end)))))



(defvar *furtrader*
  '(((:line 1 (:dim ((:dimd f (:icon 4)))))
     (:line 2 (:print (:apply tab (:icon 31)) :semi (:scon "fur trader")))
     (:line 4
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 6 (:print) (:print) (:print)) (:line 15 (:gosub 1091))
     (:line 16 (:let (:var i) (:icon 600)))
     (:line 17 (:print (:scon "do you wish to trade furs?")))
     (:line 18 (:gosub 1402))
     (:line 19 (:if (:binary :eq (:var b$) (:scon "yes"))) (:goto 100))
     (:line 20 (:if (:binary :eq (:var b$) (:scon "yes "))) (:goto 100))
     (:line 21 (:stop)) (:line 100 (:print))
     (:line 101
      (:print (:scon "you have $") :semi (:var i) (:scon " savings.")))
     (:line 102 (:print (:scon "and 190 furs to begin the expedition.")))
     (:line 261
      (:let (:var e1)
       (:binary :div
        (:apply int
         (:binary :plus
          (:binary :mul
           (:binary :plus
            (:binary :mul (:fcon 0.14999999) (:apply rnd (:icon 1)))
            (:fcon 0.95))
           (:exp (:icon 10) (:icon 2)))
          (:fcon 0.5)))
        (:exp (:icon 10) (:icon 2)))))
     (:line 262
      (:let (:var b1)
       (:binary :div
        (:apply int
         (:binary :plus
          (:binary :mul
           (:binary :plus
            (:binary :mul (:fcon 0.25) (:apply rnd (:icon 1))) (:fcon 1.0))
           (:exp (:icon 10) (:icon 2)))
          (:fcon 0.5)))
        (:exp (:icon 10) (:icon 2)))))
     (:line 300 (:print))
     (:line 301
      (:print (:scon "your 190 furs are distributed among the following")))
     (:line 302
      (:print (:scon "kinds of pelts: mink, beaver, ermine and fox.")))
     (:line 310 (:gosub 1430)) (:line 315 :restore)
     (:line 330 (:for j (:icon 1) (:icon 4) nil))
     (:line 332 (:read (:var b$))) (:line 333 (:print))
     (:line 335
      (:print (:scon "how many ") :semi (:var b$) :semi
       (:scon " pelts do you have") :semi))
     (:line 338 (:input nil ((:apply f (:var j)))))
     (:line 340
      (:let (:apply f (:icon 0))
       (:binary :plus
        (:binary :plus
         (:binary :plus (:apply f (:icon 1)) (:apply f (:icon 2)))
         (:apply f (:icon 3)))
        (:apply f (:icon 4)))))
     (:line 342 (:if (:binary :eq (:apply f (:icon 0)) (:icon 190)))
      (:goto 1100))
     (:line 344 (:if (:binary :gt (:apply f (:icon 0)) (:icon 190)))
      (:goto 500))
     (:line 348 (:next j)) (:line 350 (:goto 1100)) (:line 500 (:print))
     (:line 501 (:print (:scon "you may not have that many furs.")))
     (:line 502 (:print (:scon "do not try to cheat.  i can add.")))
     (:line 503 (:print (:scon "you must start again.")))
     (:line 504 (:goto 15)) (:line 508 (:print))
     (:line 511 (:print (:scon "do you want to trade furs next year?")))
     (:line 513 (:goto 18))
     (:line 1091
      (:print
       (:scon "you are the leader of a french fur trading expedition in ")))
     (:line 1092
      (:print
       (:scon "1776 leaving the lake ontario area to sell furs and get")))
     (:line 1093
      (:print
       (:scon "supplies for the next year.  you have a choice of three")))
     (:line 1094
      (:print (:scon "forts at which you may trade.  the cost of supplies")))
     (:line 1095
      (:print (:scon "and the amount you receive for your furs will depend")))
     (:line 1096 (:print (:scon "on the fort that you choose.")))
     (:line 1099 (:return))
     (:line 1100 (:print (:scon "you may trade your furs at fort 1, fort 2,")))
     (:line 1102
      (:print (:scon "or fort 3.  fort 1 is fort hochelaga (montreal)")))
     (:line 1103
      (:print (:scon "and is under the protection of the french army.")))
     (:line 1104
      (:print (:scon "fort 2 is fort stadacona (quebec) and is under the")))
     (:line 1105
      (:print (:scon "protection of the french army.  however, you must")))
     (:line 1106
      (:print (:scon "make a portage and cross the lachine rapids.")))
     (:line 1108
      (:print (:scon "fort 3 is fort new york and is under dutch control.")))
     (:line 1109 (:print (:scon "you must cross through iroquois land.")))
     (:line 1110 (:print (:scon "answer 1, 2, or 3.")))
     (:line 1111 (:input nil ((:var b))))
     (:line 1112 (:if (:binary :eq (:var b) (:icon 1))) (:goto 1120))
     (:line 1113 (:if (:binary :eq (:var b) (:icon 2))) (:goto 1135))
     (:line 1115 (:if (:binary :eq (:var b) (:icon 3))) (:goto 1147))
     (:line 1116 (:goto 1110))
     (:line 1120
      (:print (:scon "you have chosen the easiest route.  however, the fort")))
     (:line 1121 (:print (:scon "is far from any seaport.  the value")))
     (:line 1122
      (:print (:scon "you receive for your furs will be low and the cost")))
     (:line 1123
      (:print
       (:scon "of supplies higher than at forts stadacona or new york.")))
     (:line 1125 (:gosub 1400))
     (:line 1129 (:if (:binary :eq (:var b$) (:scon "yes"))) (:goto 1110))
     (:line 1130 (:goto 1160))
     (:line 1135
      (:print (:scon "you have chosen a hard route.  it is, in comparsion,")))
     (:line 1136
      (:print (:scon "harder than the route to hochelaga but easier than")))
     (:line 1137
      (:print
       (:scon "the route to new york.  you will receive an average value")))
     (:line 1138
      (:print
       (:scon "for your furs and the cost of your supplies will be average.")))
     (:line 1141 (:gosub 1400))
     (:line 1144 (:if (:binary :eq (:var b$) (:scon "yes"))) (:goto 1110))
     (:line 1145 (:goto 1198))
     (:line 1147
      (:print (:scon "you have chosen the most difficult route.  at")))
     (:line 1148
      (:print (:scon "fort new york you will receive the highest value")))
     (:line 1149 (:print (:scon "for your furs.  the cost of your supplies")))
     (:line 1150 (:print (:scon "will be lower than at all the other forts.")))
     (:line 1152 (:gosub 1400))
     (:line 1155 (:if (:binary :eq (:var b$) (:scon "yes"))) (:goto 1110))
     (:line 1156 (:goto 1250))
     (:line 1160 (:let (:var i) (:binary :minus (:var i) (:icon 160))))
     (:line 1169 (:print))
     (:line 1174
      (:let (:var m1)
       (:binary :div
        (:apply int
         (:binary :plus
          (:binary :mul
           (:binary :plus (:binary :mul (:fcon 0.2) (:apply rnd (:icon 1)))
            (:fcon 0.7))
           (:exp (:icon 10) (:icon 2)))
          (:fcon 0.5)))
        (:exp (:icon 10) (:icon 2)))))
     (:line 1175
      (:let (:var e1)
       (:binary :div
        (:apply int
         (:binary :plus
          (:binary :mul
           (:binary :plus (:binary :mul (:fcon 0.2) (:apply rnd (:icon 1)))
            (:fcon 0.65))
           (:exp (:icon 10) (:icon 2)))
          (:fcon 0.5)))
        (:exp (:icon 10) (:icon 2)))))
     (:line 1176
      (:let (:var b1)
       (:binary :div
        (:apply int
         (:binary :plus
          (:binary :mul
           (:binary :plus (:binary :mul (:fcon 0.2) (:apply rnd (:icon 1)))
            (:fcon 0.75))
           (:exp (:icon 10) (:icon 2)))
          (:fcon 0.5)))
        (:exp (:icon 10) (:icon 2)))))
     (:line 1177
      (:let (:var d1)
       (:binary :div
        (:apply int
         (:binary :plus
          (:binary :mul
           (:binary :plus (:binary :mul (:fcon 0.2) (:apply rnd (:icon 1)))
            (:fcon 0.8))
           (:exp (:icon 10) (:icon 2)))
          (:fcon 0.5)))
        (:exp (:icon 10) (:icon 2)))))
     (:line 1180 (:print (:scon "supplies at fort hochelaga cost $150.00.")))
     (:line 1181
      (:print (:scon "your travel expenses to hochelaga were $10.00.")))
     (:line 1190 (:goto 1410))
     (:line 1198 (:let (:var i) (:binary :minus (:var i) (:icon 140))))
     (:line 1201 (:print))
     (:line 1205
      (:let (:var m1)
       (:binary :div
        (:apply int
         (:binary :plus
          (:binary :mul
           (:binary :plus (:binary :mul (:fcon 0.3) (:apply rnd (:icon 1)))
            (:fcon 0.84999996))
           (:exp (:icon 10) (:icon 2)))
          (:fcon 0.5)))
        (:exp (:icon 10) (:icon 2)))))
     (:line 1206
      (:let (:var e1)
       (:binary :div
        (:apply int
         (:binary :plus
          (:binary :mul
           (:binary :plus
            (:binary :mul (:fcon 0.14999999) (:apply rnd (:icon 1)))
            (:fcon 0.8))
           (:exp (:icon 10) (:icon 2)))
          (:fcon 0.5)))
        (:exp (:icon 10) (:icon 2)))))
     (:line 1207
      (:let (:var b1)
       (:binary :div
        (:apply int
         (:binary :plus
          (:binary :mul
           (:binary :plus (:binary :mul (:fcon 0.2) (:apply rnd (:icon 1)))
            (:fcon 0.90000004))
           (:exp (:icon 10) (:icon 2)))
          (:fcon 0.5)))
        (:exp (:icon 10) (:icon 2)))))
     (:line 1209
      (:let (:var p)
       (:binary :plus
        (:apply int (:binary :mul (:icon 10) (:apply rnd (:icon 1))))
        (:icon 1))))
     (:line 1210 (:if (:binary :le (:var p) (:icon 2))) (:goto 1216))
     (:line 1212 (:if (:binary :le (:var p) (:icon 6))) (:goto 1224))
     (:line 1213 (:if (:binary :le (:var p) (:icon 8))) (:goto 1226))
     (:line 1215 (:if (:binary :le (:var p) (:icon 10))) (:goto 1235))
     (:line 1216 (:let (:apply f (:icon 2)) (:icon 0)))
     (:line 1218 (:print (:scon "your beaver were too heavy to carry across")))
     (:line 1219
      (:print (:scon "the portage.  you had to leave the pelts, but found")))
     (:line 1220 (:print (:scon "them stolen when you returned.")))
     (:line 1221 (:gosub 1244)) (:line 1222 (:goto 1414))
     (:line 1224 (:print (:scon "you arrived safely at fort stadacona.")))
     (:line 1225 (:goto 1239)) (:line 1226 (:gosub 1430))
     (:line 1230
      (:print (:scon "your canoe upset in the lachine rapids.  you")))
     (:line 1231 (:print (:scon "lost all your furs.")))
     (:line 1232 (:gosub 1244)) (:line 1233 (:goto 1418))
     (:line 1235 (:let (:apply f (:icon 4)) (:icon 0)))
     (:line 1237 (:print (:scon "your fox pelts were not cured properly.")))
     (:line 1238 (:print (:scon "no one will buy them.")))
     (:line 1239 (:gosub 1244)) (:line 1240 (:goto 1410))
     (:line 1244 (:print (:scon "supplies at fort stadacona cost $125.00.")))
     (:line 1246
      (:print (:scon "your travel expenses to stadacona were $15.00.")))
     (:line 1248 (:return))
     (:line 1250 (:let (:var i) (:binary :minus (:var i) (:icon 105))))
     (:line 1254 (:print))
     (:line 1260
      (:let (:var m1)
       (:binary :div
        (:apply int
         (:binary :plus
          (:binary :mul
           (:binary :plus
            (:binary :mul (:fcon 0.14999999) (:apply rnd (:icon 1)))
            (:fcon 1.05))
           (:exp (:icon 10) (:icon 2)))
          (:fcon 0.5)))
        (:exp (:icon 10) (:icon 2)))))
     (:line 1263
      (:let (:var d1)
       (:binary :div
        (:apply int
         (:binary :plus
          (:binary :mul
           (:binary :plus
            (:binary :mul (:fcon 0.25) (:apply rnd (:icon 1))) (:fcon 1.1))
           (:exp (:icon 10) (:icon 2)))
          (:fcon 0.5)))
        (:exp (:icon 10) (:icon 2)))))
     (:line 1270
      (:let (:var p)
       (:binary :plus
        (:apply int (:binary :mul (:icon 10) (:apply rnd (:icon 1))))
        (:icon 1))))
     (:line 1271 (:if (:binary :le (:var p) (:icon 2))) (:goto 1281))
     (:line 1272 (:if (:binary :le (:var p) (:icon 6))) (:goto 1291))
     (:line 1273 (:if (:binary :le (:var p) (:icon 8))) (:goto 1295))
     (:line 1274 (:if (:binary :le (:var p) (:icon 10))) (:goto 1306))
     (:line 1281 (:print (:scon "you were attacked by a party of iroquois.")))
     (:line 1282 (:print (:scon "all people in your trading group were")))
     (:line 1283 (:print (:scon "killed.  this ends the game.")))
     (:line 1284 (:stop))
     (:line 1291 (:print (:scon "you were lucky.  you arrived safely")))
     (:line 1292 (:print (:scon "at fort new york.")))
     (:line 1293 (:goto 1311)) (:line 1295 (:gosub 1430))
     (:line 1300
      (:print (:scon "you narrowly escaped an iroquois raiding party.")))
     (:line 1301
      (:print (:scon "however, you had to leave all your furs behind.")))
     (:line 1303 (:gosub 1320)) (:line 1304 (:goto 1418))
     (:line 1306 (:let (:var b1) (:binary :div (:var b1) (:icon 2))))
     (:line 1307 (:let (:var m1) (:binary :div (:var m1) (:icon 2))))
     (:line 1308
      (:print (:scon "your mink and beaver were damaged on your trip.")))
     (:line 1309
      (:print
       (:scon "you receive only half the current price for these furs.")))
     (:line 1311 (:gosub 1320)) (:line 1312 (:goto 1410))
     (:line 1320 (:print (:scon "supplies at new york cost $80.00.")))
     (:line 1321
      (:print (:scon "your travel expenses to new york were $25.00.")))
     (:line 1322 (:return))
     (:line 1400 (:print (:scon "do you want to trade at another fort?")))
     (:line 1402 (:print (:scon "answer yes or no") :comma))
     (:line 1403 (:input nil ((:var b$)))) (:line 1404 (:return))
     (:line 1410 (:print))
     (:line 1412
      (:print (:scon "your beaver sold for $") :semi
       (:binary :mul (:var b1) (:apply f (:icon 2))) :semi))
     (:line 1414
      (:print (:scon "your fox sold for $") :semi
       (:binary :mul (:var d1) (:apply f (:icon 4)))))
     (:line 1416
      (:print (:scon "your ermine sold for $") :semi
       (:binary :mul (:var e1) (:apply f (:icon 3))) :semi))
     (:line 1417
      (:print (:scon "your mink sold for $") :semi
       (:binary :mul (:var m1) (:apply f (:icon 1)))))
     (:line 1418
      (:let (:var i)
       (:binary :plus
        (:binary :plus
         (:binary :plus
          (:binary :plus (:binary :mul (:var m1) (:apply f (:icon 1)))
           (:binary :mul (:var b1) (:apply f (:icon 2))))
          (:binary :mul (:var e1) (:apply f (:icon 3))))
         (:binary :mul (:var d1) (:apply f (:icon 4))))
        (:var i))))
     (:line 1420 (:print))
     (:line 1422
      (:print (:scon "you now have $") :semi (:var i) :semi
       (:scon " including your previous savings")))
     (:line 1425 (:goto 508)) (:line 1430 (:for j (:icon 1) (:icon 4) nil))
     (:line 1432 (:let (:apply f (:var j)) (:icon 0)))
     (:line 1434 (:next j)) (:line 1436 (:return))
     (:line 2000
      (:data (:scon "mink") (:scon "beaver") (:scon "ermine") (:scon "fox")))
     (:line 2046 (:end)))))



(defvar *gameofevenwins*
  '(((:line 1
      (:print (:apply tab (:icon 28)) :semi (:scon "game of even wins")))
     (:line 2
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 3 (:print) (:print))
     (:line 4 (:input "do you want instructions (yes or no)" ((:var a$)))
      (:print))
     (:line 5 (:if (:binary :eq (:var a$) (:scon "no"))) (:goto 20))
     (:line 6 (:print (:scon "the game is played as follows:")) (:print))
     (:line 7
      (:print
       (:scon "at the beginning of the game, a random number of chips are")))
     (:line 8
      (:print
       (:scon "placed on the board.  the number of chips always starts")))
     (:line 9
      (:print
       (:scon "as an odd number.  on each turn, a player must take one,")))
     (:line 10
      (:print
       (:scon "two, three, or four chips.  the winner is the player who")))
     (:line 11
      (:print (:scon "finishes with a total number of chips that is even.")))
     (:line 12
      (:print (:scon "the computer starts out knowing only the rules of the")))
     (:line 13
      (:print
       (:scon "game.  it gradually learns to play well.  it should be")))
     (:line 14
      (:print
       (:scon "difficult to beat the computer after twenty games in a row.")))
     (:line 15 (:print (:scon "try it!!!!")) (:print))
     (:line 16 (:print (:scon "to quit at any time, type a '0' as your move."))
      (:print))
     (:line 20 (:dim ((:dimd2 r (:icon 1) (:icon 5)))))
     (:line 25 (:let (:var l) (:icon 0)) (:let (:var b) (:icon 0)))
     (:line 30 (:for i (:icon 0) (:icon 5) nil))
     (:line 40 (:let (:apply r (:icon 1) (:var i)) (:icon 4)))
     (:line 50 (:let (:apply r (:icon 0) (:var i)) (:icon 4)))
     (:line 60 (:next i))
     (:line 70 (:let (:var a) (:icon 0)) (:let (:var b) (:icon 0)))
     (:line 90
      (:let (:var p)
       (:binary :plus
        (:binary :mul
         (:apply int
          (:binary :div
           (:binary :plus (:binary :mul (:icon 13) (:apply rnd (:icon 1)))
            (:icon 9))
           (:icon 2)))
         (:icon 2))
        (:icon 1))))
     (:line 100 (:if (:binary :eq (:var p) (:icon 1))) (:goto 530))
     (:line 110
      (:print (:scon "there are") :semi (:var p) :semi
       (:scon "chips on the board.")))
     (:line 120 (:let (:var e1) (:var e)))
     (:line 130 (:let (:var l1) (:var l)))
     (:line 140
      (:let (:var e)
       (:binary :mul
        (:binary :minus (:binary :div (:var a) (:icon 2))
         (:apply int (:binary :div (:var a) (:icon 2))))
        (:icon 2))))
     (:line 150
      (:let (:var l)
       (:apply int
        (:binary :plus
         (:binary :mul
          (:binary :minus (:binary :div (:var p) (:icon 6))
           (:apply int (:binary :div (:var p) (:icon 6))))
          (:icon 6))
         (:fcon 0.5)))))
     (:line 160
      (:if (:binary :ge (:apply r (:var e) (:var l)) (:var p)))
      (:goto 320))
     (:line 170 (:let (:var m) (:apply r (:var e) (:var l))))
     (:line 180 (:if (:binary :le (:var m) (:icon 0))) (:goto 370))
     (:line 190 (:let (:var p) (:binary :minus (:var p) (:var m))))
     (:line 200 (:if (:binary :eq (:var m) (:icon 1))) (:goto 510))
     (:line 210
      (:print (:scon "computer takes") :semi (:var m) :semi
       (:scon "chips leaving") :semi (:var p) :semi (:scon "... your move")
       :semi))
     (:line 220 (:let (:var b) (:binary :plus (:var b) (:var m))))
     (:line 230 (:input nil ((:var m))))
     (:line 240 (:let (:var m) (:apply int (:var m))))
     (:line 250 (:if (:binary :lt (:var m) (:icon 1))) (:goto 450))
     (:line 260 (:if (:binary :gt (:var m) (:icon 4))) (:goto 460))
     (:line 270 (:if (:binary :gt (:var m) (:var p))) (:goto 460))
     (:line 280 (:if (:binary :eq (:var m) (:var p))) (:goto 360))
     (:line 290 (:let (:var p) (:binary :minus (:var p) (:var m))))
     (:line 300 (:let (:var a) (:binary :plus (:var a) (:var m))))
     (:line 310 (:goto 100))
     (:line 320 (:if (:binary :eq (:var p) (:icon 1))) (:goto 550))
     (:line 330
      (:print (:scon "computer takes") :semi (:var p) :semi
       (:scon "chips.")))
     (:line 340 (:let (:apply r (:var e) (:var l)) (:var p)))
     (:line 350 (:let (:var b) (:binary :plus (:var b) (:var p))))
     (:line 360
      (:if
       (:binary :eq (:binary :div (:var b) (:icon 2))
        (:apply int (:binary :div (:var b) (:icon 2)))))
      (:goto 420))
     (:line 370 (:print (:scon "game over ... you win!!!")) (:print))
     (:line 390
      (:if (:binary :eq (:apply r (:var e) (:var l)) (:icon 1)))
      (:goto 480))
     (:line 400
      (:let (:apply r (:var e) (:var l))
       (:binary :minus (:apply r (:var e) (:var l)) (:icon 1))))
     (:line 410 (:goto 70))
     (:line 420 (:print (:scon "game over ... i win!!!")) (:print))
     (:line 430 (:goto 70))
     (:line 450 (:if (:binary :eq (:var m) (:icon 0))) (:goto 570))
     (:line 460
      (:print (:var m) :semi (:scon "is an illegal move ... your move")
       :semi))
     (:line 470 (:goto 230))
     (:line 480
      (:if (:binary :eq (:apply r (:var e1) (:var l1)) (:icon 1)))
      (:goto 70))
     (:line 490
      (:let (:apply r (:var e1) (:var l1))
       (:binary :minus (:apply r (:var e1) (:var l1)) (:icon 1))))
     (:line 500 (:goto 70))
     (:line 510
      (:print (:scon "computer takes 1 chip leaving") :semi (:var p) :semi
       (:scon "... your move") :semi))
     (:line 520 (:goto 220))
     (:line 530 (:print (:scon "there is 1 chip on the board.")))
     (:line 540 (:goto 120))
     (:line 550 (:print (:scon "computer takes 1 chip.")))
     (:line 560 (:goto 340)) (:line 570 (:end)))))



(defvar *golf*
  '(((:line 1 (:print (:apply tab (:icon 34)) :semi (:scon "golf")))
     (:line 2
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 3 (:print) (:print) (:print))
     (:line 4
      (:print (:scon "welcome to the creative computing country club,")))
     (:line 5
      (:print (:scon "an eighteen hole championship layout located a short")))
     (:line 6
      (:print (:scon "distance from scenic downtown morristown.  the")))
     (:line 7
      (:print (:scon "commentator will explain the game as you play.")))
     (:line 8 (:print (:scon "enjoy your game; see you at the 19th hole...")))
     (:line 9 (:print) (:print) (:dim ((:dimd l (:icon 10)))))
     (:line 10 (:let (:var g1) (:icon 18)))
     (:line 20 (:let (:var g2) (:icon 0)))
     (:line 30 (:let (:var g3) (:icon 0)))
     (:line 40 (:let (:var a) (:icon 0)))
     (:line 50 (:let (:var n) (:fcon 0.8)))
     (:line 60 (:let (:var s2) (:icon 0)))
     (:line 70 (:let (:var f) (:icon 1)))
     (:line 80 (:print (:scon "what is your handicap") :semi))
     (:line 90 (:input nil ((:var h))) (:print))
     (:line 100 (:if (:binary :gt (:var h) (:icon 30))) (:goto 470))
     (:line 110 (:if (:binary :lt (:var h) (:icon 0))) (:goto 470))
     (:line 120 (:print (:scon "difficulties at golf include:")))
     (:line 130
      (:print
       (:scon "0=hook, 1=slice, 2=poor distance, 4=trap shots, 5=putting")))
     (:line 140 (:print (:scon "which one (only one) is your worst") :semi))
     (:line 150 (:input nil ((:var t))) (:print))
     (:line 160 (:if (:binary :gt (:var t) (:icon 5))) (:goto 120))
     (:line 170 (:let (:var s1) (:icon 0))) (:line 210 (:rem "
"))
     (:line 230 (:let (:apply l (:icon 0)) (:icon 0)))
     (:line 240 (:let (:var j) (:icon 0)))
     (:line 245 (:let (:var q) (:icon 0)))
     (:line 250 (:let (:var s2) (:binary :plus (:var s2) (:icon 1))))
     (:line 260 (:let (:var k) (:icon 0)))
     (:line 270 (:if (:binary :eq (:var f) (:icon 1))) (:goto 310))
     (:line 290
      (:print (:scon "your score on hole") :semi
       (:binary :minus (:var f) (:icon 1)) :semi (:scon "was") :semi
       (:var s1)))
     (:line 291 (:goto 1750))
     (:line 292
      (:if (:binary :gt (:var s1) (:binary :plus (:var p) (:icon 2))))
      (:goto 297))
     (:line 293 (:if (:binary :eq (:var s1) (:var p))) (:goto 299))
     (:line 294
      (:if (:binary :eq (:var s1) (:binary :minus (:var p) (:icon 1))))
      (:goto 301))
     (:line 295
      (:if (:binary :eq (:var s1) (:binary :minus (:var p) (:icon 2))))
      (:goto 303))
     (:line 296 (:goto 310))
     (:line 297 (:print (:scon "keep your head down.")))
     (:line 298 (:goto 310)) (:line 299 (:print (:scon "a par.  nice going.")))
     (:line 300 (:goto 310)) (:line 301 (:print (:scon "a birdie.")))
     (:line 302 (:goto 310))
     (:line 303 (:if (:binary :eq (:var p) (:icon 3))) (:goto 306))
     (:line 304 (:print (:scon "a great big eagle."))) (:line 305 (:goto 310))
     (:line 306 (:print (:scon "a hole in one.")))
     (:line 310 (:if (:binary :eq (:var f) (:icon 19))) (:goto 1710))
     (:line 315 (:let (:var s1) (:icon 0))) (:line 316 (:print))
     (:line 320 (:if (:binary :eq (:var s1) (:icon 0))) (:goto 1590))
     (:line 330 (:if (:binary :lt (:apply l (:icon 0)) (:icon 1)))
      (:goto 1150))
     (:line 340 (:let (:var x) (:icon 0)))
     (:line 350 (:if (:binary :gt (:apply l (:icon 0)) (:icon 5)))
      (:goto 1190))
     (:line 360
      (:print (:scon "shot went") :semi (:var d1) :semi
       (:scon "yards.  it's") :semi (:var d2) :semi
       (:scon "yards from the cup.")))
     (:line 362
      (:print (:scon "ball is") :semi (:apply int (:var o)) :semi
       (:scon "yards off line... in ") :semi))
     (:line 380 (:gosub 400)) (:line 390 (:goto 620))
     (:line 400 (:if (:binary :eq (:apply l (:var x)) (:icon 1)))
      (:goto 480))
     (:line 410 (:if (:binary :eq (:apply l (:var x)) (:icon 2)))
      (:goto 500))
     (:line 420 (:if (:binary :eq (:apply l (:var x)) (:icon 3)))
      (:goto 520))
     (:line 430 (:if (:binary :eq (:apply l (:var x)) (:icon 4)))
      (:goto 540))
     (:line 440 (:if (:binary :eq (:apply l (:var x)) (:icon 5)))
      (:goto 560))
     (:line 450 (:if (:binary :eq (:apply l (:var x)) (:icon 6)))
      (:goto 580))
     (:line 460 (:print (:scon "out of bounds."))) (:line 465 (:goto 1690))
     (:line 470 (:print (:scon "pga handicaps range from 0 to 30.")))
     (:line 472 (:goto 80)) (:line 480 (:print (:scon "fairway.")))
     (:line 490 (:goto 1690)) (:line 500 (:print (:scon "rough.")))
     (:line 510 (:goto 1690)) (:line 520 (:print (:scon "trees.")))
     (:line 530 (:goto 1690)) (:line 540 (:print (:scon "adjacent fairway.")))
     (:line 550 (:goto 1690)) (:line 560 (:print (:scon "trap.")))
     (:line 570 (:goto 1690)) (:line 580 (:print (:scon "water.")))
     (:line 590 (:goto 1690))
     (:line 620 (:if (:binary :eq (:var a) (:icon 1))) (:goto 629))
     (:line 621 (:print (:scon "selection of clubs")))
     (:line 622
      (:print (:scon "yardage desired                       suggested clubs")))
     (:line 623
      (:print (:scon "200 to 280 yards                           1 to 4")))
     (:line 624
      (:print (:scon "100 to 200 yards                          19 to 13")))
     (:line 625
      (:print (:scon "  0 to 100 yards                          29 to 23")))
     (:line 626 (:let (:var a) (:icon 1)))
     (:line 629 (:print (:scon "what club do you choose") :semi))
     (:line 630 (:input nil ((:var c)))) (:line 632 (:print))
     (:line 635 (:if (:binary :lt (:var c) (:icon 1))) (:goto 690))
     (:line 637 (:if (:binary :gt (:var c) (:icon 29))) (:goto 690))
     (:line 640 (:if (:binary :gt (:var c) (:icon 4))) (:goto 710))
     (:line 650 (:if (:binary :le (:apply l (:icon 0)) (:icon 5)))
      (:goto 740))
     (:line 660 (:if (:binary :eq (:var c) (:icon 14))) (:goto 740))
     (:line 665 (:if (:binary :eq (:var c) (:icon 23))) (:goto 740))
     (:line 670 (:goto 690))
     (:line 680 (:let (:var s1) (:binary :minus (:var s1) (:icon 1))))
     (:line 690 (:print (:scon "that club is not in the bag.")))
     (:line 693 (:print)) (:line 700 (:goto 620))
     (:line 710 (:if (:binary :lt (:var c) (:icon 12))) (:goto 690))
     (:line 720 (:let (:var c) (:binary :minus (:var c) (:icon 6))))
     (:line 730 (:goto 650))
     (:line 740 (:let (:var s1) (:binary :plus (:var s1) (:icon 1))))
     (:line 741 (:let (:var w) (:icon 1)))
     (:line 742 (:if (:binary :gt (:var c) (:icon 13))) (:goto 960))
     (:line 746
      (:if
       (:binary :eq (:apply int (:binary :div (:var f) (:icon 3)))
        (:binary :div (:var f) (:icon 3))))
      (:goto 952))
     (:line 752 (:if (:binary :lt (:var c) (:icon 4))) (:goto 756))
     (:line 754 (:goto 760))
     (:line 756 (:if (:binary :eq (:apply l (:icon 0)) (:icon 2)))
      (:goto 862))
     (:line 760 (:if (:binary :gt (:var s1) (:icon 7))) (:goto 867))
     (:line 770
      (:let (:var d1)
       (:apply int
        (:binary :plus
         (:binary :minus
          (:binary :plus
           (:binary :mul (:binary :minus (:icon 30) (:var h)) (:fcon 2.5))
           (:icon 187))
          (:binary :div
           (:binary :mul
            (:binary :plus
             (:binary :mul (:binary :minus (:icon 30) (:var h))
              (:fcon 0.25))
             (:icon 15))
            (:var c))
           (:icon 2)))
         (:binary :mul (:icon 25) (:apply rnd (:icon 1)))))))
     (:line 780
      (:let (:var d1)
       (:apply int (:binary :mul (:var d1) (:var w)))))
     (:line 800 (:if (:binary :eq (:var t) (:icon 2))) (:goto 1170))
     (:line 830
      (:let (:var o)
       (:binary :mul
        (:binary :mul (:binary :div (:apply rnd (:icon 1)) (:fcon 0.8))
         (:binary :plus (:binary :mul (:icon 2) (:var h)) (:icon 16)))
        (:apply abs
         (:apply tan (:binary :mul (:var d1) (:fcon 0.0034999999)))))))
     (:line 840
      (:let (:var d2)
       (:apply int
        (:apply sqr
         (:binary :plus (:exp (:var o) (:icon 2))
          (:exp (:apply abs (:binary :minus (:var d) (:var d1)))
           (:icon 2)))))))
     (:line 850
      (:if (:binary :lt (:binary :minus (:var d) (:var d1)) (:icon 0)))
      (:goto 870))
     (:line 860 (:goto 890)) (:line 862 (:print (:scon "you dubbed it.")))
     (:line 864 (:let (:var d1) (:icon 35))) (:line 866 (:goto 830))
     (:line 867 (:if (:binary :lt (:var d) (:icon 200))) (:goto 1300))
     (:line 868 (:goto 770))
     (:line 870 (:if (:binary :lt (:var d2) (:icon 20))) (:goto 890))
     (:line 880 (:print (:scon "too much club. you're past the hole.")))
     (:line 890 (:let (:var b) (:var d)))
     (:line 900 (:let (:var d) (:var d2)))
     (:line 910 (:if (:binary :gt (:var d2) (:icon 27))) (:goto 1020))
     (:line 920 (:if (:binary :gt (:var d2) (:icon 20))) (:goto 1100))
     (:line 930 (:if (:binary :gt (:var d2) (:fcon 0.5))) (:goto 1120))
     (:line 940 (:let (:apply l (:icon 0)) (:icon 9)))
     (:line 950 (:goto 1470))
     (:line 952
      (:if
       (:binary :lt
        (:binary :plus (:binary :plus (:var s2) (:var q))
         (:binary :div
          (:binary :mul (:icon 10) (:binary :minus (:var f) (:icon 1)))
          (:icon 18)))
        (:binary :div
         (:binary :mul (:binary :minus (:var f) (:icon 1))
          (:binary :plus (:icon 72)
           (:binary :div (:binary :plus (:var h) (:icon 1))
            (:fcon 0.84999996))))
         (:icon 18))))
      (:goto 956))
     (:line 954 (:goto 752))
     (:line 956 (:let (:var q) (:binary :plus (:var q) (:icon 1))))
     (:line 957
      (:if
       (:binary :ne (:binary :div (:var s1) (:icon 2))
        (:apply int (:binary :div (:var s1) (:icon 2)))))
      (:goto 1011))
     (:line 958 (:goto 862))
     (:line 960
      (:print (:scon "now gauge your distance by a percentage (1 to 100)")))
     (:line 961 (:print (:scon "of a full swing") :semi))
     (:line 970 (:input nil ((:var w)))
      (:let (:var w) (:binary :div (:var w) (:icon 100))))
     (:line 972 (:print))
     (:line 980 (:if (:binary :gt (:var w) (:icon 1))) (:goto 680))
     (:line 985 (:if (:binary :eq (:apply l (:icon 0)) (:icon 5)))
      (:goto 1280))
     (:line 990 (:if (:binary :eq (:var c) (:icon 14))) (:goto 760))
     (:line 1000 (:let (:var c) (:binary :minus (:var c) (:icon 10))))
     (:line 1010 (:goto 760))
     (:line 1011 (:if (:binary :lt (:var d) (:icon 95))) (:goto 862))
     (:line 1012
      (:print (:scon "ball hit tree - bounced into rough") :semi
       (:binary :minus (:var d) (:icon 75)) :semi
       (:scon "yards from hole.")))
     (:line 1014 (:let (:var d) (:binary :minus (:var d) (:icon 75))))
     (:line 1018 (:goto 620))
     (:line 1020 (:if (:binary :lt (:var o) (:icon 30))) (:goto 1150))
     (:line 1022 (:if (:binary :gt (:var j) (:icon 0))) (:goto 1150))
     (:line 1030 (:if (:binary :gt (:var t) (:icon 0))) (:goto 1070))
     (:line 1035
      (:let (:var s9)
       (:binary :div (:binary :plus (:var s2) (:icon 1)) (:icon 15))))
     (:line 1036
      (:if (:binary :eq (:apply int (:var s9)) (:var s9)))
      (:goto 1075))
     (:line 1040 (:print (:scon "you hooked- ") :semi))
     (:line 1050 (:let (:apply l (:icon 0)) (:apply l (:icon 2))))
     (:line 1055 (:if (:binary :gt (:var o) (:icon 45))) (:goto 1092))
     (:line 1060 (:goto 320))
     (:line 1070
      (:let (:var s9)
       (:binary :div (:binary :plus (:var s2) (:icon 1)) (:icon 15))))
     (:line 1071
      (:if (:binary :eq (:apply int (:var s9)) (:var s9)))
      (:goto 1040))
     (:line 1075 (:print (:scon "you sliced- ") :semi))
     (:line 1080 (:let (:apply l (:icon 0)) (:apply l (:icon 1))))
     (:line 1090 (:goto 1055)) (:line 1092 (:print (:scon "badly.")))
     (:line 1094 (:goto 320))
     (:line 1100 (:let (:apply l (:icon 0)) (:icon 5)))
     (:line 1110 (:goto 320))
     (:line 1120 (:let (:apply l (:icon 0)) (:icon 8)))
     (:line 1130
      (:let (:var d2)
       (:apply int (:binary :mul (:var d2) (:icon 3)))))
     (:line 1140 (:goto 1380))
     (:line 1150 (:let (:apply l (:icon 0)) (:icon 1)))
     (:line 1160 (:goto 320))
     (:line 1170
      (:let (:var d1)
       (:apply int (:binary :mul (:fcon 0.84999996) (:var d1)))))
     (:line 1180 (:goto 830))
     (:line 1190 (:if (:binary :gt (:apply l (:icon 0)) (:icon 6)))
      (:goto 1260))
     (:line 1200 (:print (:scon "your shot went into the water.")))
     (:line 1210 (:let (:var s1) (:binary :plus (:var s1) (:icon 1))))
     (:line 1220
      (:print (:scon "penalty stroke assessed.  hit from previous location.")))
     (:line 1230 (:let (:var j) (:binary :plus (:var j) (:icon 1))))
     (:line 1240 (:let (:apply l (:icon 0)) (:icon 1)))
     (:line 1242 (:let (:var d) (:var b))) (:line 1250 (:goto 620))
     (:line 1260 (:print (:scon "your shot went out of bounds.")))
     (:line 1270 (:goto 1210))
     (:line 1280 (:if (:binary :eq (:var t) (:icon 3))) (:goto 1320))
     (:line 1300
      (:let (:var d2)
       (:binary :plus (:icon 1)
        (:binary :mul (:icon 3)
         (:apply int
          (:binary :mul
           (:binary :div (:icon 80) (:binary :minus (:icon 40) (:var h)))
           (:apply rnd (:icon 1))))))))
     (:line 1310 (:goto 1380))
     (:line 1320 (:if (:binary :gt (:apply rnd (:icon 1)) (:var n)))
      (:goto 1360))
     (:line 1330 (:let (:var n) (:binary :mul (:var n) (:fcon 0.2))))
     (:line 1340 (:print (:scon "shot dubbed, still in trap.")))
     (:line 1350 (:goto 620)) (:line 1360 (:let (:var n) (:fcon 0.8)))
     (:line 1370 (:goto 1300))
     (:line 1380
      (:print (:scon "on green,") :semi (:var d2) :semi
       (:scon "feet from the pin.")))
     (:line 1381 (:print (:scon "choose your putt potency (1 to 13):") :semi))
     (:line 1400 (:input nil ((:var i))))
     (:line 1410 (:let (:var s1) (:binary :plus (:var s1) (:icon 1))))
     (:line 1420
      (:if
       (:binary :gt
        (:binary :minus (:binary :plus (:var s1) (:icon 1)) (:var p))
        (:binary :plus (:binary :mul (:var h) (:fcon 0.072000004))
         (:icon 2))))
      (:goto 1470))
     (:line 1425 (:if (:binary :gt (:var k) (:icon 2))) (:goto 1470))
     (:line 1428 (:let (:var k) (:binary :plus (:var k) (:icon 1))))
     (:line 1430 (:if (:binary :eq (:var t) (:icon 4))) (:goto 1530))
     (:line 1440
      (:let (:var d2)
       (:binary :plus
        (:binary :minus (:var d2)
         (:binary :mul (:var i)
          (:binary :plus (:icon 4)
           (:binary :mul (:icon 2) (:apply rnd (:icon 1))))))
        (:fcon 1.5))))
     (:line 1450 (:if (:binary :lt (:var d2) (:uminus (:icon 2))))
      (:goto 1560))
     (:line 1460 (:if (:binary :gt (:var d2) (:icon 2))) (:goto 1500))
     (:line 1470 (:print (:scon "you holed it."))) (:line 1472 (:print))
     (:line 1480 (:let (:var f) (:binary :plus (:var f) (:icon 1))))
     (:line 1490 (:goto 230)) (:line 1500 (:print (:scon "putt short.")))
     (:line 1505 (:let (:var d2) (:apply int (:var d2))))
     (:line 1510 (:goto 1380))
     (:line 1530
      (:let (:var d2)
       (:binary :plus
        (:binary :minus (:var d2)
         (:binary :mul (:var i)
          (:binary :plus (:icon 4)
           (:binary :mul (:icon 1) (:apply rnd (:icon 1))))))
        (:icon 1))))
     (:line 1550 (:goto 1450)) (:line 1560 (:print (:scon "passed by cup.")))
     (:line 1570 (:let (:var d2) (:uminus (:var d2))))
     (:line 1580 (:goto 1505))
     (:line 1590
      (:read (:var d) (:var p) (:apply l (:icon 1))
       (:apply l (:icon 2))))
     (:line 1595 (:print))
     (:line 1600
      (:print (:scon "you are at the tee off hole") :semi (:var f) :semi
       (:scon "distance") :semi (:var d) :semi (:scon "yards, par") :semi
       (:var p)))
     (:line 1605
      (:let (:var g3) (:binary :plus (:var g3) (:var p))))
     (:line 1620 (:print (:scon "on your right is ") :semi))
     (:line 1630 (:let (:var x) (:icon 1))) (:line 1640 (:gosub 400))
     (:line 1650 (:print (:scon "on your left is ") :semi))
     (:line 1660 (:let (:var x) (:icon 2))) (:line 1670 (:gosub 400))
     (:line 1680 (:goto 620)) (:line 1690 (:return))
     (:line 1700
      (:data (:icon 361) (:icon 4) (:icon 4) (:icon 2) (:icon 389) (:icon 4)
       (:icon 3) (:icon 3) (:icon 206) (:icon 3) (:icon 4) (:icon 2)
       (:icon 500) (:icon 5) (:icon 7) (:icon 2)))
     (:line 1702
      (:data (:icon 408) (:icon 4) (:icon 2) (:icon 4) (:icon 359) (:icon 4)
       (:icon 6) (:icon 4) (:icon 424) (:icon 4) (:icon 4) (:icon 2)
       (:icon 388) (:icon 4) (:icon 4) (:icon 4)))
     (:line 1704
      (:data (:icon 196) (:icon 3) (:icon 7) (:icon 2) (:icon 400) (:icon 4)
       (:icon 7) (:icon 2) (:icon 560) (:icon 5) (:icon 7) (:icon 2)
       (:icon 132) (:icon 3) (:icon 2) (:icon 2)))
     (:line 1706
      (:data (:icon 357) (:icon 4) (:icon 4) (:icon 4) (:icon 294) (:icon 4)
       (:icon 2) (:icon 4) (:icon 475) (:icon 5) (:icon 2) (:icon 3)
       (:icon 375) (:icon 4) (:icon 4) (:icon 2)))
     (:line 1708
      (:data (:icon 180) (:icon 3) (:icon 6) (:icon 2) (:icon 550) (:icon 5)
       (:icon 6) (:icon 6)))
     (:line 1710 (:print))
     (:line 1750
      (:let (:var g2) (:binary :plus (:var g2) (:var s1))))
     (:line 1760
      (:print (:scon "total par for") :semi
       (:binary :minus (:var f) (:icon 1)) :semi (:scon "holes is") :semi
       (:var g3) :semi (:scon "  your total is") :semi (:var g2)))
     (:line 1761
      (:if (:binary :eq (:var g1) (:binary :minus (:var f) (:icon 1))))
      (:goto 1770))
     (:line 1765 (:goto 292)) (:line 1770 (:end)))))



(defvar *gomoko*
  '(((:line 2 (:print (:apply tab (:icon 33)) :semi (:scon "gomoko")))
     (:line 4
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 6 (:print) (:print) (:print))
     (:line 8 (:dim ((:dimd2 a (:icon 19) (:icon 19)))))
     (:line 10 (:print (:scon "welcome to the oriental game of gomoko.")))
     (:line 20 (:print)
      (:print (:scon "the game is played on an n by n grid of a size")))
     (:line 30
      (:print
       (:scon "that you specify.  during your play, you may cover one grid")))
     (:line 40
      (:print
       (:scon "intersection with a marker. the object of the game is to get")))
     (:line 50
      (:print
       (:scon "5 adjacent markers in a row -- horizontally, vertically, or")))
     (:line 60
      (:print
       (:scon "diagonally.  on the board diagram, your moves are marked")))
     (:line 70
      (:print (:scon "with a '1' and the computer moves with a '2'.")))
     (:line 80 (:print)
      (:print (:scon "the computer does not keep track of who has won.")))
     (:line 90 (:print (:scon "to end the game, type -1,-1 for your move."))
      (:print))
     (:line 110
      (:print (:scon "what is your board size (min 7/ max 19)") :semi)
      (:input nil ((:var n))))
     (:line 115 (:if (:binary :gt (:var n) (:icon 6))) (:goto 117))
     (:line 116 (:goto 120))
     (:line 117 (:if (:binary :lt (:var n) (:icon 20))) (:goto 210))
     (:line 120 (:print (:scon "i said, the minimum is 7, the maximum is 19."))
      (:goto 110))
     (:line 210 (:for i (:icon 1) (:var n) nil)
      (:for j (:icon 1) (:var n) nil)
      (:let (:apply a (:var i) (:var j)) (:icon 0)) (:next j)
      (:next i))
     (:line 300 (:print)
      (:print (:scon "we alternate moves.  you go first...")) (:print))
     (:line 310 (:print (:scon "your play (i,j)") :semi)
      (:input nil ((:var i) (:var j))))
     (:line 315 (:print))
     (:line 320 (:if (:binary :eq (:var i) (:uminus (:icon 1))))
      (:goto 980))
     (:line 330 (:let (:var x) (:var i))
      (:let (:var y) (:var j)) (:gosub 910)
      (:if (:binary :eq (:var l) (:icon 1))) (:goto 410))
     (:line 340 (:print (:scon "illegal move.  try again...")) (:goto 310))
     (:line 410
      (:if (:binary :eq (:apply a (:var i) (:var j)) (:icon 0)))
      (:goto 440))
     (:line 420 (:print (:scon "square occupied.  try again...")) (:goto 310))
     (:line 440 (:let (:apply a (:var i) (:var j)) (:icon 1)))
     (:line 500 (:rem " *** computer tries an intelligent move ***
"))
     (:line 510 (:for e (:uminus (:icon 1)) (:icon 1) nil)
      (:for f (:uminus (:icon 1)) (:icon 1) nil)
      (:if
       (:binary :eq
        (:binary :minus (:binary :plus (:var e) (:var f))
         (:binary :mul (:var e) (:var f)))
        (:icon 0)))
      (:goto 590))
     (:line 540 (:let (:var x) (:binary :plus (:var i) (:var f)))
      (:let (:var y) (:binary :plus (:var j) (:var f)))
      (:gosub 910))
     (:line 570 (:if (:binary :eq (:var l) (:icon 0))) (:goto 590))
     (:line 580
      (:if (:binary :eq (:apply a (:var x) (:var y)) (:icon 1)))
      (:goto 710))
     (:line 590 (:next f) (:next e))
     (:line 600 (:rem " *** computer tries a random move ***
"))
     (:line 610
      (:let (:var x)
       (:apply int
        (:binary :plus (:binary :mul (:var n) (:apply rnd (:icon 1)))
         (:icon 1))))
      (:let (:var y)
       (:apply int
        (:binary :plus (:binary :mul (:var n) (:apply rnd (:icon 1)))
         (:icon 1))))
      (:gosub 910) (:if (:binary :eq (:var l) (:icon 0))) (:goto 610))
     (:line 650
      (:if (:binary :ne (:apply a (:var x) (:var y)) (:icon 0)))
      (:goto 610))
     (:line 660 (:let (:apply a (:var x) (:var y)) (:icon 2))
      (:gosub 810) (:goto 310))
     (:line 710 (:let (:var x) (:binary :minus (:var i) (:var e)))
      (:let (:var y) (:binary :minus (:var j) (:var f)))
      (:gosub 910))
     (:line 750 (:if (:binary :eq (:var l) (:icon 0))) (:goto 610))
     (:line 760 (:goto 650)) (:line 800 (:rem " *** print the board ***
"))
     (:line 810 (:for i (:icon 1) (:var n) nil)
      (:for j (:icon 1) (:var n) nil)
      (:print (:apply a (:var i) (:var j)) :semi))
     (:line 840 (:next j) (:print) (:next i) (:print) (:return))
     (:line 910 (:let (:var l) (:icon 1))
      (:if (:binary :lt (:var x) (:icon 1))) (:goto 970))
     (:line 920 (:if (:binary :gt (:var x) (:var n))) (:goto 970))
     (:line 930 (:if (:binary :lt (:var y) (:icon 1))) (:goto 970))
     (:line 940 (:if (:binary :gt (:var y) (:var n))) (:goto 970))
     (:line 950 (:return)) (:line 970 (:let (:var l) (:icon 0)) (:return))
     (:line 980 (:print) (:print (:scon "thanks for the game!!")))
     (:line 985 (:print (:scon "play again (1 for yes, 0 for no)") :semi)
      (:input nil ((:var q))))
     (:line 990 (:if (:binary :eq (:var q) (:icon 1))) (:goto 110))
     (:line 999 (:end)))))



(defvar *guess*
  '(((:line 1 (:print (:apply tab (:icon 33)) :semi (:scon "guess")))
     (:line 2
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 3 (:print) (:print) (:print))
     (:line 4 (:print (:scon "this is a number guessing game. i'll think")))
     (:line 5 (:print (:scon "of a number between 1 and any limit you want.")))
     (:line 6 (:print (:scon "then you have to guess what it is.")))
     (:line 7 (:print))
     (:line 8 (:print (:scon "what limit do you want") :semi))
     (:line 9 (:input nil ((:var l)))) (:line 10 (:print))
     (:line 11
      (:let (:var l1)
       (:binary :plus
        (:apply int
         (:binary :div (:apply log (:var l))
          (:apply log (:icon 2))))
        (:icon 1))))
     (:line 12
      (:print (:scon "i'm thinking of a number between 1 and") :semi
       (:var l)))
     (:line 13 (:let (:var g) (:icon 1)))
     (:line 14 (:print (:scon "now you try to guess what it is.")))
     (:line 15
      (:let (:var m)
       (:apply int
        (:binary :plus (:binary :mul (:var l) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 20 (:input nil ((:var n))))
     (:line 21 (:if (:binary :gt (:var n) (:icon 0))) (:goto 25))
     (:line 22 (:gosub 70)) (:line 23 (:goto 1))
     (:line 25 (:if (:binary :eq (:var n) (:var m))) (:goto 50))
     (:line 30 (:let (:var g) (:binary :plus (:var g) (:icon 1))))
     (:line 31 (:if (:binary :gt (:var n) (:var m))) (:goto 40))
     (:line 32 (:print (:scon "too low. try a bigger answer.")))
     (:line 33 (:goto 20))
     (:line 40 (:print (:scon "too high. try a smaller answer.")))
     (:line 42 (:goto 20))
     (:line 50
      (:print (:scon "that's it! you got it in") :semi (:var g) :semi
       (:scon "tries.")))
     (:line 52 (:if (:binary :lt (:var g) (:var l1))) (:goto 58))
     (:line 54 (:if (:binary :eq (:var g) (:var l1))) (:goto 60))
     (:line 56
      (:print (:scon "you should have been able to get it in only") :semi
       (:var l1)))
     (:line 57 (:goto 65)) (:line 58 (:print (:scon "very ") :semi))
     (:line 60 (:print (:scon "good."))) (:line 65 (:gosub 70))
     (:line 66 (:goto 12)) (:line 70 (:for h (:icon 1) (:icon 5) nil))
     (:line 71 (:print)) (:line 72 (:next h)) (:line 73 (:return))
     (:line 99 (:end)))))



(defvar *gunner*
  '(((:line 10 (:print (:apply tab (:icon 30)) :semi (:scon "gunner")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print))
     (:line 130
      (:print (:scon "you are the officer-in-charge, giving orders to a gun")))
     (:line 140
      (:print
       (:scon "crew, telling them the degrees of elevation you estimate")))
     (:line 150
      (:print
       (:scon "will place a projectile on target.  a hit within 100 yards")))
     (:line 160 (:print (:scon "of the target will destroy it.")) (:print))
     (:line 170
      (:let (:var r)
       (:apply int
        (:binary :plus (:binary :mul (:icon 40000) (:apply rnd (:icon 1)))
         (:icon 20000)))))
     (:line 180
      (:print (:scon "maximum range of your gun is") :semi (:var r) :semi
       (:scon " yards.")))
     (:line 185 (:let (:var z) (:icon 0))) (:line 190 (:print))
     (:line 195 (:let (:var s1) (:icon 0)))
     (:line 200
      (:let (:var t)
       (:apply int
        (:binary :mul (:var r)
         (:binary :plus (:fcon 0.1)
          (:binary :mul (:fcon 0.8) (:apply rnd (:icon 1))))))))
     (:line 210 (:let (:var s) (:icon 0))) (:line 220 (:goto 370))
     (:line 230 (:print (:scon "minimum elevation is one degree.")))
     (:line 240 (:goto 390))
     (:line 250 (:print (:scon "maximum elevation is 89 degrees.")))
     (:line 260 (:goto 390))
     (:line 270
      (:print (:scon "over target by ") :semi (:apply abs (:var e))
       :semi (:scon "yards.")))
     (:line 280 (:goto 390))
     (:line 290
      (:print (:scon "short of target by ") (:apply abs (:var e)) :semi
       (:scon "yards.")))
     (:line 300 (:goto 390))
     (:line 320
      (:print (:scon "*** target destroyed ***  ") :semi (:var s) :semi
       (:scon "rounds of ammunition expended.")))
     (:line 325
      (:let (:var s1) (:binary :plus (:var s1) (:var s))))
     (:line 330 (:if (:binary :eq (:var z) (:icon 4))) (:goto 490))
     (:line 340 (:let (:var z) (:binary :plus (:var z) (:icon 1))))
     (:line 345 (:print))
     (:line 350
      (:print
       (:scon "the forward observer has sighted more enemy activity...")))
     (:line 360 (:goto 200))
     (:line 370
      (:print (:scon "distance to the target is ") (:var t) :semi
       (:scon " yards.")))
     (:line 380 (:print)) (:line 390 (:print))
     (:line 400 (:input "elevation" ((:var b))))
     (:line 420 (:if (:binary :gt (:var b) (:icon 89))) (:goto 250))
     (:line 430 (:if (:binary :lt (:var b) (:icon 1))) (:goto 230))
     (:line 440 (:let (:var s) (:binary :plus (:var s) (:icon 1))))
     (:line 442 (:if (:binary :lt (:var s) (:icon 6))) (:goto 450))
     (:line 444 (:print)
      (:print (:scon "boom !!!!   you have just been destroyed ") :semi))
     (:line 446 (:print (:scon "by the enemy.")) (:print) (:print) (:print)
      (:goto 495))
     (:line 450
      (:let (:var b2)
       (:binary :div (:binary :mul (:icon 2) (:var b)) (:fcon 57.3)))
      (:let (:var i)
       (:binary :mul (:var r) (:apply sin (:var b2))))
      (:let (:var x) (:binary :minus (:var t) (:var i)))
      (:let (:var e) (:apply int (:var x))))
     (:line 460 (:if (:binary :lt (:apply abs (:var e)) (:icon 100)))
      (:goto 320))
     (:line 470 (:if (:binary :gt (:var e) (:icon 100))) (:goto 290))
     (:line 480 (:goto 270))
     (:line 490 (:print) (:print)
      (:print (:scon "total rounds expended were:") :semi (:var s1)))
     (:line 492 (:if (:binary :gt (:var s1) (:icon 18))) (:goto 495))
     (:line 493 (:print (:scon "nice shooting !!")) (:goto 500))
     (:line 495
      (:print (:scon "better go back to fort sill for refresher training!")))
     (:line 500 (:print) (:input "try again (y or n)" ((:var z$))))
     (:line 510 (:if (:binary :eq (:var z$) (:scon "y"))) (:goto 170))
     (:line 520 (:print) (:print (:scon "ok.  return to base camp.")))
     (:line 999 (:end)))))



(defvar *hammurabi*
  '(((:line 10 (:print (:apply tab (:icon 32)) :semi (:scon "hamurabi")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print))
     (:line 80 (:print (:scon "try your hand at governing ancient sumeria")))
     (:line 90 (:print (:scon "for a ten-year term of office.")) (:print))
     (:line 95 (:let (:var d1) (:icon 0)) (:let (:var p1) (:icon 0)))
     (:line 100 (:let (:var z) (:icon 0)) (:let (:var p) (:icon 95))
      (:let (:var s) (:icon 2800)) (:let (:var h) (:icon 3000))
      (:let (:var e) (:binary :minus (:var h) (:var s))))
     (:line 110 (:let (:var y) (:icon 3))
      (:let (:var a) (:binary :div (:var h) (:var y)))
      (:let (:var i) (:icon 5)) (:let (:var q) (:icon 1)))
     (:line 210 (:let (:var d) (:icon 0)))
     (:line 215 (:print) (:print)
      (:print (:scon "hamurabi:  i beg to report to you,"))
      (:let (:var z) (:binary :plus (:var z) (:icon 1))))
     (:line 217
      (:print (:scon "in year") :semi (:var z) :semi (:scon ",") :semi
       (:var d) :semi (:scon "people starved,") :semi (:var i) :semi
       (:scon "came to the city,")))
     (:line 218 (:let (:var p) (:binary :plus (:var p) (:var i))))
     (:line 227 (:if (:binary :gt (:var q) (:icon 0))) (:goto 230))
     (:line 228
      (:let (:var p)
       (:apply int (:binary :div (:var p) (:icon 2)))))
     (:line 229
      (:print (:scon "a horrible plague struck!  half the people died.")))
     (:line 230 (:print (:scon "population is now") :semi (:var p)))
     (:line 232
      (:print (:scon "the city now owns ") :semi (:var a) :semi
       (:scon "acres.")))
     (:line 235
      (:print (:scon "you harvested") :semi (:var y) :semi
       (:scon "bushels per acre.")))
     (:line 250
      (:print (:scon "the rats ate") :semi (:var e) :semi
       (:scon "bushels.")))
     (:line 260
      (:print (:scon "you now have ") :semi (:var s) :semi
       (:scon "bushels in store."))
      (:print))
     (:line 270 (:if (:binary :eq (:var z) (:icon 11))) (:goto 860))
     (:line 310
      (:let (:var c)
       (:apply int (:binary :mul (:icon 10) (:apply rnd (:icon 1)))))
      (:let (:var y) (:binary :plus (:var c) (:icon 17))))
     (:line 312
      (:print (:scon "land is trading at") :semi (:var y) :semi
       (:scon "bushels per acre.")))
     (:line 320 (:print (:scon "how many acres do you wish to buy") :semi))
     (:line 321 (:input nil ((:var q)))
      (:if (:binary :lt (:var q) (:icon 0))) (:goto 850))
     (:line 322
      (:if (:binary :le (:binary :mul (:var y) (:var q)) (:var s)))
      (:goto 330))
     (:line 323 (:gosub 710)) (:line 324 (:goto 320))
     (:line 330 (:if (:binary :eq (:var q) (:icon 0))) (:goto 340))
     (:line 331 (:let (:var a) (:binary :plus (:var a) (:var q)))
      (:let (:var s)
       (:binary :minus (:var s) (:binary :mul (:var y) (:var q))))
      (:let (:var c) (:icon 0)))
     (:line 334 (:goto 400))
     (:line 340 (:print (:scon "how many acres do you wish to sell") :semi))
     (:line 341 (:input nil ((:var q)))
      (:if (:binary :lt (:var q) (:icon 0))) (:goto 850))
     (:line 342 (:if (:binary :lt (:var q) (:var a))) (:goto 350))
     (:line 343 (:gosub 720)) (:line 344 (:goto 340))
     (:line 350 (:let (:var a) (:binary :minus (:var a) (:var q)))
      (:let (:var s)
       (:binary :plus (:var s) (:binary :mul (:var y) (:var q))))
      (:let (:var c) (:icon 0)))
     (:line 400 (:print))
     (:line 410
      (:print (:scon "how many bushels do you wish to feed your people")
       :semi))
     (:line 411 (:input nil ((:var q))))
     (:line 412 (:if (:binary :lt (:var q) (:icon 0))) (:goto 850))
     (:line 418 (:rem " *** trying to use more grain than is in silos?
"))
     (:line 420 (:if (:binary :le (:var q) (:var s))) (:goto 430))
     (:line 421 (:gosub 710)) (:line 422 (:goto 410))
     (:line 430 (:let (:var s) (:binary :minus (:var s) (:var q)))
      (:let (:var c) (:icon 1)) (:print))
     (:line 440
      (:print (:scon "how many acres do you wish to plant with seed") :semi))
     (:line 441 (:input nil ((:var d)))
      (:if (:binary :eq (:var d) (:icon 0))) (:goto 511))
     (:line 442 (:if (:binary :lt (:var d) (:icon 0))) (:goto 850))
     (:line 444 (:rem " *** trying to plant more acres than you own?
"))
     (:line 445 (:if (:binary :le (:var d) (:var a))) (:goto 450))
     (:line 446 (:gosub 720)) (:line 447 (:goto 440))
     (:line 449 (:rem " *** enough grain for seed?
"))
     (:line 450
      (:if
       (:binary :le (:apply int (:binary :div (:var d) (:icon 2)))
        (:var s)))
      (:goto 455))
     (:line 452 (:gosub 710)) (:line 453 (:goto 440))
     (:line 454 (:rem " *** enough people to tend the crops?
"))
     (:line 455
      (:if (:binary :lt (:var d) (:binary :mul (:icon 10) (:var p))))
      (:goto 510))
     (:line 460
      (:print (:scon "but you have only") :semi (:var p) :semi
       (:scon "people to tend the fields!  now then,")))
     (:line 470 (:goto 440))
     (:line 510
      (:let (:var s)
       (:binary :minus (:var s)
        (:apply int (:binary :div (:var d) (:icon 2))))))
     (:line 511 (:gosub 800)) (:line 512 (:rem " *** a bountiful harvest!
"))
     (:line 515 (:let (:var y) (:var c))
      (:let (:var h) (:binary :mul (:var d) (:var y)))
      (:let (:var e) (:icon 0)))
     (:line 521 (:gosub 800))
     (:line 522
      (:if
       (:binary :ne (:apply int (:binary :div (:var c) (:icon 2)))
        (:binary :div (:var c) (:icon 2))))
      (:goto 530))
     (:line 523 (:rem " *** rats are running wild!!
"))
     (:line 525
      (:let (:var e)
       (:apply int (:binary :div (:var s) (:var c)))))
     (:line 530
      (:let (:var s)
       (:binary :plus (:binary :minus (:var s) (:var e))
        (:var h))))
     (:line 531 (:gosub 800)) (:line 532 (:rem " *** let's have some babies
"))
     (:line 533
      (:let (:var i)
       (:apply int
        (:binary :plus
         (:binary :div
          (:binary :div
           (:binary :mul (:var c)
            (:binary :plus (:binary :mul (:icon 20) (:var a))
             (:var s)))
           (:var p))
          (:icon 100))
         (:icon 1)))))
     (:line 539 (:rem " *** how many people had full tummies?
"))
     (:line 540
      (:let (:var c)
       (:apply int (:binary :div (:var q) (:icon 20)))))
     (:line 541 (:rem " *** horros, a 15% chance of plague
"))
     (:line 542
      (:let (:var q)
       (:apply int
        (:binary :mul (:icon 10)
         (:binary :minus (:binary :mul (:icon 2) (:apply rnd (:icon 1)))
          (:fcon 0.3))))))
     (:line 550 (:if (:binary :lt (:var p) (:var c))) (:goto 210))
     (:line 551 (:rem " *** starve enough for impeachment?
"))
     (:line 552 (:let (:var d) (:binary :minus (:var p) (:var c)))
      (:if (:binary :gt (:var d) (:binary :mul (:fcon 0.45) (:var p))))
      (:goto 560))
     (:line 553
      (:let (:var p1)
       (:binary :div
        (:binary :plus
         (:binary :mul (:binary :minus (:var z) (:icon 1)) (:var p1))
         (:binary :div (:binary :mul (:var d) (:icon 100)) (:var p)))
        (:var z))))
     (:line 555 (:let (:var p) (:var c))
      (:let (:var d1) (:binary :plus (:var d1) (:var d)))
      (:goto 215))
     (:line 560 (:print)
      (:print (:scon "you starved") :semi (:var d) :semi
       (:scon "people in one year!!!")))
     (:line 565
      (:print (:scon "due to this extreme mismanagement you have not only")))
     (:line 566
      (:print (:scon "been impeached and thrown out of office but you have")))
     (:line 567 (:print (:scon "also been declared national fink!!!!"))
      (:goto 990))
     (:line 710 (:print (:scon "hamurabi:  think again.  you have only")))
     (:line 711
      (:print (:var s) :semi (:scon "bushels of grain.  now then,")))
     (:line 712 (:return))
     (:line 720
      (:print (:scon "hamurabi:  think again.  you own only") :semi
       (:var a) :semi (:scon "acres.  now then,")))
     (:line 730 (:return))
     (:line 800
      (:let (:var c)
       (:binary :plus
        (:apply int (:binary :mul (:apply rnd (:icon 1)) (:icon 5)))
        (:icon 1))))
     (:line 801 (:return))
     (:line 850 (:print)
      (:print (:scon "hamurabi:  i cannot do what you wish.")))
     (:line 855 (:print (:scon "get yourself another steward!!!!!")))
     (:line 857 (:goto 990))
     (:line 860
      (:print (:scon "in your 10-year term of office,") :semi (:var p1)
       :semi (:scon "percent of the")))
     (:line 862
      (:print
       (:scon "population starved per year on the average, i.e. a total of")))
     (:line 865 (:print (:var d1) :semi (:scon "people died!!"))
      (:let (:var l) (:binary :div (:var a) (:var p))))
     (:line 870
      (:print (:scon "you started with 10 acres per person and ended with")))
     (:line 875 (:print (:var l) :semi (:scon "acres per person."))
      (:print))
     (:line 880 (:if (:binary :gt (:var p1) (:icon 33))) (:goto 565))
     (:line 885 (:if (:binary :lt (:var l) (:icon 7))) (:goto 565))
     (:line 890 (:if (:binary :gt (:var p1) (:icon 10))) (:goto 940))
     (:line 892 (:if (:binary :lt (:var l) (:icon 9))) (:goto 940))
     (:line 895 (:if (:binary :gt (:var p1) (:icon 3))) (:goto 960))
     (:line 896 (:if (:binary :lt (:var l) (:icon 10))) (:goto 960))
     (:line 900
      (:print
       (:scon "a fantastic performance!!!  charlemange, disraeli, and")))
     (:line 905
      (:print (:scon "jefferson combined could not have done better!"))
      (:goto 990))
     (:line 940
      (:print
       (:scon "your heavy-handed performance smacks of nero and ivan iv.")))
     (:line 945
      (:print
       (:scon "the people (remianing) find you an unpleasant ruler, and,")))
     (:line 950 (:print (:scon "frankly, hate your guts!!")) (:goto 990))
     (:line 960
      (:print (:scon "your performance could have been somewhat better, but")))
     (:line 965
      (:print (:scon "really wasn't too bad at all. ") :semi
       (:apply int
        (:binary :mul (:binary :mul (:var p) (:fcon 0.8))
         (:apply rnd (:icon 1))))
       :semi (:scon "people")))
     (:line 970
      (:print
       (:scon
        "would dearly like to see you assassinated but we all have our")))
     (:line 975 (:print (:scon "trivial problems.")))
     (:line 990 (:print) (:for n (:icon 1) (:icon 10) nil)
      (:print (:apply chr$ (:icon 7)) :semi) (:next n))
     (:line 995 (:print (:scon "so long for now.")) (:print))
     (:line 999 (:end)))))



(defvar *hangman*
  '(((:line 10 (:print (:apply tab (:icon 32)) :semi (:scon "hangman")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 25 (:print) (:print) (:print))
     (:line 30
      (:dim
       ((:dimd2 p$ (:icon 12) (:icon 12)) (:dimd l$ (:icon 20))
        (:dimd d$ (:icon 20)) (:dimd n$ (:icon 26))
        (:dimd u (:icon 50)))))
     (:line 40 (:let (:var c) (:icon 1)) (:let (:var n) (:icon 50)))
     (:line 50 (:for i (:icon 1) (:icon 20) nil)
      (:let (:apply d$ (:var i)) (:scon "-")) (:next i)
      (:let (:var m) (:icon 0)))
     (:line 60 (:for i (:icon 1) (:icon 26) nil)
      (:let (:apply n$ (:var i)) (:scon "")) (:next i))
     (:line 70 (:for i (:icon 1) (:icon 12) nil)
      (:for j (:icon 1) (:icon 12) nil)
      (:let (:apply p$ (:var i) (:var j)) (:scon " "))
      (:next j) (:next i))
     (:line 80 (:for i (:icon 1) (:icon 12) nil)
      (:let (:apply p$ (:var i) (:icon 1)) (:scon "x")) (:next i))
     (:line 90 (:for i (:icon 1) (:icon 7) nil)
      (:let (:apply p$ (:icon 1) (:var i)) (:scon "x")) (:next)
      (:let (:apply p$ (:icon 2) (:icon 7)) (:scon "x")))
     (:line 95 (:if (:binary :lt (:var c) (:var n))) (:goto 100))
     (:line 97 (:print (:scon "you did all the words!!")) (:stop))
     (:line 100
      (:let (:var q)
       (:binary :plus
        (:apply int (:binary :mul (:var n) (:apply rnd (:icon 1))))
        (:icon 1))))
     (:line 110 (:if (:binary :eq (:apply u (:var q)) (:icon 1)))
      (:goto 100))
     (:line 115 (:let (:apply u (:var q)) (:icon 1))
      (:let (:var c) (:binary :plus (:var c) (:icon 1))) :restore
      (:let (:var t1) (:icon 0)))
     (:line 150 (:for i (:icon 1) (:var q) nil) (:read (:var a$))
      (:next i))
     (:line 160 (:let (:var l) (:apply len (:var a$)))
      (:for i (:icon 1) (:apply len (:var a$)) nil)
      (:let (:apply l$ (:var i))
       (:apply mid$ (:var a$) (:var i) (:icon 1)))
      (:next i))
     (:line 170 (:print (:scon "here are the letters you used:")))
     (:line 180 (:for i (:icon 1) (:icon 26) nil)
      (:print (:apply n$ (:var i)) :semi)
      (:if
       (:binary :eq (:apply n$ (:binary :plus (:var i) (:icon 1)))
        (:scon "")))
      (:goto 200))
     (:line 190 (:print (:scon ",") :semi) (:next i))
     (:line 200 (:print) (:print) (:for i (:icon 1) (:var l) nil)
      (:print (:apply d$ (:var i)) :semi) (:next i) (:print)
      (:print))
     (:line 210 (:input "what is your guess" ((:var g$)))
      (:let (:var r) (:icon 0)))
     (:line 220 (:for i (:icon 1) (:icon 26) nil)
      (:if (:binary :eq (:apply n$ (:var i)) (:scon ""))) (:goto 250))
     (:line 230 (:if (:binary :eq (:var g$) (:apply n$ (:var i))))
      (:print (:scon "you guessed that letter before!")) (:goto 170))
     (:line 240 (:next i) (:print (:scon "program error.  run again."))
      (:stop))
     (:line 250 (:let (:apply n$ (:var i)) (:var g$))
      (:let (:var t1) (:binary :plus (:var t1) (:icon 1))))
     (:line 260 (:for i (:icon 1) (:var l) nil)
      (:if (:binary :eq (:apply l$ (:var i)) (:var g$)))
      (:goto 280))
     (:line 270 (:next i) (:if (:binary :eq (:var r) (:icon 0)))
      (:goto 290))
     (:line 275 (:goto 300))
     (:line 280 (:let (:apply d$ (:var i)) (:var g$))
      (:let (:var r) (:binary :plus (:var r) (:icon 1))) (:goto 270))
     (:line 290 (:let (:var m) (:binary :plus (:var m) (:icon 1)))
      (:goto 400))
     (:line 300 (:for i (:icon 1) (:var l) nil)
      (:if (:binary :eq (:apply d$ (:var i)) (:scon "-"))) (:goto 320))
     (:line 310 (:next i) (:goto 390))
     (:line 320 (:print) (:for i (:icon 1) (:var l) nil)
      (:print (:apply d$ (:var i)) :semi) (:next i) (:print)
      (:print))
     (:line 330 (:input "what is your guess for the word" ((:var b$))))
     (:line 340 (:if (:binary :eq (:var a$) (:var b$))) (:goto 360))
     (:line 350 (:print (:scon "wrong.  try another letter.")) (:print)
      (:goto 170))
     (:line 360
      (:print (:scon "right!!  it took you") :semi (:var t1) :semi
       (:scon "guesses!")))
     (:line 370 (:input "want another word" ((:var w$)))
      (:if (:binary :eq (:var w$) (:scon "yes"))) (:goto 50))
     (:line 380 (:print) (:print (:scon "it's been fun!  bye for now."))
      (:goto 999))
     (:line 390 (:print (:scon "you found the word!")) (:goto 370))
     (:line 400 (:print) (:print)
      (:print (:scon "sorry, that letter isn't in the word.")))
     (:line 410
      (:on-goto (:var m) (415 420 425 430 435 440 445 450 455 460)))
     (:line 415 (:print (:scon "first, we draw a head")) (:goto 470))
     (:line 420 (:print (:scon "now we draw a body.")) (:goto 470))
     (:line 425 (:print (:scon "next we draw an arm.")) (:goto 470))
     (:line 430 (:print (:scon "this time it's the other arm.")) (:goto 470))
     (:line 435 (:print (:scon "now, let's draw the right leg.")) (:goto 470))
     (:line 440 (:print (:scon "this time we draw the left leg.")) (:goto 470))
     (:line 445 (:print (:scon "now we put up a hand.")) (:goto 470))
     (:line 450 (:print (:scon "next the other hand.")) (:goto 470))
     (:line 455 (:print (:scon "now we draw one foot")) (:goto 470))
     (:line 460 (:print (:scon "here's the other foot -- you're hung!!")))
     (:line 470
      (:on-goto (:var m) (480 490 500 510 520 530 540 550 560 570)))
     (:line 480 (:let (:apply p$ (:icon 3) (:icon 6)) (:scon "-"))
      (:let (:apply p$ (:icon 3) (:icon 7)) (:scon "-"))
      (:let (:apply p$ (:icon 3) (:icon 8)) (:scon "-"))
      (:let (:apply p$ (:icon 4) (:icon 5)) (:scon "("))
      (:let (:apply p$ (:icon 4) (:icon 6)) (:scon ".")))
     (:line 481 (:let (:apply p$ (:icon 4) (:icon 8)) (:scon "."))
      (:let (:apply p$ (:icon 4) (:icon 9)) (:scon ")"))
      (:let (:apply p$ (:icon 5) (:icon 6)) (:scon "-"))
      (:let (:apply p$ (:icon 5) (:icon 7)) (:scon "-"))
      (:let (:apply p$ (:icon 5) (:icon 8)) (:scon "-")) (:goto 580))
     (:line 490 (:for i (:icon 6) (:icon 9) nil)
      (:let (:apply p$ (:var i) (:icon 7)) (:scon "x")) (:next i)
      (:goto 580))
     (:line 500 (:for i (:icon 4) (:icon 7) nil)
      (:let
       (:apply p$ (:var i) (:binary :minus (:var i) (:icon 1)))
       (:scon "\\"))
      (:next i) (:goto 580))
     (:line 510 (:let (:apply p$ (:icon 4) (:icon 11)) (:scon "/"))
      (:let (:apply p$ (:icon 5) (:icon 10)) (:scon "/"))
      (:let (:apply p$ (:icon 6) (:icon 9)) (:scon "/"))
      (:let (:apply p$ (:icon 7) (:icon 8)) (:scon "/")) (:goto 580))
     (:line 520 (:let (:apply p$ (:icon 10) (:icon 6)) (:scon "/"))
      (:let (:apply p$ (:icon 11) (:icon 5)) (:scon "/")) (:goto 580))
     (:line 530 (:let (:apply p$ (:icon 10) (:icon 8)) (:scon "\\"))
      (:let (:apply p$ (:icon 11) (:icon 9)) (:scon "\\")) (:goto 580))
     (:line 540 (:let (:apply p$ (:icon 3) (:icon 11)) (:scon "\\"))
      (:goto 580))
     (:line 550 (:let (:apply p$ (:icon 3) (:icon 3)) (:scon "/"))
      (:goto 580))
     (:line 560 (:let (:apply p$ (:icon 12) (:icon 10)) (:scon "\\"))
      (:let (:apply p$ (:icon 12) (:icon 11)) (:scon "-")) (:goto 580))
     (:line 570 (:let (:apply p$ (:icon 12) (:icon 3)) (:scon "-"))
      (:let (:apply p$ (:icon 12) (:icon 4)) (:scon "/")))
     (:line 580 (:for i (:icon 1) (:icon 12) nil)
      (:for j (:icon 1) (:icon 12) nil)
      (:print (:apply p$ (:var i) (:var j)) :semi) (:next j))
     (:line 590 (:print) (:next i) (:print) (:print)
      (:if (:binary :ne (:var m) (:icon 10))) (:goto 170))
     (:line 600
      (:print (:scon "sorry, you lose.  the word was ") :semi (:var a$)))
     (:line 610 (:print (:scon "you missed that one.  do you ") :semi)
      (:goto 370))
     (:line 620 (:input "type yes or no" ((:var y$)))
      (:if
       (:binary :eq (:apply left$ (:var y$) (:icon 1)) (:scon "y")))
      (:goto 50))
     (:line 700
      (:data (:scon "gum") (:scon "sin") (:scon "for") (:scon "cry")
       (:scon "lug") (:scon "bye") (:scon "fly")))
     (:line 710
      (:data (:scon "ugly") (:scon "each") (:scon "from") (:scon "work")
       (:scon "talk") (:scon "with") (:scon "self")))
     (:line 720
      (:data (:scon "pizza") (:scon "thing") (:scon "feign") (:scon "fiend")
       (:scon "elbow") (:scon "fault") (:scon "dirty")))
     (:line 730
      (:data (:scon "budget") (:scon "spirit") (:scon "quaint")
       (:scon "maiden") (:scon "escort") (:scon "pickax")))
     (:line 740
      (:data (:scon "example") (:scon "tension") (:scon "quinine")
       (:scon "kidney") (:scon "replica") (:scon "sleeper")))
     (:line 750
      (:data (:scon "triangle") (:scon "kangaroo") (:scon "mahogany")
       (:scon "sergeant") (:scon "sequence")))
     (:line 760
      (:data (:scon "moustache") (:scon "dangerous") (:scon "scientist")
       (:scon "different") (:scon "quiescent")))
     (:line 770
      (:data (:scon "magistrate") (:scon "erroneously") (:scon "loudspeaker")
       (:scon "phytotoxic")))
     (:line 780
      (:data (:scon "matrimonial") (:scon "parasympathomimetic")
       (:scon "thigmotropism")))
     (:line 990 (:print (:scon "bye now"))) (:line 999 (:end)))))



(defvar *hello*
  '(((:line 2 (:print (:apply tab (:icon 33)) :semi (:scon "hello")))
     (:line 4
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 6 (:print) (:print) (:print))
     (:line 10 (:print (:scon "hello.  my name is creative computer.")))
     (:line 20 (:print) (:print) (:input "what's your name" ((:var n$)))
      (:print))
     (:line 30
      (:print (:scon "hi there, ") :semi (:var n$) :semi
       (:scon ", are you enjoying yourself here") :semi))
     (:line 40 (:input nil ((:var b$))) (:print))
     (:line 50 (:if (:binary :eq (:var b$) (:scon "yes"))) (:goto 70))
     (:line 55 (:if (:binary :eq (:var b$) (:scon "no"))) (:goto 80))
     (:line 60
      (:print (:var n$) :semi
       (:scon ", i don't understand your answer of '") :semi (:var b$)
       :semi (:scon "'.")))
     (:line 65
      (:print (:scon "please answer 'yes' or 'no'.  do you like it here")
       :semi)
      (:goto 40))
     (:line 70
      (:print (:scon "i'm glad to hear that, ") :semi (:var n$) :semi
       (:scon "."))
      (:print))
     (:line 75 (:goto 100))
     (:line 80
      (:print (:scon "oh, i'm sorry to hear that, ") :semi (:var n$) :semi
       (:scon ". maybe we can")))
     (:line 85 (:print (:scon "brighten up your visit a bit.")))
     (:line 100 (:print))
     (:line 105
      (:print (:scon "say, ") :semi (:var n$) :semi
       (:scon ", i can solve all kinds of problems except")))
     (:line 110
      (:print (:scon "those dealing with greece.  what kind of problems do")))
     (:line 120
      (:print (:scon "you have (answer sex, health, money, or job)") :semi))
     (:line 125 (:input nil ((:var c$)))) (:line 126 (:print))
     (:line 130 (:if (:binary :eq (:var c$) (:scon "sex"))) (:goto 200))
     (:line 132 (:if (:binary :eq (:var c$) (:scon "health"))) (:goto 180))
     (:line 134 (:if (:binary :eq (:var c$) (:scon "money"))) (:goto 160))
     (:line 136 (:if (:binary :eq (:var c$) (:scon "job"))) (:goto 145))
     (:line 138
      (:print (:scon "oh, ") :semi (:var n$) :semi
       (:scon ", your answer of ") :semi (:var c$) :semi
       (:scon " is greek to me.")))
     (:line 140 (:goto 250))
     (:line 145
      (:print (:scon "i can sympathize with you ") :semi (:var n$) :semi
       (:scon ".  i have to work")))
     (:line 148
      (:print (:scon "very long hours for no pay -- and some of my bosses")))
     (:line 150
      (:print (:scon "really beat on my keyboard.  my advice to you, ") :semi
       (:var n$) :semi (:scon ",")))
     (:line 153
      (:print (:scon "is to open a retail computer store.  it's great fun.")))
     (:line 155 (:goto 250))
     (:line 160
      (:print (:scon "sorry, ") :semi (:var n$) :semi
       (:scon ", i'm broke too.  why don't you sell")))
     (:line 162
      (:print (:scon "encyclopeadias or marry someone rich or stop eating")))
     (:line 164 (:print (:scon "so you won't need so much money?")))
     (:line 170 (:goto 250))
     (:line 180
      (:print (:scon "my advice to you ") :semi (:var n$) :semi
       (:scon " is:")))
     (:line 185 (:print (:scon "     1.  take two asprin")))
     (:line 188
      (:print
       (:scon "     2.  drink plenty of fluids (orange juice, not beer!)")))
     (:line 190 (:print (:scon "     3.  go to bed (alone)")))
     (:line 195 (:goto 250))
     (:line 200
      (:input "is your problem too much or too little" ((:var d$)))
      (:print))
     (:line 210 (:if (:binary :eq (:var d$) (:scon "too much")))
      (:goto 220))
     (:line 212 (:if (:binary :eq (:var d$) (:scon "too little")))
      (:goto 230))
     (:line 215
      (:print (:scon "don't get all shook, ") :semi (:var n$) :semi
       (:scon ", just answer the question")))
     (:line 217
      (:input "with 'too much' or 'too little'.  which is it" ((:var d$)))
      (:goto 210))
     (:line 220
      (:print
       (:scon "you call that a problem?!!  i should have such problems!")))
     (:line 225
      (:print (:scon "if it bothers you, ") :semi (:var n$) :semi
       (:scon ", take a cold shower.")))
     (:line 228 (:goto 250))
     (:line 230
      (:print (:scon "why are you here in suffern, ") :semi (:var n$) :semi
       (:scon "?  you should be")))
     (:line 235
      (:print
       (:scon "in tokyo or new york or amsterdam or someplace with some")))
     (:line 240 (:print (:scon "real action."))) (:line 250 (:print))
     (:line 255
      (:print (:scon "any more problems you want solved, ") :semi (:var n$)
       :semi))
     (:line 260 (:input nil ((:var e$))) (:print))
     (:line 270 (:if (:binary :eq (:var e$) (:scon "yes"))) (:goto 280))
     (:line 273 (:if (:binary :eq (:var e$) (:scon "no"))) (:goto 300))
     (:line 275
      (:print (:scon "just a simple 'yes' or 'no' please, ") :semi
       (:var n$) :semi (:scon ".")))
     (:line 277 (:goto 255))
     (:line 280 (:print (:scon "what kind (sex, money, health, job)") :semi))
     (:line 282 (:goto 125)) (:line 300 (:print))
     (:line 302
      (:print (:scon "that will be $5.00 for the advice, ") :semi (:var n$)
       :semi (:scon ".")))
     (:line 305 (:print (:scon "please leave the money on the terminal.")))
     (:line 307 (:for i (:icon 1) (:icon 2000) nil) (:next i))
     (:line 310 (:print) (:print) (:print))
     (:line 315 (:print (:scon "did you leave the money") :semi))
     (:line 320 (:input nil ((:var g$))) (:print))
     (:line 325 (:if (:binary :eq (:var g$) (:scon "yes"))) (:goto 350))
     (:line 330 (:if (:binary :eq (:var g$) (:scon "no"))) (:goto 370))
     (:line 335
      (:print (:scon "your answer of '") :semi (:var g$) :semi
       (:scon "' confuses me, ") :semi (:var n$) :semi (:scon ".")))
     (:line 340 (:print (:scon "please respond with 'yes' or 'no'."))
      (:goto 315))
     (:line 350
      (:print (:scon "hey, ") :semi (:var n$) :semi
       (:scon "??? you left no money at all!")))
     (:line 355
      (:print (:scon "you are cheating me out of my hard-earned living.")))
     (:line 360 (:print)
      (:print (:scon "what a rip off, ") :semi (:var n$) :semi
       (:scon "!!!"))
      (:print))
     (:line 365 (:goto 385))
     (:line 370
      (:print (:scon "that's honest, ") :semi (:var n$) :semi
       (:scon ", but how do you expect")))
     (:line 375
      (:print (:scon "me to go on with my psychology studies if my patients")))
     (:line 380 (:print (:scon "don't pay their bills?")))
     (:line 385 (:print)
      (:print (:scon "take a walk, ") :semi (:var n$) :semi (:scon "."))
      (:print) (:print) (:goto 999))
     (:line 390
      (:print (:scon "nice meeting you, ") :semi (:var n$) :semi
       (:scon ", have a nice day.")))
     (:line 400 (:rem "
")) (:line 999 (:end)))))



(defvar *hexapawn*
  '(((:line 1 (:print (:apply tab (:icon 32)) :semi (:scon "hexapawn")))
     (:line 2
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 3 (:print) (:print) (:print))
     (:line 4
      (:rem "  hexapawn:  interpretation of hexapawn game as presented in
"))
     (:line 5
      (:rem
       "  martin gardner's \"the unexpected hanging and other mathematic-
"))
     (:line 6
      (:rem
       "  al diversions\", chapter eight:  a matchbox game-learning machine
"))
     (:line 7
      (:rem
       "  original version for h-p timeshare system by r.a. kaapke 5/5/76
"))
     (:line 8 (:rem "  instructions by jeff dalton
"))
     (:line 9 (:rem "  conversion to mits basic by steve north
"))
     (:line 10
      (:dim
       ((:dimd2 b (:icon 19) (:icon 9)) (:dimd2 m (:icon 19) (:icon 4))
        (:dimd s (:icon 9)) (:dimd p$ (:icon 3)))))
     (:line 15 (:let (:var w) (:icon 0)) (:let (:var l) (:icon 0)))
     (:line 20
      (:def fnr x
       (:binary :plus
        (:binary :minus
         (:binary :minus
          (:binary :minus
           (:binary :minus
            (:binary :minus
             (:binary :mul (:uminus (:icon 3))
              (:binary :eq (:var x) (:icon 1)))
             (:binary :eq (:var x) (:icon 3)))
            (:binary :mul (:icon 4) (:binary :eq (:var x) (:icon 6))))
           (:binary :mul (:icon 6) (:binary :eq (:var x) (:icon 4))))
          (:binary :mul (:icon 7) (:binary :eq (:var x) (:icon 9))))
         (:binary :mul (:icon 9) (:binary :eq (:var x) (:icon 7))))
        (:apply fns (:var x)))))
     (:line 25
      (:def fns x
       (:binary :mul (:uminus (:var x))
        (:lazy-binary :or
         (:lazy-binary :or (:binary :eq (:var x) (:icon 2))
          (:binary :eq (:var x) (:icon 5)))
         (:binary :eq (:var x) (:icon 8))))))
     (:line 30
      (:def fnm y
       (:binary :minus (:var y)
        (:binary :mul (:apply int (:binary :div (:var y) (:icon 10)))
         (:icon 10)))))
     (:line 35 (:let (:var p$) (:scon "x.o")))
     (:line 40 (:for i (:icon 1) (:icon 19) nil)
      (:for j (:icon 1) (:icon 9) nil)
      (:read (:apply b (:var i) (:var j))) (:next j)
      (:next i))
     (:line 45 (:for i (:icon 1) (:icon 19) nil)
      (:for j (:icon 1) (:icon 4) nil)
      (:read (:apply m (:var i) (:var j))) (:next j)
      (:next i))
     (:line 50 (:print (:scon "instructions (y-n)") :semi))
     (:line 60 (:input nil ((:var a$))))
     (:line 70 (:let (:var a$) (:apply left$ (:var a$) (:icon 1))))
     (:line 80 (:if (:binary :eq (:var a$) (:scon "y"))) (:goto 2000))
     (:line 90 (:if (:binary :ne (:var a$) (:scon "n"))) (:goto 50))
     (:line 100 (:let (:var x) (:icon 0)) (:let (:var y) (:icon 0)))
     (:line 111 (:let (:apply s (:icon 4)) (:icon 0))
      (:let (:apply s (:icon 5)) (:icon 0))
      (:let (:apply s (:icon 6)) (:icon 0)))
     (:line 112 (:let (:apply s (:icon 1)) (:uminus (:icon 1)))
      (:let (:apply s (:icon 2)) (:uminus (:icon 1)))
      (:let (:apply s (:icon 3)) (:uminus (:icon 1))))
     (:line 113 (:let (:apply s (:icon 7)) (:icon 1))
      (:let (:apply s (:icon 8)) (:icon 1))
      (:let (:apply s (:icon 9)) (:icon 1)))
     (:line 115 (:gosub 1000)) (:line 120 (:print (:scon "your move") :semi))
     (:line 121 (:input nil ((:var m1) (:var m2))))
     (:line 122
      (:if
       (:lazy-binary :and
        (:lazy-binary :and
         (:lazy-binary :and
          (:lazy-binary :and
           (:lazy-binary :and
            (:binary :eq (:var m1) (:apply int (:var m1)))
            (:binary :eq (:var m2) (:apply int (:var m2))))
           (:binary :gt (:var m1) (:icon 0)))
          (:binary :lt (:var m1) (:icon 10)))
         (:binary :gt (:var m2) (:icon 0)))
        (:binary :lt (:var m2) (:icon 10))))
      (:goto 130))
     (:line 123 (:print (:scon "illegal co-ordinates.")))
     (:line 124 (:goto 120))
     (:line 130 (:if (:binary :eq (:apply s (:var m1)) (:icon 1)))
      (:goto 150))
     (:line 140 (:print (:scon "illegal move.")) (:goto 120))
     (:line 150 (:if (:binary :eq (:apply s (:var m2)) (:icon 1)))
      (:goto 140))
     (:line 160
      (:if
       (:lazy-binary :and
        (:binary :ne (:binary :minus (:var m2) (:var m1))
         (:uminus (:icon 3)))
        (:binary :ne (:apply s (:var m2)) (:uminus (:icon 1)))))
      (:goto 140))
     (:line 170 (:if (:binary :gt (:var m2) (:var m1))) (:goto 140))
     (:line 180
      (:if
       (:lazy-binary :and
        (:binary :eq (:binary :minus (:var m2) (:var m1))
         (:uminus (:icon 3)))
        (:binary :ne (:apply s (:var m2)) (:icon 0))))
      (:goto 140))
     (:line 185
      (:if
       (:binary :lt (:binary :minus (:var m2) (:var m1))
        (:uminus (:icon 4))))
      (:goto 140))
     (:line 186
      (:if
       (:lazy-binary :and (:binary :eq (:var m1) (:icon 7))
        (:binary :eq (:var m2) (:icon 3))))
      (:goto 140))
     (:line 190 (:let (:apply s (:var m1)) (:icon 0)))
     (:line 200 (:let (:apply s (:var m2)) (:icon 1)))
     (:line 205 (:gosub 1000))
     (:line 210
      (:if
       (:lazy-binary :or
        (:lazy-binary :or (:binary :eq (:apply s (:icon 1)) (:icon 1))
         (:binary :eq (:apply s (:icon 2)) (:icon 1)))
        (:binary :eq (:apply s (:icon 3)) (:icon 1))))
      (:goto 820))
     (:line 220 (:for i (:icon 1) (:icon 9) nil))
     (:line 221
      (:if (:binary :eq (:apply s (:var i)) (:uminus (:icon 1))))
      (:goto 230))
     (:line 222 (:next i)) (:line 223 (:goto 820))
     (:line 230 (:for i (:icon 1) (:icon 9) nil))
     (:line 240
      (:if (:binary :ne (:apply s (:var i)) (:uminus (:icon 1))))
      (:goto 330))
     (:line 250
      (:if
       (:binary :eq (:apply s (:binary :plus (:var i) (:icon 3)))
        (:icon 0)))
      (:goto 350))
     (:line 260 (:if (:binary :eq (:apply fnr (:var i)) (:var i)))
      (:goto 320))
     (:line 270 (:if (:binary :gt (:var i) (:icon 3))) (:goto 300))
     (:line 280 (:if (:binary :eq (:apply s (:icon 5)) (:icon 1)))
      (:goto 350))
     (:line 290 (:goto 330))
     (:line 300 (:if (:binary :eq (:apply s (:icon 8)) (:icon 1)))
      (:goto 350))
     (:line 310 (:goto 330))
     (:line 320
      (:if
       (:lazy-binary :or
        (:binary :eq (:apply s (:binary :plus (:var i) (:icon 2)))
         (:icon 1))
        (:binary :eq (:apply s (:binary :plus (:var i) (:icon 4)))
         (:icon 1))))
      (:goto 350))
     (:line 330 (:next i)) (:line 340 (:goto 820))
     (:line 350 (:for i (:icon 1) (:icon 19) nil))
     (:line 360 (:for j (:icon 1) (:icon 3) nil))
     (:line 370 (:for k (:icon 3) (:icon 1) (:uminus (:icon 1))))
     (:line 380
      (:let
       (:apply t
        (:binary :plus
         (:binary :mul (:binary :minus (:var j) (:icon 1)) (:icon 3))
         (:var k)))
       (:apply b (:var i)
        (:binary :minus
         (:binary :plus
          (:binary :mul (:binary :minus (:var j) (:icon 1)) (:icon 3))
          (:icon 4))
         (:var k)))))
     (:line 390 (:next k)) (:line 400 (:next j))
     (:line 410 (:for j (:icon 1) (:icon 9) nil))
     (:line 420
      (:if
       (:binary :ne (:apply s (:var j))
        (:apply b (:var i) (:var j))))
      (:goto 460))
     (:line 430 (:next j)) (:line 440 (:let (:var r) (:icon 0)))
     (:line 450 (:goto 540)) (:line 460 (:for j (:icon 1) (:icon 9) nil))
     (:line 470
      (:if
       (:binary :ne (:apply s (:var j)) (:apply t (:var j))))
      (:goto 510))
     (:line 480 (:next j)) (:line 490 (:let (:var r) (:icon 1)))
     (:line 500 (:goto 540)) (:line 510 (:next i))
     (:line 511 (:rem " ember the termination of this loop is impossible
"))
     (:line 512 (:print (:scon "illegal board pattern."))) (:line 530 (:stop))
     (:line 540 (:let (:var x) (:var i)))
     (:line 550 (:for i (:icon 1) (:icon 4) nil))
     (:line 560
      (:if (:binary :ne (:apply m (:var x) (:var i)) (:icon 0)))
      (:goto 600))
     (:line 570 (:next i)) (:line 580 (:print (:scon "i resign.")))
     (:line 590 (:goto 820))
     (:line 600
      (:let (:var y)
       (:apply int
        (:binary :plus (:binary :mul (:apply rnd (:icon 1)) (:icon 4))
         (:icon 1)))))
     (:line 601
      (:if (:binary :eq (:apply m (:var x) (:var y)) (:icon 0)))
      (:goto 600))
     (:line 610 (:if (:binary :ne (:var r) (:icon 0))) (:goto 630))
     (:line 620
      (:print (:scon "i move from ") :semi
       (:apply str$
        (:apply int
         (:binary :div (:apply m (:var x) (:var y)) (:icon 10))))
       :semi (:scon " to ") :semi
       (:apply str$
        (:apply fnm (:apply m (:var x) (:var y))))))
     (:line 622
      (:let
       (:apply s
        (:apply int
         (:binary :div (:apply m (:var x) (:var y)) (:icon 10))))
       (:icon 0)))
     (:line 623
      (:let
       (:apply s (:apply fnm (:apply m (:var x) (:var y))))
       (:uminus (:icon 1))))
     (:line 624 (:goto 640))
     (:line 630
      (:print (:scon "i move from ") :semi
       (:apply str$
        (:apply fnr
         (:apply int
          (:binary :div (:apply m (:var x) (:var y)) (:icon 10)))))
       :semi (:scon " to ") :semi))
     (:line 631
      (:print
       (:apply str$
        (:apply fnr
         (:apply fnm (:apply m (:var x) (:var y)))))))
     (:line 632
      (:let
       (:apply s
        (:apply fnr
         (:apply int
          (:binary :div (:apply m (:var x) (:var y)) (:icon 10)))))
       (:icon 0)))
     (:line 633
      (:let
       (:apply s
        (:apply fnr
         (:apply fnm (:apply m (:var x) (:var y)))))
       (:uminus (:icon 1))))
     (:line 640 (:gosub 1000))
     (:line 641
      (:if
       (:lazy-binary :or
        (:lazy-binary :or
         (:binary :eq (:apply s (:icon 7)) (:uminus (:icon 1)))
         (:binary :eq (:apply s (:icon 8)) (:uminus (:icon 1))))
        (:binary :eq (:apply s (:icon 9)) (:uminus (:icon 1)))))
      (:goto 870))
     (:line 650 (:for i (:icon 1) (:icon 9) nil))
     (:line 660 (:if (:binary :eq (:apply s (:var i)) (:icon 1)))
      (:goto 690))
     (:line 670 (:next i)) (:line 680 (:goto 870))
     (:line 690 (:for i (:icon 1) (:icon 9) nil))
     (:line 700 (:if (:binary :ne (:apply s (:var i)) (:icon 1)))
      (:goto 790))
     (:line 710
      (:if
       (:binary :eq (:apply s (:binary :minus (:var i) (:icon 3)))
        (:icon 0)))
      (:goto 120))
     (:line 720 (:if (:binary :eq (:apply fnr (:var i)) (:var i)))
      (:goto 780))
     (:line 730 (:if (:binary :lt (:var i) (:icon 7))) (:goto 760))
     (:line 740
      (:if (:binary :eq (:apply s (:icon 5)) (:uminus (:icon 1))))
      (:goto 120))
     (:line 750 (:goto 790))
     (:line 760
      (:if (:binary :eq (:apply s (:icon 2)) (:uminus (:icon 1))))
      (:goto 120))
     (:line 770 (:goto 790))
     (:line 780
      (:if
       (:lazy-binary :or
        (:binary :eq (:apply s (:binary :minus (:var i) (:icon 2)))
         (:uminus (:icon 1)))
        (:binary :eq (:apply s (:binary :minus (:var i) (:icon 4)))
         (:uminus (:icon 1)))))
      (:goto 120))
     (:line 790 (:next i))
     (:line 800 (:print (:scon "you can't move, so ") :semi))
     (:line 810 (:goto 870)) (:line 820 (:print (:scon "you win.")))
     (:line 830 (:let (:apply m (:var x) (:var y)) (:icon 0)))
     (:line 840 (:let (:var l) (:binary :plus (:var l) (:icon 1))))
     (:line 850
      (:print (:scon "i have won") :semi (:var w) :semi (:scon "and you")
       :semi (:var l) :semi (:scon "out of") :semi
       (:binary :plus (:var l) (:var w)) :semi (:scon "games.")))
     (:line 851 (:print)) (:line 860 (:goto 100))
     (:line 870 (:print (:scon "i win.")))
     (:line 880 (:let (:var w) (:binary :plus (:var w) (:icon 1))))
     (:line 890 (:goto 850))
     (:line 900
      (:data (:uminus (:icon 1)) (:uminus (:icon 1)) (:uminus (:icon 1))
       (:icon 1) (:icon 0) (:icon 0) (:icon 0) (:icon 1) (:icon 1)
       (:uminus (:icon 1)) (:uminus (:icon 1)) (:uminus (:icon 1)) (:icon 0)
       (:icon 1) (:icon 0) (:icon 1) (:icon 0) (:icon 1)))
     (:line 905
      (:data (:uminus (:icon 1)) (:icon 0) (:uminus (:icon 1))
       (:uminus (:icon 1)) (:icon 1) (:icon 0) (:icon 0) (:icon 0) (:icon 1)
       (:icon 0) (:uminus (:icon 1)) (:uminus (:icon 1)) (:icon 1)
       (:uminus (:icon 1)) (:icon 0) (:icon 0) (:icon 0) (:icon 1)))
     (:line 910
      (:data (:uminus (:icon 1)) (:icon 0) (:uminus (:icon 1)) (:icon 1)
       (:icon 1) (:icon 0) (:icon 0) (:icon 1) (:icon 0) (:uminus (:icon 1))
       (:uminus (:icon 1)) (:icon 0) (:icon 1) (:icon 0) (:icon 1) (:icon 0)
       (:icon 0) (:icon 1)))
     (:line 915
      (:data (:icon 0) (:uminus (:icon 1)) (:uminus (:icon 1)) (:icon 0)
       (:uminus (:icon 1)) (:icon 1) (:icon 1) (:icon 0) (:icon 0) (:icon 0)
       (:uminus (:icon 1)) (:uminus (:icon 1)) (:uminus (:icon 1)) (:icon 1)
       (:icon 1) (:icon 1) (:icon 0) (:icon 0)))
     (:line 920
      (:data (:uminus (:icon 1)) (:icon 0) (:uminus (:icon 1))
       (:uminus (:icon 1)) (:icon 0) (:icon 1) (:icon 0) (:icon 1) (:icon 0)
       (:icon 0) (:uminus (:icon 1)) (:uminus (:icon 1)) (:icon 0) (:icon 1)
       (:icon 0) (:icon 0) (:icon 0) (:icon 1)))
     (:line 925
      (:data (:icon 0) (:uminus (:icon 1)) (:uminus (:icon 1)) (:icon 0)
       (:icon 1) (:icon 0) (:icon 1) (:icon 0) (:icon 0) (:uminus (:icon 1))
       (:icon 0) (:uminus (:icon 1)) (:icon 1) (:icon 0) (:icon 0) (:icon 0)
       (:icon 0) (:icon 1)))
     (:line 930
      (:data (:icon 0) (:icon 0) (:uminus (:icon 1)) (:uminus (:icon 1))
       (:uminus (:icon 1)) (:icon 1) (:icon 0) (:icon 0) (:icon 0)
       (:uminus (:icon 1)) (:icon 0) (:icon 0) (:icon 1) (:icon 1) (:icon 1)
       (:icon 0) (:icon 0) (:icon 0)))
     (:line 935
      (:data (:icon 0) (:uminus (:icon 1)) (:icon 0) (:uminus (:icon 1))
       (:icon 1) (:icon 1) (:icon 0) (:icon 0) (:icon 0) (:uminus (:icon 1))
       (:icon 0) (:icon 0) (:uminus (:icon 1)) (:uminus (:icon 1)) (:icon 1)
       (:icon 0) (:icon 0) (:icon 0)))
     (:line 940
      (:data (:icon 0) (:icon 0) (:uminus (:icon 1)) (:uminus (:icon 1))
       (:icon 1) (:icon 0) (:icon 0) (:icon 0) (:icon 0) (:icon 0)
       (:uminus (:icon 1)) (:icon 0) (:icon 1) (:uminus (:icon 1)) (:icon 0)
       (:icon 0) (:icon 0) (:icon 0)))
     (:line 945
      (:data (:uminus (:icon 1)) (:icon 0) (:icon 0) (:uminus (:icon 1))
       (:icon 1) (:icon 0) (:icon 0) (:icon 0) (:icon 0)))
     (:line 950
      (:data (:icon 24) (:icon 25) (:icon 36) (:icon 0) (:icon 14) (:icon 15)
       (:icon 36) (:icon 0) (:icon 15) (:icon 35) (:icon 36) (:icon 47)
       (:icon 36) (:icon 58) (:icon 59) (:icon 0)))
     (:line 955
      (:data (:icon 15) (:icon 35) (:icon 36) (:icon 0) (:icon 24) (:icon 25)
       (:icon 26) (:icon 0) (:icon 26) (:icon 57) (:icon 58) (:icon 0)))
     (:line 960
      (:data (:icon 26) (:icon 35) (:icon 0) (:icon 0) (:icon 47) (:icon 48)
       (:icon 0) (:icon 0) (:icon 35) (:icon 36) (:icon 0) (:icon 0) (:icon 35)
       (:icon 36) (:icon 0) (:icon 0)))
     (:line 965
      (:data (:icon 36) (:icon 0) (:icon 0) (:icon 0) (:icon 47) (:icon 58)
       (:icon 0) (:icon 0) (:icon 15) (:icon 0) (:icon 0) (:icon 0)))
     (:line 970
      (:data (:icon 26) (:icon 47) (:icon 0) (:icon 0) (:icon 47) (:icon 58)
       (:icon 0) (:icon 0) (:icon 35) (:icon 36) (:icon 47) (:icon 0)
       (:icon 28) (:icon 58) (:icon 0) (:icon 0) (:icon 15) (:icon 47)
       (:icon 0) (:icon 0)))
     (:line 1000 (:print)) (:line 1010 (:for i (:icon 1) (:icon 3) nil))
     (:line 1020 (:for j (:icon 1) (:icon 3) nil))
     (:line 1030
      (:print (:apply tab (:icon 10)) :semi
       (:apply mid$ (:var p$)
        (:binary :plus
         (:apply s
          (:binary :plus
           (:binary :mul (:binary :minus (:var i) (:icon 1)) (:icon 3))
           (:var j)))
         (:icon 2))
        (:icon 1))
       :semi))
     (:line 1040 (:next j)) (:line 1050 (:print))
     (:line 1060 (:next i)) (:line 1070 (:print)) (:line 1080 (:return))
     (:line 2000 (:print)
      (:print (:scon "this program plays the game of hexapawn.")))
     (:line 2010
      (:print
       (:scon "hexapawn is played with chess pawns on a 3 by 3 board.")))
     (:line 2020
      (:print
       (:scon "the pawns are moved as in chess - one space forward to")))
     (:line 2030
      (:print (:scon "an empty space or one space forward and diagonally to")))
     (:line 2040
      (:print (:scon "capture an opposing man.  on the board, your pawns")))
     (:line 2050
      (:print (:scon "are 'o', the computer's pawns are 'x', and empty ")))
     (:line 2060
      (:print (:scon "squares are '.'.  to enter a move, type the number of")))
     (:line 2070
      (:print
       (:scon "the square you are moving from, followed by the number")))
     (:line 2080
      (:print (:scon "of the square you will move to.  the numbers must be")))
     (:line 2090 (:print (:scon "seperated by a comma.")) (:print))
     (:line 2100
      (:print
       (:scon "the computer starts a series of games knowing only when")))
     (:line 2105
      (:print
       (:scon "the game is won (a draw is impossible) and how to move.")))
     (:line 2110
      (:print (:scon "it has no strategy at first and just moves randomly.")))
     (:line 2120
      (:print
       (:scon "however, it learns from each game.  thus, winning becomes")))
     (:line 2130
      (:print (:scon "more and more difficult.  also, to help offset your")))
     (:line 2140
      (:print
       (:scon "initial advantage, you will not be told how to win the")))
     (:line 2150 (:print (:scon "game but must learn this by playing.")))
     (:line 2160 (:print)
      (:print (:scon "the numbering of the board is as follows:")))
     (:line 2170 (:print (:apply tab (:icon 10)) :semi (:scon "123"))
      (:print (:apply tab (:icon 10)) :semi (:scon "456"))
      (:print (:apply tab (:icon 10)) :semi (:scon "789")))
     (:line 2180 (:print)
      (:print (:scon "for example, to move your rightmost pawn forward,")))
     (:line 2190
      (:print (:scon "you would type 9,6 in response to the question")))
     (:line 2200
      (:print (:scon "'your move ?'.  since i'm a good sport, you'll always")))
     (:line 2210 (:print (:scon "go first.")) (:print))
     (:line 2220 (:goto 100)) (:line 9999 (:end)))))



(defvar *hi-lo*
  '(((:line 10 (:print (:apply tab (:icon 34)) :semi (:scon "hi lo")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print))
     (:line 100 (:print (:scon "this is the game of hi lo.")) (:print))
     (:line 110
      (:print
       (:scon "you will have 6 tries to guess the amount of money in the")))
     (:line 120
      (:print
       (:scon "hi lo jackpot, which is between 1 and 100 dollars.  if you")))
     (:line 130
      (:print
       (:scon "guess the amount, you win all the money in the jackpot!")))
     (:line 140
      (:print
       (:scon "then you get another chance to win more money.  however,")))
     (:line 150
      (:print (:scon "if you do not guess the amount, the game ends."))
      (:print))
     (:line 160 (:let (:var r) (:icon 0)))
     (:line 170 (:let (:var b) (:icon 0)) (:print))
     (:line 180
      (:let (:var y)
       (:apply int (:binary :mul (:icon 100) (:apply rnd (:icon 1))))))
     (:line 200 (:print (:scon "your guess") :semi))
     (:line 210 (:input nil ((:var a))))
     (:line 220 (:let (:var b) (:binary :plus (:var b) (:icon 1))))
     (:line 230 (:if (:binary :eq (:var a) (:var y))) (:goto 300))
     (:line 240 (:if (:binary :gt (:var a) (:var y))) (:goto 270))
     (:line 250 (:print (:scon "your guess is too low.")) (:goto 280))
     (:line 270 (:print (:scon "your guess is too high.")))
     (:line 280 (:print) (:if (:binary :lt (:var b) (:icon 6)))
      (:goto 200))
     (:line 290
      (:print (:scon "you blew it...too bad...the number was") :semi
       (:var y)))
     (:line 295 (:let (:var r) (:icon 0)) (:goto 350))
     (:line 300
      (:print (:scon "got it!!!!!!!!!!   you win") :semi (:var y) :semi
       (:scon "dollars.")))
     (:line 310 (:let (:var r) (:binary :plus (:var r) (:var y))))
     (:line 320
      (:print (:scon "your total winnings are now") :semi (:var r) :semi
       (:scon "dollars.")))
     (:line 350 (:print) (:print (:scon "play again (yes or no)") :semi))
     (:line 360 (:input nil ((:var a$)))
      (:if (:binary :eq (:var a$) (:scon "yes"))) (:goto 170))
     (:line 380 (:print)
      (:print (:scon "so long.  hope you enjoyed yourself!!!")))
     (:line 390 (:end)))))



(defvar *highiq*
  '(((:line 1 (:print (:apply tab (:icon 33)) :semi (:scon "h-i-q")))
     (:line 2
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 3 (:print) (:print) (:print))
     (:line 4
      (:dim ((:dimd b (:icon 70)) (:dimd2 t (:icon 9) (:icon 9)))))
     (:line 5 (:print (:scon "here is the board:")) (:print))
     (:line 6 (:print (:scon "          !    !    !")))
     (:line 7 (:print (:scon "         13   14   15")) (:print))
     (:line 8 (:print (:scon "          !    !    !")))
     (:line 9 (:print (:scon "         22   23   24")) (:print))
     (:line 10 (:print (:scon "!    !    !    !    !    !    !")))
     (:line 11 (:print (:scon "29   30   31   32   33   34   35")) (:print))
     (:line 12 (:print (:scon "!    !    !    !    !    !    !")))
     (:line 13 (:print (:scon "38   39   40   41   42   43   44")) (:print))
     (:line 14 (:print (:scon "!    !    !    !    !    !    !")))
     (:line 15 (:print (:scon "47   48   49   50   51   52   53")) (:print))
     (:line 16 (:print (:scon "          !    !    !")))
     (:line 17 (:print (:scon "         58   59   60")) (:print))
     (:line 18 (:print (:scon "          !    !    !")))
     (:line 19 (:print (:scon "         67   68   69")) (:print))
     (:line 20
      (:print
       (:scon "to save typing time, a compressed version of the game board")))
     (:line 22
      (:print
       (:scon "will be used during play.  refer to the above one for peg")))
     (:line 24 (:print (:scon "numbers.  ok, let's begin.")))
     (:line 28 (:rem " *** set up board
"))
     (:line 29 (:for r (:icon 1) (:icon 9) nil))
     (:line 30 (:for c (:icon 1) (:icon 9) nil))
     (:line 31
      (:if
       (:binary :eq
        (:binary :mul
         (:binary :mul (:binary :minus (:var r) (:icon 4))
          (:binary :minus (:var r) (:icon 5)))
         (:binary :minus (:var r) (:icon 6)))
        (:icon 0)))
      (:goto 40))
     (:line 32
      (:if
       (:binary :eq
        (:binary :mul
         (:binary :mul (:binary :minus (:var c) (:icon 4))
          (:binary :minus (:var c) (:icon 5)))
         (:binary :minus (:var c) (:icon 6)))
        (:icon 0)))
      (:goto 40))
     (:line 35
      (:let (:apply t (:var r) (:var c)) (:uminus (:icon 5))))
     (:line 36 (:goto 50))
     (:line 40
      (:if
       (:binary :eq
        (:binary :mul
         (:binary :mul
          (:binary :mul (:binary :minus (:var r) (:icon 1))
           (:binary :minus (:var c) (:icon 1)))
          (:binary :minus (:var r) (:icon 9)))
         (:binary :minus (:var c) (:icon 9)))
        (:icon 0)))
      (:goto 35))
     (:line 42 (:let (:apply t (:var r) (:var c)) (:icon 5)))
     (:line 50 (:next c)) (:line 60 (:next r))
     (:line 65 (:let (:apply t (:icon 5) (:icon 5)) (:icon 0))
      (:gosub 500))
     (:line 70 (:rem " *** input move and check on legality
"))
     (:line 75 (:for w (:icon 1) (:icon 33) nil))
     (:line 77 (:read (:var m)))
     (:line 79
      (:data (:icon 13) (:icon 14) (:icon 15) (:icon 22) (:icon 23) (:icon 24)
       (:icon 29) (:icon 30) (:icon 31) (:icon 32) (:icon 33) (:icon 34)
       (:icon 35) (:icon 38) (:icon 39) (:icon 40) (:icon 41)))
     (:line 81
      (:data (:icon 42) (:icon 43) (:icon 44) (:icon 47) (:icon 48) (:icon 49)
       (:icon 50) (:icon 51) (:icon 52) (:icon 53) (:icon 58) (:icon 59)
       (:icon 60) (:icon 67) (:icon 68) (:icon 69)))
     (:line 83 (:let (:apply b (:var m)) (:uminus (:icon 7)))
      (:next w))
     (:line 86 (:let (:apply b (:icon 41)) (:uminus (:icon 3))))
     (:line 100 (:input "move which piece" ((:var z))))
     (:line 110
      (:if (:binary :eq (:apply b (:var z)) (:uminus (:icon 7))))
      (:goto 140))
     (:line 120 (:print (:scon "illegal move, try again...")) (:goto 100))
     (:line 140 (:input "to where" ((:var p))))
     (:line 150 (:if (:binary :eq (:apply b (:var p)) (:icon 0)))
      (:goto 120))
     (:line 153
      (:if (:binary :eq (:apply b (:var p)) (:uminus (:icon 7))))
      (:goto 120))
     (:line 156 (:if (:binary :eq (:var z) (:var p))) (:goto 100))
     (:line 160
      (:if
       (:binary :eq
        (:binary :div (:binary :plus (:var z) (:var p)) (:icon 2))
        (:apply int
         (:binary :div (:binary :plus (:var z) (:var p)) (:icon 2)))))
      (:goto 180))
     (:line 170 (:goto 120))
     (:line 180
      (:if
       (:binary :ne
        (:binary :mul
         (:binary :minus
          (:apply abs (:binary :minus (:var z) (:var p)))
          (:icon 2))
         (:binary :minus
          (:apply abs (:binary :minus (:var z) (:var p)))
          (:icon 18)))
        (:icon 0)))
      (:goto 120))
     (:line 190 (:gosub 1000)) (:line 200 (:gosub 500))
     (:line 210 (:gosub 1500)) (:line 220 (:goto 100))
     (:line 500 (:rem " *** print board
"))
     (:line 510 (:for x (:icon 1) (:icon 9) nil))
     (:line 520 (:for y (:icon 1) (:icon 9) nil))
     (:line 525
      (:if
       (:binary :eq
        (:binary :mul
         (:binary :mul
          (:binary :mul (:binary :minus (:var x) (:icon 1))
           (:binary :minus (:var x) (:icon 9)))
          (:binary :minus (:var y) (:icon 1)))
         (:binary :minus (:var y) (:icon 9)))
        (:icon 0)))
      (:goto 550))
     (:line 530
      (:if
       (:binary :eq
        (:binary :mul
         (:binary :mul (:binary :minus (:var x) (:icon 4))
          (:binary :minus (:var x) (:icon 5)))
         (:binary :minus (:var x) (:icon 6)))
        (:icon 0)))
      (:goto 570))
     (:line 540
      (:if
       (:binary :eq
        (:binary :mul
         (:binary :mul (:binary :minus (:var y) (:icon 4))
          (:binary :minus (:var y) (:icon 5)))
         (:binary :minus (:var y) (:icon 6)))
        (:icon 0)))
      (:goto 570))
     (:line 550 (:rem "
")) (:line 560 (:goto 610))
     (:line 570
      (:if (:binary :ne (:apply t (:var x) (:var y)) (:icon 5)))
      (:goto 600))
     (:line 580
      (:print (:apply tab (:binary :mul (:var y) (:icon 2))) :semi
       (:scon "!") :semi))
     (:line 590 (:goto 610))
     (:line 600
      (:print (:apply tab (:binary :mul (:var y) (:icon 2))) :semi
       (:scon "o") :semi))
     (:line 610 (:rem "
")) (:line 615 (:next y)) (:line 620 (:print))
     (:line 630 (:next x)) (:line 640 (:return))
     (:line 1000 (:rem " *** update board
"))
     (:line 1005 (:let (:var c) (:icon 1))
      (:for x (:icon 1) (:icon 9) nil))
     (:line 1020 (:for y (:icon 1) (:icon 9) nil))
     (:line 1030 (:if (:binary :ne (:var c) (:var z))) (:goto 1220))
     (:line 1040
      (:if (:binary :ne (:binary :plus (:var c) (:icon 2)) (:var p)))
      (:goto 1080))
     (:line 1045
      (:if
       (:binary :eq
        (:apply t (:var x) (:binary :plus (:var y) (:icon 1)))
        (:icon 0)))
      (:goto 120))
     (:line 1050
      (:let (:apply t (:var x) (:binary :plus (:var y) (:icon 2)))
       (:icon 5)))
     (:line 1060
      (:let (:apply t (:var x) (:binary :plus (:var y) (:icon 1)))
       (:icon 0))
      (:let (:apply b (:binary :plus (:var c) (:icon 1)))
       (:uminus (:icon 3))))
     (:line 1070 (:goto 1200))
     (:line 1080
      (:if (:binary :ne (:binary :plus (:var c) (:icon 18)) (:var p)))
      (:goto 1130))
     (:line 1085
      (:if
       (:binary :eq
        (:apply t (:binary :plus (:var x) (:icon 1)) (:var y))
        (:icon 0)))
      (:goto 120))
     (:line 1090
      (:let (:apply t (:binary :plus (:var x) (:icon 2)) (:var y))
       (:icon 5))
      (:let (:apply t (:binary :plus (:var x) (:icon 1)) (:var y))
       (:icon 0))
      (:let (:apply b (:binary :plus (:var c) (:icon 9)))
       (:uminus (:icon 3))))
     (:line 1120 (:goto 1200))
     (:line 1130
      (:if (:binary :ne (:binary :minus (:var c) (:icon 2)) (:var p)))
      (:goto 1170))
     (:line 1135
      (:if
       (:binary :eq
        (:apply t (:var x) (:binary :minus (:var y) (:icon 1)))
        (:icon 0)))
      (:goto 120))
     (:line 1140
      (:let (:apply t (:var x) (:binary :minus (:var y) (:icon 2)))
       (:icon 5))
      (:let (:apply t (:var x) (:binary :minus (:var y) (:icon 1)))
       (:icon 0))
      (:let (:apply b (:binary :minus (:var c) (:icon 1)))
       (:uminus (:icon 3))))
     (:line 1160 (:goto 1200))
     (:line 1170
      (:if (:binary :ne (:binary :minus (:var c) (:icon 18)) (:var p)))
      (:goto 1220))
     (:line 1175
      (:if
       (:binary :eq
        (:apply t (:binary :minus (:var x) (:icon 1)) (:var y))
        (:icon 0)))
      (:goto 120))
     (:line 1180
      (:let (:apply t (:binary :minus (:var x) (:icon 2)) (:var y))
       (:icon 5))
      (:let (:apply t (:binary :minus (:var x) (:icon 1)) (:var y))
       (:icon 0))
      (:let (:apply b (:binary :minus (:var c) (:icon 9)))
       (:uminus (:icon 3))))
     (:line 1200 (:let (:apply b (:var z)) (:uminus (:icon 3)))
      (:let (:apply b (:var p)) (:uminus (:icon 7))))
     (:line 1210 (:let (:apply t (:var x) (:var y)) (:icon 0))
      (:goto 1240))
     (:line 1220 (:let (:var c) (:binary :plus (:var c) (:icon 1))))
     (:line 1225 (:next y)) (:line 1230 (:next x))
     (:line 1240 (:return)) (:line 1500 (:rem "*** check if game is over
"))
     (:line 1505 (:let (:var f) (:icon 0)))
     (:line 1510 (:for r (:icon 2) (:icon 8) nil))
     (:line 1520 (:for c (:icon 2) (:icon 8) nil))
     (:line 1530
      (:if (:binary :ne (:apply t (:var r) (:var c)) (:icon 5)))
      (:goto 1580))
     (:line 1535 (:let (:var f) (:binary :plus (:var f) (:icon 1))))
     (:line 1540
      (:for a (:binary :minus (:var r) (:icon 1))
       (:binary :plus (:var r) (:icon 1)) nil))
     (:line 1545 (:let (:var t) (:icon 0)))
     (:line 1550
      (:for b (:binary :minus (:var c) (:icon 1))
       (:binary :plus (:var c) (:icon 1)) nil))
     (:line 1560
      (:let (:var t)
       (:binary :plus (:var t) (:apply t (:var a) (:var b)))))
     (:line 1561 (:next b))
     (:line 1564 (:if (:binary :ne (:var t) (:icon 10))) (:goto 1567))
     (:line 1565
      (:if (:binary :ne (:apply t (:var a) (:var c)) (:icon 0)))
      (:goto 1630))
     (:line 1567 (:next a))
     (:line 1568
      (:for x (:binary :minus (:var c) (:icon 1))
       (:binary :plus (:var c) (:icon 1)) nil))
     (:line 1569 (:let (:var t) (:icon 0)))
     (:line 1570
      (:for y (:binary :minus (:var r) (:icon 1))
       (:binary :plus (:var r) (:icon 1)) nil))
     (:line 1571
      (:let (:var t)
       (:binary :plus (:var t) (:apply t (:var y) (:var x)))))
     (:line 1572 (:next y))
     (:line 1573 (:if (:binary :ne (:var t) (:icon 10))) (:goto 1575))
     (:line 1574
      (:if (:binary :ne (:apply t (:var r) (:var x)) (:icon 0)))
      (:goto 1630))
     (:line 1575 (:next x)) (:line 1580 (:next c))
     (:line 1590 (:next r)) (:line 1600 (:rem " *** game is over
"))
     (:line 1605 (:print (:scon "the game is over.")))
     (:line 1610
      (:print (:scon "you had") :semi (:var f) :semi
       (:scon "pieces remaining.")))
     (:line 1611 (:if (:binary :ne (:var f) (:icon 1))) (:goto 1615))
     (:line 1612 (:print (:scon "bravo!  you made a perfect score!")))
     (:line 1613
      (:print (:scon "save this paper as a record of your accomplishment!")))
     (:line 1615 (:print) (:input "play again (yes or no)" ((:var a$))))
     (:line 1617 (:if (:binary :eq (:var a$) (:scon "no"))) (:goto 2000))
     (:line 1618 :restore (:goto 28)) (:line 1620 (:stop))
     (:line 1630 (:return))
     (:line 2000 (:print) (:print (:scon "so long for now.")) (:print))
     (:line 2010 (:end)))))



(defvar *hockey*
  '(((:line 2 (:print (:apply tab (:icon 33)) :semi (:scon "hockey")))
     (:line 4
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 6 (:print) (:print) (:print))
     (:line 10 (:rem " robert puopolo alg. 1 140 mccowan 6/7/73 hockey
"))
     (:line 30 (:let (:var x) (:icon 1)))
     (:line 40 (:print) (:print) (:print))
     (:line 50 (:print (:scon "would you like the instructions") :semi)
      (:input nil ((:var c$))))
     (:line 55 (:print))
     (:line 60 (:if (:binary :eq (:var c$) (:scon "no"))) (:goto 90))
     (:line 65 (:if (:binary :eq (:var c$) (:scon "yes"))) (:goto 80))
     (:line 70 (:print (:scon "answer yes or no!!")) (:goto 50))
     (:line 80 (:goto 1720))
     (:line 90
      (:dim
       ((:dimd a$ (:icon 7)) (:dimd b$ (:icon 7))
        (:dimd h (:icon 20)) (:dimd t (:icon 5))
        (:dimd t1 (:icon 5)) (:dimd t2 (:icon 5))
        (:dimd t3 (:icon 5)))))
     (:line 100 (:print (:scon "enter the two teams") :semi)
      (:input nil ((:apply a$ (:icon 7)) (:apply b$ (:icon 7)))))
     (:line 105 (:print))
     (:line 110 (:print (:scon "enter the number of minutes in a game") :semi)
      (:input nil ((:var t6))))
     (:line 115 (:print))
     (:line 120 (:if (:binary :lt (:var t6) (:icon 1))) (:goto 110)
      (:print))
     (:line 130
      (:print (:scon "would the ") (:apply a$ (:icon 7))
       (:scon " coach enter his team")))
     (:line 135 (:print))
     (:line 140 (:for i (:icon 1) (:icon 6) nil)
      (:print (:scon "player") (:var i) :semi)
      (:input nil ((:apply a$ (:var i)))) (:next i) (:print))
     (:line 150
      (:print (:scon "would the ") (:apply b$ (:icon 7))
       (:scon " coach do the same")))
     (:line 155 (:print))
     (:line 160 (:for t (:icon 1) (:icon 6) nil)
      (:print (:scon "player") (:var t) :semi)
      (:input nil ((:apply b$ (:var t)))) (:next t) (:print))
     (:line 170 (:print (:scon "input the referee for this game") :semi)
      (:input nil ((:var r$))))
     (:line 180 (:print)
      (:print (:apply tab (:icon 10)) :semi (:apply a$ (:icon 7))
       (:scon " starting lineup")))
     (:line 190 (:for t (:icon 1) (:icon 6) nil)
      (:print (:apply a$ (:var t))) (:next t))
     (:line 200 (:print)
      (:print (:apply tab (:icon 10)) :semi (:apply b$ (:icon 7))
       (:scon " starting lineup")))
     (:line 210 (:for t (:icon 1) (:icon 6) nil)
      (:print (:apply b$ (:var t))) (:next t) (:print))
     (:line 220 (:print (:scon "we're ready for tonights opening face-off.")))
     (:line 230
      (:print (:var r$) (:scon " will drop the puck between ")
       (:apply a$ (:icon 2)) (:scon " and ") (:apply b$ (:icon 2))))
     (:line 240 (:for l (:icon 1) (:var t6) nil)
      (:if (:binary :eq (:var l) (:icon 1))) (:goto 260))
     (:line 250 (:print (:scon "and we're ready for the face-off")))
     (:line 260
      (:let (:var c)
       (:binary :plus
        (:apply int (:binary :mul (:icon 2) (:apply rnd (:var x))))
        (:icon 1)))
      (:on-goto (:var c) (270 280)))
     (:line 270
      (:print (:apply a$ (:icon 7)) (:scon " has control of the puck"))
      (:goto 290))
     (:line 280 (:print (:apply b$ (:icon 7)) (:scon " has control.")))
     (:line 290 (:print (:scon "pass") :semi) (:input nil ((:var p)))
      (:for n (:icon 1) (:icon 3) nil)
      (:let (:apply h (:var n)) (:icon 0)) (:next n))
     (:line 300 (:if (:binary :lt (:var p) (:icon 0))) (:goto 290))
     (:line 305 (:if (:binary :gt (:var p) (:icon 3))) (:goto 290))
     (:line 310
      (:for j (:icon 1) (:binary :plus (:var p) (:icon 2)) nil))
     (:line 320
      (:let (:apply h (:var j))
       (:binary :plus
        (:apply int (:binary :mul (:icon 5) (:apply rnd (:var x))))
        (:icon 1))))
     (:line 330 (:next j)
      (:if
       (:binary :eq (:apply h (:binary :minus (:var j) (:icon 1)))
        (:apply h (:binary :minus (:var j) (:icon 2)))))
      (:goto 310))
     (:line 331
      (:if (:binary :lt (:binary :plus (:var p) (:icon 2)) (:icon 3)))
      (:goto 350))
     (:line 335
      (:if
       (:binary :eq (:apply h (:binary :minus (:var j) (:icon 1)))
        (:apply h (:binary :minus (:var j) (:icon 3)))))
      (:goto 310))
     (:line 340
      (:if
       (:binary :eq (:apply h (:binary :minus (:var j) (:icon 2)))
        (:apply h (:binary :minus (:var j) (:icon 3)))))
      (:goto 310))
     (:line 350 (:if (:binary :eq (:var p) (:icon 0))) (:goto 360))
     (:line 355 (:goto 490))
     (:line 360 (:input "shot" ((:var s)))
      (:if (:binary :lt (:var s) (:icon 1))) (:goto 360))
     (:line 365 (:if (:binary :gt (:var s) (:icon 4))) (:goto 360))
     (:line 370 (:on-goto (:var c) (380 480)))
     (:line 380
      (:print
       (:apply a$ (:apply h (:binary :minus (:var j) (:icon 1))))
       :semi)
      (:let (:var g)
       (:apply h (:binary :minus (:var j) (:icon 1))))
      (:let (:var g1) (:icon 0)) (:let (:var g2) (:icon 0)))
     (:line 390 (:on-goto (:var s) (400 420 440 460)))
     (:line 400 (:print (:scon " let's a boomer go from the red line!!")))
     (:line 410 (:let (:var z) (:icon 10)) (:goto 890))
     (:line 420 (:print (:scon " flips a wristshot down the ice")))
     (:line 440 (:print (:scon " backhands one in on the goaltender")))
     (:line 450 (:let (:var z) (:icon 25)) (:goto 890))
     (:line 460 (:print (:scon " snaps a long flip shot")))
     (:line 470 (:let (:var z) (:icon 17)) (:goto 890))
     (:line 480
      (:print
       (:apply b$ (:apply h (:binary :minus (:var j) (:icon 1))))
       :semi)
      (:let (:var g1) (:icon 0)) (:let (:var g2) (:icon 0))
      (:let (:var g)
       (:apply h (:binary :minus (:var j) (:icon 1))))
      (:goto 390))
     (:line 490 (:on-goto (:var c) (500 640)))
     (:line 500 (:on-goto (:var p) (510 540 570)))
     (:line 510
      (:print
       (:apply a$ (:apply h (:binary :minus (:var j) (:icon 2))))
       (:scon " leads ")
       (:apply a$ (:apply h (:binary :minus (:var j) (:icon 1))))
       (:scon " with a perfect pass.")))
     (:line 520
      (:print
       (:apply a$ (:apply h (:binary :minus (:var j) (:icon 1))))
       (:scon " cutting in!!!")))
     (:line 530
      (:let (:var g)
       (:apply h (:binary :minus (:var j) (:icon 1))))
      (:let (:var g1)
       (:apply h (:binary :minus (:var j) (:icon 2))))
      (:let (:var g2) (:icon 0)) (:let (:var z1) (:icon 3))
      (:goto 770))
     (:line 540
      (:print
       (:apply a$ (:apply h (:binary :minus (:var j) (:icon 2))))
       (:scon " gives to a streaking ")
       (:apply a$ (:apply h (:binary :minus (:var j) (:icon 1))))))
     (:line 550
      (:print
       (:apply a$ (:apply h (:binary :minus (:var j) (:icon 3))))
       (:scon " comes down on ") (:apply b$ (:icon 5)) (:scon " and ")
       (:apply b$ (:icon 4))))
     (:line 560
      (:let (:var g)
       (:apply h (:binary :minus (:var j) (:icon 3))))
      (:let (:var g1)
       (:apply h (:binary :minus (:var j) (:icon 1))))
      (:let (:var g2)
       (:apply h (:binary :minus (:var j) (:icon 2))))
      (:let (:var z1) (:icon 2)) (:goto 770))
     (:line 570 (:print (:scon "oh my god!! a ' 4 on 2 ' situation")))
     (:line 580
      (:print
       (:apply a$ (:apply h (:binary :minus (:var j) (:icon 3))))
       (:scon " leads ")
       (:apply a$ (:apply h (:binary :minus (:var j) (:icon 2))))))
     (:line 590
      (:print
       (:apply a$ (:apply h (:binary :minus (:var j) (:icon 2))))
       (:scon " is wheeeling through center.")))
     (:line 600
      (:print
       (:apply a$ (:apply h (:binary :minus (:var j) (:icon 2))))
       (:scon " gives and goes with ")
       (:apply a$ (:apply h (:binary :minus (:var j) (:icon 1))))))
     (:line 610 (:print (:scon "pretty passing!")))
     (:line 620
      (:print
       (:apply a$ (:apply h (:binary :minus (:var j) (:icon 1))))
       (:scon " drops it to ")
       (:apply a$ (:apply h (:binary :minus (:var j) (:icon 4))))))
     (:line 630
      (:let (:var g)
       (:apply h (:binary :minus (:var j) (:icon 4))))
      (:let (:var g1)
       (:apply j (:binary :minus (:var j) (:icon 1))))
      (:let (:var g2)
       (:apply h (:binary :minus (:var j) (:icon 2))))
      (:let (:var z1) (:icon 1)) (:goto 770))
     (:line 640 (:on-goto (:var p) (650 670 720)))
     (:line 650
      (:print
       (:apply b$ (:apply h (:binary :minus (:var j) (:icon 1))))
       (:scon " hits ")
       (:apply b$ (:apply h (:binary :minus (:var j) (:icon 2))))
       (:scon " flying down the left side")))
     (:line 660
      (:let (:var g)
       (:apply h (:binary :minus (:var j) (:icon 2))))
      (:let (:var g1)
       (:apply h (:binary :minus (:var j) (:icon 1))))
      (:let (:var g2) (:icon 0)) (:let (:var z1) (:icon 3))
      (:goto 770))
     (:line 670 (:print (:scon "it's a ' 3 on 2 '!")))
     (:line 680
      (:print (:scon "only ") (:apply a$ (:icon 4)) (:scon " and ")
       (:apply a$ (:icon 5)) (:scon " are back.")))
     (:line 690
      (:print
       (:apply b$ (:apply h (:binary :minus (:var j) (:icon 2))))
       (:scon " gives off to ")
       (:apply b$ (:apply h (:binary :minus (:var j) (:icon 1))))))
     (:line 700
      (:print
       (:apply b$ (:apply h (:binary :minus (:var j) (:icon 1))))
       (:scon " drops to ")
       (:apply b$ (:apply h (:binary :minus (:var j) (:icon 3))))))
     (:line 710
      (:let (:var g)
       (:apply h (:binary :minus (:var j) (:icon 3))))
      (:let (:var g1)
       (:apply h (:binary :minus (:var j) (:icon 1))))
      (:let (:var g2)
       (:apply h (:binary :minus (:var j) (:icon 2))))
      (:let (:var z1) (:icon 2)) (:goto 770))
     (:line 720 (:print (:scon " a ' 3 on 2 ' with a ' trailer '!")))
     (:line 730
      (:print
       (:apply b$ (:apply h (:binary :minus (:var j) (:icon 4))))
       (:scon " gives to ")
       (:apply b$ (:apply h (:binary :minus (:var j) (:icon 2))))
       (:scon " who shuffles it off to")))
     (:line 740
      (:print
       (:apply b$ (:apply h (:binary :minus (:var j) (:icon 1))))
       (:scon " who fires a wing to wing pass to ")))
     (:line 750
      (:print
       (:apply b$ (:apply h (:binary :minus (:var j) (:icon 3))))
       (:scon " as he cuts in alone!!")))
     (:line 760
      (:let (:var g)
       (:apply h (:binary :minus (:var j) (:icon 3))))
      (:let (:var g1)
       (:apply h (:binary :minus (:var j) (:icon 1))))
      (:let (:var g2)
       (:apply h (:binary :minus (:var j) (:icon 2))))
      (:let (:var z1) (:icon 1)) (:goto 770))
     (:line 770 (:print (:scon "shot") :semi) (:input nil ((:var s)))
      (:if (:binary :gt (:var s) (:icon 4))) (:goto 770)
      (:if (:binary :lt (:var s) (:icon 1))) (:goto 770))
     (:line 780 (:on-goto (:var c) (790 880)))
     (:line 790 (:print (:apply a$ (:var g)) :semi)
      (:on-goto (:var s) (800 820 840 860)))
     (:line 800 (:print (:scon " let's a big slap shot go!!")))
     (:line 810 (:let (:var z) (:icon 4))
      (:let (:var z) (:binary :plus (:var z) (:var z1)))
      (:goto 890))
     (:line 820 (:print (:scon " rips a wrist shot off")))
     (:line 830 (:let (:var z) (:icon 2))
      (:let (:var z) (:binary :plus (:var z) (:var z1)))
      (:goto 890))
     (:line 840 (:print (:scon " gets a backhand off")))
     (:line 850 (:let (:var z) (:icon 3))
      (:let (:var z) (:binary :plus (:var z) (:var z1)))
      (:goto 890))
     (:line 860 (:print (:scon " snaps off a snap shot")))
     (:line 870 (:let (:var z) (:icon 2))
      (:let (:var z) (:binary :plus (:var z) (:var z1)))
      (:goto 890))
     (:line 880 (:print (:apply b$ (:var g)) :semi)
      (:on-goto (:var s) (800 820 840 860)))
     (:line 890 (:print (:scon "area") :semi) (:input nil ((:var a)))
      (:if (:binary :lt (:var a) (:icon 1))) (:goto 890))
     (:line 895 (:if (:binary :gt (:var a) (:icon 4))) (:goto 890))
     (:line 900 (:on-goto (:var c) (910 920)))
     (:line 910 (:let (:var s2) (:binary :plus (:var s2) (:icon 1)))
      (:goto 930))
     (:line 920 (:let (:var s3) (:binary :plus (:var s3) (:icon 1))))
     (:line 930
      (:let (:var a1)
       (:binary :plus
        (:apply int (:binary :mul (:icon 4) (:apply rnd (:var x))))
        (:icon 1)))
      (:if (:binary :ne (:var a) (:var a1))) (:goto 1200))
     (:line 940
      (:let (:apply h (:icon 20))
       (:binary :plus
        (:apply int
         (:binary :mul (:icon 100) (:apply rnd (:var x))))
        (:icon 1))))
     (:line 950
      (:if
       (:binary :eq
        (:apply int (:binary :div (:apply h (:icon 20)) (:var z)))
        (:binary :div (:apply h (:icon 20)) (:var z))))
      (:goto 1160))
     (:line 960 (:on-goto (:var c) (970 980)))
     (:line 970 (:print (:scon "goal ") (:apply a$ (:icon 7)))
      (:let (:apply h (:icon 9))
       (:binary :plus (:apply h (:icon 9)) (:icon 1)))
      (:goto 990))
     (:line 980 (:print (:scon "score ") (:apply b$ (:icon 7)))
      (:let (:apply h (:icon 8))
       (:binary :plus (:apply h (:icon 8)) (:icon 1))))
     (:line 990 (:for b1 (:icon 1) (:icon 25) nil)
      (:print (:apply chr$ (:icon 7)) :semi) (:next b1) (:print))
     (:line 1000 (:print (:scon "score: ") :semi)
      (:if (:binary :gt (:apply h (:icon 8)) (:apply h (:icon 9))))
      (:goto 1020))
     (:line 1010
      (:print (:apply a$ (:icon 7)) (:scon ":") :semi
       (:apply h (:icon 9)) :comma (:apply b$ (:icon 7)) (:scon ":")
       :semi (:apply h (:icon 8)))
      (:goto 1030))
     (:line 1020
      (:print (:apply b$ (:icon 7)) (:scon ":") :semi
       (:apply h (:icon 8)) :comma (:apply a$ (:icon 7)) (:scon ":")
       :semi (:apply h (:icon 9))))
     (:line 1030 (:on-goto (:var c) (1040 1100)))
     (:line 1040
      (:print (:scon "goal scored by: ") (:apply a$ (:var g)))
      (:if (:binary :eq (:var g1) (:icon 0))) (:goto 1070))
     (:line 1050 (:if (:binary :eq (:var g2) (:icon 0))) (:goto 1080))
     (:line 1060
      (:print (:scon " assisted by: ") (:apply a$ (:var g1))
       (:scon " and ") (:apply a$ (:var g2)))
      (:goto 1090))
     (:line 1070 (:print (:scon " unassisted.")) (:goto 1090))
     (:line 1080
      (:print (:scon " assisted by: ") (:apply a$ (:var g1))))
     (:line 1090
      (:let (:apply t (:var g))
       (:binary :plus (:apply t (:var g)) (:icon 1)))
      (:let (:apply t1 (:var g1))
       (:binary :plus (:apply t1 (:var g1)) (:icon 1)))
      (:let (:apply t1 (:var g2))
       (:binary :plus (:apply t1 (:var g2)) (:icon 1)))
      (:goto 1540))
     (:line 1100
      (:print (:scon "goal scored by: ") (:apply b$ (:var g)) :semi))
     (:line 1110 (:if (:binary :eq (:var g1) (:icon 0))) (:goto 1130))
     (:line 1115 (:if (:binary :eq (:var g2) (:icon 0))) (:goto 1140))
     (:line 1120
      (:print (:scon " assisted by: ") (:apply b$ (:var g1))
       (:scon " and ") (:apply b$ (:var g2)))
      (:goto 1150))
     (:line 1130 (:print (:scon " unassisted")) (:goto 1150))
     (:line 1140
      (:print (:scon " assisted by: ") (:apply b$ (:var g1)))
      (:goto 1150))
     (:line 1150
      (:let (:apply t2 (:var g))
       (:binary :plus (:apply t2 (:var g)) (:icon 1)))
      (:let (:apply t3 (:var g1))
       (:binary :plus (:apply t3 (:var g1)) (:icon 1)))
      (:let (:apply t3 (:var g2))
       (:binary :plus (:apply t3 (:var g2)) (:icon 1)))
      (:goto 1540))
     (:line 1160
      (:let (:var a2)
       (:binary :plus
        (:apply int
         (:binary :mul (:icon 100) (:apply rnd (:var x))))
        (:icon 1)))
      (:if
       (:binary :eq (:apply int (:binary :div (:var a2) (:icon 4)))
        (:binary :div (:var a2) (:icon 4))))
      (:goto 1170))
     (:line 1165 (:goto 1200)) (:line 1170 (:on-goto (:var c) (1180 1190)))
     (:line 1180
      (:print (:scon "save ") (:apply b$ (:icon 6)) (:scon " --  rebound"))
      (:goto 940))
     (:line 1190
      (:print (:scon "save ") (:apply a$ (:icon 6))
       (:scon " --  follow up"))
      (:goto 940))
     (:line 1200
      (:let (:var s1)
       (:binary :plus
        (:apply int (:binary :mul (:icon 6) (:apply rnd (:var x))))
        (:icon 1))))
     (:line 1210 (:on-goto (:var c) (1220 1380)))
     (:line 1220 (:on-goto (:var s1) (1230 1260 1290 1300 1330 1350)))
     (:line 1230
      (:print (:scon "kick save and a beauty by ") (:apply b$ (:icon 6))))
     (:line 1240 (:print (:scon "cleared out by ") (:apply b$ (:icon 3))))
     (:line 1250 (:goto 260))
     (:line 1260
      (:print (:scon "what a spectacular glove save by ")
       (:apply b$ (:icon 6))))
     (:line 1270
      (:print (:scon "and ") (:apply b$ (:icon 6))
       (:scon " golfs it into the crowd")))
     (:line 1280 (:goto 1540))
     (:line 1290
      (:print (:scon "skate save on a low steamer by ")
       (:apply b$ (:icon 6)))
      (:goto 260))
     (:line 1300
      (:print (:scon "pad save by ") (:apply b$ (:icon 6))
       (:scon " off the stick")))
     (:line 1310
      (:print (:scon "of ") (:apply a$ (:var g)) (:scon " and ")
       (:apply b$ (:icon 6)) (:scon " covers up")))
     (:line 1320 (:goto 1540))
     (:line 1330
      (:print (:scon "whistles one over the head of ")
       (:apply b$ (:icon 6))))
     (:line 1340 (:goto 260))
     (:line 1350
      (:print (:apply b$ (:icon 6))
       (:scon " makes a face save!! and he is hurt")))
     (:line 1360
      (:print (:scon "the defenseman ") (:apply b$ (:icon 5))
       (:scon " covers up for him")))
     (:line 1370 (:goto 1540))
     (:line 1380 (:on-goto (:var s1) (1390 1410 1440 1470 1490 1520)))
     (:line 1390 (:print (:scon "stick save by ") (:apply a$ (:icon 6))))
     (:line 1400
      (:print (:scon "and cleared out by ") (:apply a$ (:icon 4)))
      (:goto 260))
     (:line 1410
      (:print (:scon "oh my god!! ") (:apply b$ (:var g))
       (:scon " rattles one off the post")))
     (:line 1420
      (:print (:scon "to the right of ") (:apply a$ (:icon 6))
       (:scon " and ") (:apply a$ (:icon 6)) (:scon " covers ") :semi))
     (:line 1430 (:print (:scon "on the loose puck!")) (:goto 1540))
     (:line 1440 (:print (:scon "skate save by ") (:apply a$ (:icon 6))))
     (:line 1450
      (:print (:apply a$ (:icon 6))
       (:scon " whacks the loose puck into the stands")))
     (:line 1460 (:goto 1540))
     (:line 1470
      (:print (:scon "stick save by ") (:apply a$ (:icon 6))
       (:scon " and he clears it out himself")))
     (:line 1480 (:goto 260))
     (:line 1490 (:print (:scon "kicked out by ") (:apply a$ (:icon 6))))
     (:line 1500 (:print (:scon "and it rebounds all the way to center ice")))
     (:line 1510 (:goto 260))
     (:line 1520
      (:print (:scon "glove save ") (:apply a$ (:icon 6))
       (:scon " and he hangs on")))
     (:line 1530 (:goto 1540))
     (:line 1540 (:next l) (:for n (:icon 1) (:icon 30) nil)
      (:print (:apply chr$ (:icon 7)) :semi) (:next n)
      (:print (:scon "that's the siren")))
     (:line 1550 (:print)
      (:print (:apply tab (:icon 15)) :semi (:scon "final score:")))
     (:line 1560
      (:if (:binary :gt (:apply h (:icon 8)) (:apply h (:icon 9))))
      (:goto 1580))
     (:line 1570
      (:print (:apply a$ (:icon 7)) (:scon ":") :semi
       (:apply h (:icon 9)) :comma (:apply b$ (:icon 7)) (:scon ":")
       :semi (:apply h (:icon 8)))
      (:goto 1590))
     (:line 1580
      (:print (:apply b$ (:icon 7)) (:scon ":") :semi
       (:apply h (:icon 8)) :comma (:apply a$ (:icon 7)) (:scon ":")
       :semi (:apply h (:icon 9))))
     (:line 1590 (:print)
      (:print (:apply tab (:icon 10)) :semi (:scon "scoring summary"))
      (:print))
     (:line 1600
      (:print (:apply tab (:icon 25)) :semi (:apply a$ (:icon 7))))
     (:line 1610
      (:print (:apply tab (:icon 5)) :semi (:scon "name") :semi
       (:apply tab (:icon 20)) :semi (:scon "goals") :semi
       (:apply tab (:icon 35)) :semi (:scon "assists")))
     (:line 1620
      (:print (:apply tab (:icon 5)) :semi (:scon "----") :semi
       (:apply tab (:icon 20)) :semi (:scon "-----") :semi
       (:apply tab (:icon 35)) :semi (:scon "-------")))
     (:line 1630 (:for i (:icon 1) (:icon 5) nil)
      (:print (:apply tab (:icon 5)) :semi (:apply a$ (:var i))
       :semi (:apply tab (:icon 21)) :semi (:apply t (:var i))
       :semi (:apply tab (:icon 36)) :semi (:apply t1 (:var i))))
     (:line 1640 (:next i) (:print))
     (:line 1650
      (:print (:apply tab (:icon 25)) :semi (:apply b$ (:icon 7))))
     (:line 1660
      (:print (:apply tab (:icon 5)) :semi (:scon "name") :semi
       (:apply tab (:icon 20)) :semi (:scon "goals") :semi
       (:apply tab (:icon 35)) :semi (:scon "assists")))
     (:line 1670
      (:print (:apply tab (:icon 5)) :semi (:scon "----") :semi
       (:apply tab (:icon 20)) :semi (:scon "-----") :semi
       (:apply tab (:icon 35)) :semi (:scon "-------")))
     (:line 1680 (:for t (:icon 1) (:icon 5) nil)
      (:print (:apply tab (:icon 5)) :semi (:apply b$ (:var t))
       :semi (:apply tab (:icon 21)) :semi (:apply t2 (:var t))
       :semi (:apply tab (:icon 36)) :semi (:apply t3 (:var t))))
     (:line 1690 (:next t) (:print))
     (:line 1700 (:print (:scon "shots on net"))
      (:print (:apply a$ (:icon 7)) (:scon ":") :semi (:var s2))
      (:print (:apply b$ (:icon 7)) (:scon ":") :semi (:var s3)))
     (:line 1710 (:end))
     (:line 1720 (:print) (:print (:scon "this is a simulated hockey game.")))
     (:line 1730 (:print (:scon "question     response")))
     (:line 1740
      (:print (:scon "pass         type in the number of passes you would")))
     (:line 1750 (:print (:scon "             like to make, from 0 to 3.")))
     (:line 1760
      (:print
       (:scon "shot         type the number corresponding to the shot")))
     (:line 1770 (:print (:scon "             you want to make.  enter:")))
     (:line 1780 (:print (:scon "             1 for a slapshot")))
     (:line 1790 (:print (:scon "             2 for a wristshot")))
     (:line 1800 (:print (:scon "             3 for a backhand")))
     (:line 1810 (:print (:scon "             4 for a snap shot")))
     (:line 1820
      (:print (:scon "area         type in the number corresponding to")))
     (:line 1830
      (:print (:scon "             the area you are aiming at.  enter:")))
     (:line 1840 (:print (:scon "             1 for upper left hand corner")))
     (:line 1850 (:print (:scon "             2 for upper right hand corner")))
     (:line 1860 (:print (:scon "             3 for lower left hand corner")))
     (:line 1870 (:print (:scon "             4 for lower right hand corner")))
     (:line 1880 (:print))
     (:line 1890
      (:print
       (:scon "at the start of the game, you will be asked for the names")))
     (:line 1900
      (:print (:scon "of your players.  they are entered in the order: ")))
     (:line 1910
      (:print (:scon "left wing, center, right wing, left defense,")))
     (:line 1920
      (:print
       (:scon "right defense, goalkeeper.  any other input required will")))
     (:line 1930 (:print (:scon "have explanatory instructions.")))
     (:line 1940 (:goto 90)) (:line 1950 (:end)))))



(defvar *horserace*
  '(((:line 100 (:print (:apply tab (:icon 31)) :semi (:scon "horserace")))
     (:line 110
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 120 (:print) (:print) (:print))
     (:line 210 (:dim ((:dimd s (:icon 8)))))
     (:line 220 (:print (:scon "welcome to south portland high racetrack")))
     (:line 230
      (:print (:scon "                      ...owned by laurie chevalier")))
     (:line 240 (:print (:scon "do you want directions") :semi))
     (:line 250 (:input nil ((:var x$))))
     (:line 260 (:if (:binary :eq (:var x$) (:scon "no"))) (:goto 320))
     (:line 270
      (:print
       (:scon "up to 10 may play.  a table of odds will be printed.  you")))
     (:line 280
      (:print (:scon "may bet any + amount under 100000 on one horse.")))
     (:line 290
      (:print (:scon "during the race, a horse will be shown by its")))
     (:line 300 (:print (:scon "number.  the horses race down the paper!")))
     (:line 310 (:print))
     (:line 320 (:print (:scon "how many want to bet") :semi))
     (:line 330 (:input nil ((:var c))))
     (:line 340 (:print (:scon "when ? appears,type name")))
     (:line 350 (:for a (:icon 1) (:var c) nil))
     (:line 360 (:input nil ((:apply w$ (:var a)))))
     (:line 370 (:next a)) (:line 380 (:print))
     (:line 390
      (:print (:scon "horse") :comma :comma (:scon "number") :comma
       (:scon "odds")))
     (:line 400 (:print))
     (:line 410 (:for i (:icon 1) (:icon 8) nil)
      (:let (:apply s (:var i)) (:icon 0)) (:next i))
     (:line 420 (:let (:var r) (:icon 0)))
     (:line 430 (:for a (:icon 1) (:icon 8) nil))
     (:line 440
      (:let (:apply d (:var a))
       (:apply int
        (:binary :plus (:binary :mul (:icon 10) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 450 (:next a)) (:line 460 (:for a (:icon 1) (:icon 8) nil))
     (:line 470
      (:let (:var r)
       (:binary :plus (:var r) (:apply d (:var a)))))
     (:line 480 (:next a))
     (:line 490 (:let (:apply v$ (:icon 1)) (:scon "joe maw")))
     (:line 500 (:let (:apply v$ (:icon 2)) (:scon "l.b.j.")))
     (:line 510 (:let (:apply v$ (:icon 3)) (:scon "mr.washburn")))
     (:line 520 (:let (:apply v$ (:icon 4)) (:scon "miss karen")))
     (:line 530 (:let (:apply v$ (:icon 5)) (:scon "jolly")))
     (:line 540 (:let (:apply v$ (:icon 6)) (:scon "horse")))
     (:line 550 (:let (:apply v$ (:icon 7)) (:scon "jelly do not")))
     (:line 560 (:let (:apply v$ (:icon 8)) (:scon "midnight")))
     (:line 570 (:for n (:icon 1) (:icon 8) nil))
     (:line 580
      (:print (:apply v$ (:var n)) :comma :comma (:var n) :comma
       (:binary :div (:var r) (:apply d (:var n))) :semi
       (:scon ":1")))
     (:line 590 (:next n))
     (:line 600
      (:print (:scon "--------------------------------------------------")))
     (:line 610 (:print (:scon "place your bets...horse # then amount")))
     (:line 620 (:for j (:icon 1) (:var c) nil))
     (:line 630 (:print (:apply w$ (:var j)) :semi))
     (:line 640
      (:input nil ((:apply q (:var j)) (:apply p (:var j)))))
     (:line 650 (:if (:binary :lt (:apply p (:var j)) (:icon 1)))
      (:goto 670))
     (:line 660 (:if (:binary :lt (:apply p (:var j)) (:icon 100000)))
      (:goto 690))
     (:line 670 (:print (:scon "  you can't do that!")))
     (:line 680 (:goto 630)) (:line 690 (:next j)) (:line 700 (:print))
     (:line 710 (:print (:scon "1 2 3 4 5 6 7 8")))
     (:line 720 (:print (:scon "xxxxstartxxxx")))
     (:line 730 (:for i (:icon 1) (:icon 8) nil))
     (:line 740 (:let (:var m) (:var i)))
     (:line 750 (:let (:apply m (:var i)) (:var m)))
     (:line 760
      (:let (:apply y (:apply m (:var i)))
       (:apply int
        (:binary :plus (:binary :mul (:icon 100) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 770
      (:if (:binary :lt (:apply y (:apply m (:var i))) (:icon 10)))
      (:goto 860))
     (:line 780
      (:let (:var s)
       (:apply int
        (:binary :plus (:binary :div (:var r) (:apply d (:var i)))
         (:fcon 0.5)))))
     (:line 790
      (:if
       (:binary :lt (:apply y (:apply m (:var i)))
        (:binary :plus (:var s) (:icon 17))))
      (:goto 880))
     (:line 800
      (:if
       (:binary :lt (:apply y (:apply m (:var i)))
        (:binary :plus (:var s) (:icon 37))))
      (:goto 900))
     (:line 810
      (:if
       (:binary :lt (:apply y (:apply m (:var i)))
        (:binary :plus (:var s) (:icon 57))))
      (:goto 920))
     (:line 820
      (:if
       (:binary :lt (:apply y (:apply m (:var i)))
        (:binary :plus (:icon 77) (:var s))))
      (:goto 940))
     (:line 830
      (:if
       (:binary :lt (:apply y (:apply m (:var i)))
        (:binary :plus (:var s) (:icon 92))))
      (:goto 960))
     (:line 840 (:let (:apply y (:apply m (:var i))) (:icon 7)))
     (:line 850 (:goto 970))
     (:line 860 (:let (:apply y (:apply m (:var i))) (:icon 1)))
     (:line 870 (:goto 970))
     (:line 880 (:let (:apply y (:apply m (:var i))) (:icon 2)))
     (:line 890 (:goto 970))
     (:line 900 (:let (:apply y (:apply m (:var i))) (:icon 3)))
     (:line 910 (:goto 970))
     (:line 920 (:let (:apply y (:apply m (:var i))) (:icon 4)))
     (:line 930 (:goto 970))
     (:line 940 (:let (:apply y (:apply m (:var i))) (:icon 5)))
     (:line 950 (:goto 970))
     (:line 960 (:let (:apply y (:apply m (:var i))) (:icon 6)))
     (:line 970 (:next i)) (:line 980 (:let (:var m) (:var i)))
     (:line 990 (:for i (:icon 1) (:icon 8) nil))
     (:line 1000
      (:let (:apply s (:apply m (:var i)))
       (:binary :plus (:apply s (:apply m (:var i)))
        (:apply y (:apply m (:var i))))))
     (:line 1010 (:next i)) (:line 1020 (:let (:var i) (:icon 1)))
     (:line 1030 (:for l (:icon 1) (:icon 8) nil))
     (:line 1040
      (:for i (:icon 1) (:binary :minus (:icon 8) (:var l)) nil))
     (:line 1050
      (:if
       (:binary :lt (:apply s (:apply m (:var i)))
        (:apply s (:apply m (:binary :plus (:var i) (:icon 1))))))
      (:goto 1090))
     (:line 1060 (:let (:var h) (:apply m (:var i))))
     (:line 1070
      (:let (:apply m (:var i))
       (:apply m (:binary :plus (:var i) (:icon 1)))))
     (:line 1080
      (:let (:apply m (:binary :plus (:var i) (:icon 1)))
       (:var h)))
     (:line 1090 (:next i)) (:line 1100 (:next l))
     (:line 1110 (:let (:var t) (:apply s (:apply m (:icon 8)))))
     (:line 1120 (:for i (:icon 1) (:icon 8) nil))
     (:line 1130
      (:let (:var b)
       (:binary :minus (:apply s (:apply m (:var i)))
        (:apply s
         (:apply m (:binary :minus (:var i) (:icon 1)))))))
     (:line 1140 (:if (:binary :eq (:var b) (:icon 0))) (:goto 1190))
     (:line 1150 (:for a (:icon 1) (:var b) nil)) (:line 1160 (:print))
     (:line 1170
      (:if (:binary :gt (:apply s (:apply m (:var i))) (:icon 27)))
      (:goto 1240))
     (:line 1180 (:next a))
     (:line 1190 (:print (:apply m (:var i)) :semi))
     (:line 1200 (:next i))
     (:line 1210
      (:for a (:icon 1) (:binary :minus (:icon 28) (:var t)) nil))
     (:line 1220 (:print)) (:line 1230 (:next a))
     (:line 1240 (:print (:scon "xxxxfinishxxxx") :semi)) (:line 1242 (:print))
     (:line 1243 (:print))
     (:line 1244
      (:print (:scon "---------------------------------------------")))
     (:line 1245 (:print))
     (:line 1250 (:if (:binary :lt (:var t) (:icon 28))) (:goto 720))
     (:line 1270 (:print (:scon "the race results are:")))
     (:line 1272 (:let (:var z9) (:icon 1)))
     (:line 1280 (:for i (:icon 8) (:icon 1) (:uminus (:icon 1))))
     (:line 1290 (:let (:var f) (:apply m (:var i))))
     (:line 1300 (:print))
     (:line 1310
      (:print (:var z9) :semi (:scon "place horse no.") :semi (:var f)
       :comma (:scon "at ") :semi
       (:binary :div (:var r) (:apply d (:var f))) :semi
       (:scon ":1")))
     (:line 1312 (:let (:var z9) (:binary :plus (:var z9) (:icon 1))))
     (:line 1320 (:next i))
     (:line 1330 (:for j (:icon 1) (:var c) nil))
     (:line 1340
      (:if (:binary :ne (:apply q (:var j)) (:apply m (:icon 8))))
      (:goto 1370))
     (:line 1350 (:let (:var n) (:apply q (:var j))))
     (:line 1355 (:print))
     (:line 1360
      (:print (:apply w$ (:var j)) :semi (:scon " wins $") :semi
       (:binary :mul (:binary :div (:var r) (:apply d (:var n)))
        (:apply p (:var j)))))
     (:line 1370 (:next j))
     (:line 1372 (:print (:scon "do you want to bet on the next race ?")))
     (:line 1374 (:input "yes or no" ((:var o$))))
     (:line 1376 (:if (:binary :eq (:var o$) (:scon "yes"))) (:goto 380))
     (:line 1380 (:end)))))



(defvar *hurkle*
  '(((:line 10 (:print (:apply tab (:icon 33)) :semi (:scon "hurkle")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print))
     (:line 110 (:let (:var n) (:icon 5)))
     (:line 120 (:let (:var g) (:icon 10))) (:line 210 (:print))
     (:line 220
      (:print (:scon "a hurkle is hiding on a") :semi (:var g) :semi
       (:scon "by") :semi (:var g) :semi (:scon "grid. homebase")))
     (:line 230
      (:print (:scon "on the grid is point 0,0 in the southwest corner,")))
     (:line 235
      (:print (:scon "and any point on the grid is designated by a")))
     (:line 240
      (:print (:scon "pair of whole numbers seperated by a comma. the first")))
     (:line 245
      (:print
       (:scon "number is the horizontal position and the second number")))
     (:line 246 (:print (:scon "is the vertical position. you must try to")))
     (:line 250
      (:print (:scon "guess the hurkle's gridpoint. you get") :semi
       (:var n) :semi (:scon "tries.")))
     (:line 260
      (:print (:scon "after each try, i will tell you the approximate")))
     (:line 270 (:print (:scon "direction to go to look for the hurkle.")))
     (:line 280 (:print))
     (:line 285
      (:let (:var a)
       (:apply int
        (:binary :mul (:var g) (:apply rnd (:icon 1))))))
     (:line 286
      (:let (:var b)
       (:apply int
        (:binary :mul (:var g) (:apply rnd (:icon 1))))))
     (:line 310 (:for k (:icon 1) (:var n) nil))
     (:line 320 (:print (:scon "guess #") :semi (:var k) :semi))
     (:line 330 (:input nil ((:var x) (:var y))))
     (:line 340
      (:if
       (:binary :eq
        (:binary :plus
         (:apply abs (:binary :minus (:var x) (:var a)))
         (:apply abs (:binary :minus (:var y) (:var b))))
        (:icon 0)))
      (:goto 500))
     (:line 350 (:rem " print info
")) (:line 360 (:gosub 610))
     (:line 370 (:print)) (:line 380 (:next k)) (:line 410 (:print))
     (:line 420
      (:print (:scon "sorry, that's") :semi (:var n) :semi
       (:scon "guesses.")))
     (:line 430
      (:print (:scon "the hurkle is at ") :semi (:var a) :semi (:scon ",")
       :semi (:var b)))
     (:line 440 (:print))
     (:line 450 (:print (:scon "let's play again, hurkle is hiding.")))
     (:line 460 (:print)) (:line 470 (:goto 285)) (:line 500 (:rem "
"))
     (:line 510 (:print))
     (:line 520
      (:print (:scon "you found him in") :semi (:var k) :semi
       (:scon "guesses!")))
     (:line 540 (:goto 440)) (:line 610 (:print (:scon "go ") :semi))
     (:line 620 (:if (:binary :eq (:var y) (:var b))) (:goto 670))
     (:line 630 (:if (:binary :lt (:var y) (:var b))) (:goto 660))
     (:line 640 (:print (:scon "south") :semi)) (:line 650 (:goto 670))
     (:line 660 (:print (:scon "north") :semi))
     (:line 670 (:if (:binary :eq (:var x) (:var a))) (:goto 720))
     (:line 680 (:if (:binary :lt (:var x) (:var a))) (:goto 710))
     (:line 690 (:print (:scon "west") :semi)) (:line 700 (:goto 720))
     (:line 710 (:print (:scon "east") :semi)) (:line 720 (:print))
     (:line 730 (:return)) (:line 999 (:end)))))



(defvar *kinema*
  '(((:line 10 (:print (:apply tab (:icon 33)) :semi (:scon "kinema")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print)) (:line 100 (:print))
     (:line 105 (:print)) (:line 106 (:let (:var q) (:icon 0)))
     (:line 110
      (:let (:var v)
       (:binary :plus (:icon 5)
        (:apply int
         (:binary :mul (:icon 35) (:apply rnd (:icon 1)))))))
     (:line 111
      (:print (:scon "a ball is thrown upwards at") :semi (:var v) :semi
       (:scon "meters per second.")))
     (:line 112 (:print))
     (:line 115
      (:let (:var a)
       (:binary :mul (:fcon 0.049999997) (:exp (:var v) (:icon 2)))))
     (:line 116 (:print (:scon "how high will it go (in meters)") :semi))
     (:line 117 (:gosub 500))
     (:line 120 (:let (:var a) (:binary :div (:var v) (:icon 5))))
     (:line 122
      (:print (:scon "how long until it returns (in seconds)") :semi))
     (:line 124 (:gosub 500))
     (:line 130
      (:let (:var t)
       (:binary :plus (:icon 1)
        (:binary :div
         (:apply int
          (:binary :mul (:binary :mul (:icon 2) (:var v))
           (:apply rnd (:icon 1))))
         (:icon 10)))))
     (:line 132
      (:let (:var a)
       (:binary :minus (:var v) (:binary :mul (:icon 10) (:var t)))))
     (:line 134
      (:print (:scon "what will its velocity be after") :semi (:var t)
       :semi (:scon "seconds") :semi))
     (:line 136 (:gosub 500)) (:line 140 (:print))
     (:line 150 (:print (:var q) :semi (:scon "right out of 3.") :semi))
     (:line 160 (:if (:binary :lt (:var q) (:icon 2))) (:goto 100))
     (:line 170 (:print (:scon "  not bad."))) (:line 180 (:goto 100))
     (:line 500 (:input nil ((:var g))))
     (:line 502
      (:if
       (:binary :lt
        (:apply abs
         (:binary :div (:binary :minus (:var g) (:var a))
          (:var a)))
        (:fcon 0.14999999)))
      (:goto 510))
     (:line 504 (:print (:scon "not even close...."))) (:line 506 (:goto 512))
     (:line 510 (:print (:scon "close enough.")))
     (:line 511 (:let (:var q) (:binary :plus (:var q) (:icon 1))))
     (:line 512 (:print (:scon "correct answer is ") :semi (:var a)))
     (:line 520 (:print)) (:line 530 (:return)) (:line 999 (:end)))))



(defvar *king*
  '(((:line 1 (:print (:apply tab (:icon 34)) :semi (:scon "king")))
     (:line 2
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 3 (:print) (:print) (:print))
     (:line 4 (:print (:scon "do you want instructions") :semi))
     (:line 5 (:input nil ((:var z$))))
     (:line 6 (:let (:var n5) (:icon 8)))
     (:line 10
      (:if
       (:binary :eq (:apply left$ (:var z$) (:icon 1)) (:scon "n")))
      (:goto 47))
     (:line 11 (:if (:binary :eq (:var z$) (:scon "again"))) (:goto 1960))
     (:line 12 (:print) (:print) (:print))
     (:line 20
      (:print
       (:scon "congratulations! you've just been elected premier of setats")))
     (:line 22
      (:print
       (:scon "detinu, a small communist island 30 by 70 miles long. your")))
     (:line 24
      (:print
       (:scon "job is to decide upon the contry's budget and distribute")))
     (:line 26
      (:print (:scon "money to your countrymen from the communal treasury.")))
     (:line 28
      (:print
       (:scon "the money system is rallods, and each person needs 100")))
     (:line 30
      (:print
       (:scon "rallods per year to survive. your country's income comes")))
     (:line 32
      (:print
       (:scon "from farm produce and tourists visiting your magnificent")))
     (:line 34
      (:print
       (:scon "forests, hunting, fishing, etc. half your land is farm land")))
     (:line 36
      (:print
       (:scon "which also has an excellent mineral content and may be sold")))
     (:line 38
      (:print
       (:scon "to foreign industry (strip mining) who import and support")))
     (:line 40
      (:print
       (:scon "their own workers. crops cost between 10 and 15 rallods per")))
     (:line 42 (:print (:scon "square mile to plant.")))
     (:line 44
      (:print (:scon "your goal is to complete your") :semi (:var n5) :semi
       (:scon "year term of office.")))
     (:line 46 (:print (:scon "good luck!"))) (:line 47 (:print))
     (:line 50
      (:let (:var a)
       (:apply int
        (:binary :minus
         (:binary :plus (:icon 60000)
          (:binary :mul (:icon 1000) (:apply rnd (:icon 1))))
         (:binary :mul (:icon 1000) (:apply rnd (:icon 1)))))))
     (:line 55
      (:let (:var b)
       (:apply int
        (:binary :minus
         (:binary :plus (:icon 500)
          (:binary :mul (:icon 10) (:apply rnd (:icon 1))))
         (:binary :mul (:icon 10) (:apply rnd (:icon 1)))))))
     (:line 65 (:let (:var d) (:icon 2000)))
     (:line 100
      (:let (:var w)
       (:apply int
        (:binary :plus (:binary :mul (:icon 10) (:apply rnd (:icon 1)))
         (:icon 95)))))
     (:line 102 (:print))
     (:line 105
      (:print (:scon "you now have ") :semi (:var a) :semi
       (:scon " rallods in the treasury.")))
     (:line 110 (:print (:apply int (:var b)) :semi)
      (:print (:scon "countrymen, ") :semi))
     (:line 115
      (:let (:var v9)
       (:apply int
        (:binary :plus
         (:binary :mul (:binary :div (:apply rnd (:icon 1)) (:icon 2))
          (:icon 10))
         (:icon 10)))))
     (:line 120 (:if (:binary :eq (:var c) (:icon 0))) (:goto 140))
     (:line 130
      (:print (:apply int (:var c)) :semi (:scon "foreign workers, ")
       :semi))
     (:line 140
      (:print (:scon "and") :semi (:apply int (:var d)) :semi
       (:scon "sq. miles of land.")))
     (:line 150
      (:print (:scon "this year industry will buy land for") :semi (:var w)
       :semi))
     (:line 152 (:print (:scon "rallods per square mile.")))
     (:line 155
      (:print (:scon "land currently costs") :semi (:var v9) :semi
       (:scon "rallods per square mile to plant.")))
     (:line 162 (:print))
     (:line 200
      (:print (:scon "how many square miles do you wish to sell to industry")
       :semi))
     (:line 210 (:input nil ((:var h))))
     (:line 215 (:if (:binary :lt (:var h) (:icon 0))) (:goto 200))
     (:line 220
      (:if
       (:binary :le (:var h) (:binary :minus (:var d) (:icon 1000))))
      (:goto 300))
     (:line 230
      (:print (:scon "***  think again. you only have") :semi
       (:binary :minus (:var d) (:icon 1000)) :semi
       (:scon "square miles of farm land.")))
     (:line 240 (:if (:binary :ne (:var x) (:icon 0))) (:goto 200))
     (:line 250 (:print)
      (:print (:scon "(foreign industry will only buy farm land because")))
     (:line 260
      (:print
       (:scon "forest land is uneconomical to strip mine due to trees,")))
     (:line 270 (:print (:scon "thicker top soil, etc.)")))
     (:line 280 (:let (:var x) (:icon 1))) (:line 299 (:goto 200))
     (:line 300
      (:let (:var d)
       (:apply int (:binary :minus (:var d) (:var h)))))
     (:line 310
      (:let (:var a)
       (:apply int
        (:binary :plus (:var a)
         (:binary :mul (:var h) (:var w))))))
     (:line 320
      (:print
       (:scon "how many rallods will you distribute among your countrymen")
       :semi))
     (:line 340 (:input nil ((:var i))))
     (:line 342 (:if (:binary :lt (:var i) (:icon 0))) (:goto 320))
     (:line 350 (:if (:binary :lt (:var i) (:var a))) (:goto 400))
     (:line 360 (:if (:binary :eq (:var i) (:var a))) (:goto 380))
     (:line 370
      (:print (:scon "   think again. you've only") :semi (:var a) :semi
       (:scon " rallods in the treasury")))
     (:line 375 (:goto 320)) (:line 380 (:let (:var j) (:icon 0)))
     (:line 390 (:let (:var k) (:icon 0)))
     (:line 395 (:let (:var a) (:icon 0))) (:line 399 (:goto 1000))
     (:line 400
      (:let (:var a)
       (:apply int (:binary :minus (:var a) (:var i)))))
     (:line 410
      (:print (:scon "how many square miles do you wish to plant") :semi))
     (:line 420 (:input nil ((:var j))))
     (:line 421 (:if (:binary :lt (:var j) (:icon 0))) (:goto 410))
     (:line 422
      (:if (:binary :le (:var j) (:binary :mul (:var b) (:icon 2))))
      (:goto 426))
     (:line 423
      (:print
       (:scon "   sorry, but each countryman can only plant 2 sq. miles.")))
     (:line 424 (:goto 410))
     (:line 426
      (:if
       (:binary :le (:var j) (:binary :minus (:var d) (:icon 1000))))
      (:goto 430))
     (:line 427
      (:print (:scon "   sorry, but you've only") :semi
       (:binary :minus (:var d) (:icon 1000)) :semi
       (:scon "sq. miles of farm land.")))
     (:line 428 (:goto 410))
     (:line 430
      (:let (:var u1)
       (:apply int (:binary :mul (:var j) (:var v9)))))
     (:line 435 (:if (:binary :lt (:var u1) (:var a))) (:goto 500))
     (:line 440 (:if (:binary :eq (:var u1) (:var a))) (:goto 490))
     (:line 450
      (:print (:scon "   think again. you've only") :semi (:var a) :semi
       (:scon " rallods left in the treasury.")))
     (:line 460 (:goto 410)) (:line 490 (:let (:var k) (:icon 0)))
     (:line 495 (:let (:var a) (:icon 0))) (:line 499 (:goto 1000))
     (:line 500
      (:let (:var a) (:binary :minus (:var a) (:var u1))))
     (:line 510
      (:print
       (:scon "how many rallods do you wish to spend on pollution control")
       :semi))
     (:line 520 (:input nil ((:var k))))
     (:line 522 (:if (:binary :lt (:var k) (:icon 0))) (:goto 510))
     (:line 530 (:if (:binary :le (:var k) (:var a))) (:goto 1000))
     (:line 540
      (:print (:scon "   think again. you only have ") :semi (:var a) :semi
       (:scon " rallods remaining.")))
     (:line 550 (:goto 510))
     (:line 600 (:if (:binary :ne (:var h) (:icon 0))) (:goto 1002))
     (:line 602 (:if (:binary :ne (:var i) (:icon 0))) (:goto 1002))
     (:line 604 (:if (:binary :ne (:var j) (:icon 0))) (:goto 1002))
     (:line 606 (:if (:binary :ne (:var k) (:icon 0))) (:goto 1002))
     (:line 609 (:print)) (:line 612 (:print (:scon "goodbye.")))
     (:line 614
      (:print
       (:scon "(if you wish to continue this game at a later date, answer")))
     (:line 616
      (:print
       (:scon "'again' when asked if you want instructions at the start")))
     (:line 617 (:print (:scon "of the game)."))) (:line 618 (:stop))
     (:line 1000 (:goto 600)) (:line 1002 (:print)) (:line 1003 (:print))
     (:line 1010
      (:let (:var a)
       (:apply int (:binary :minus (:var a) (:var k)))))
     (:line 1020 (:let (:var a4) (:var a)))
     (:line 1100
      (:if
       (:binary :ge
        (:apply int
         (:binary :minus (:binary :div (:var i) (:icon 100)) (:var b)))
        (:icon 0)))
      (:goto 1120))
     (:line 1105
      (:if (:binary :lt (:binary :div (:var i) (:icon 100)) (:icon 50)))
      (:goto 1700))
     (:line 1110
      (:print
       (:apply int
        (:binary :minus (:var b) (:binary :div (:var i) (:icon 100))))
       :semi (:scon "countrymen died of starvation")))
     (:line 1120
      (:let (:var f1)
       (:apply int
        (:binary :mul (:apply rnd (:icon 1))
         (:binary :minus (:icon 2000) (:var d))))))
     (:line 1122 (:if (:binary :lt (:var k) (:icon 25))) (:goto 1130))
     (:line 1125
      (:let (:var f1)
       (:apply int
        (:binary :div (:var f1) (:binary :div (:var k) (:icon 25))))))
     (:line 1130 (:if (:binary :le (:var f1) (:icon 0))) (:goto 1150))
     (:line 1140
      (:print (:var f1) :semi
       (:scon "countrymen died of carbon-monoxide and dust inhalation")))
     (:line 1150
      (:if
       (:binary :lt
        (:apply int
         (:binary :minus (:binary :div (:var i) (:icon 100)) (:var b)))
        (:icon 0)))
      (:goto 1170))
     (:line 1160 (:if (:binary :gt (:var f1) (:icon 0))) (:goto 1180))
     (:line 1165 (:goto 1200))
     (:line 1170
      (:print (:scon "   you were forced to spend") :semi
       (:apply int
        (:binary :mul
         (:binary :plus (:var f1)
          (:binary :minus (:var b)
           (:binary :div (:var i) (:icon 100))))
         (:icon 9)))
       :semi))
     (:line 1172 (:print (:scon "rallods on funeral expenses")))
     (:line 1174
      (:let (:var b5)
       (:apply int
        (:binary :plus (:var f1)
         (:binary :minus (:var b)
          (:binary :div (:var i) (:icon 100)))))))
     (:line 1175
      (:let (:var a)
       (:apply int
        (:binary :minus (:var a)
         (:binary :mul
          (:binary :plus (:var f1)
           (:binary :minus (:var b)
            (:binary :div (:var i) (:icon 100))))
          (:icon 9))))))
     (:line 1176 (:goto 1185))
     (:line 1180
      (:print (:scon "   you were forced to spend ") :semi
       (:apply int (:binary :mul (:var f1) (:icon 9))) :semi
       (:scon "rallods on ") :semi))
     (:line 1181 (:print (:scon "funeral expenses.")))
     (:line 1182 (:let (:var b5) (:var f1)))
     (:line 1183
      (:let (:var a)
       (:apply int
        (:binary :minus (:var a) (:binary :mul (:var f1) (:icon 9))))))
     (:line 1185 (:if (:binary :ge (:var a) (:icon 0))) (:goto 1194))
     (:line 1187
      (:print
       (:scon "   insufficient reserves to cover cost - land was sold")))
     (:line 1189
      (:let (:var d)
       (:apply int
        (:binary :plus (:var d)
         (:binary :div (:var a) (:var w))))))
     (:line 1190 (:let (:var a) (:icon 0)))
     (:line 1194
      (:let (:var b)
       (:apply int (:binary :minus (:var b) (:var b5)))))
     (:line 1200 (:if (:binary :eq (:var h) (:icon 0))) (:goto 1250))
     (:line 1220
      (:let (:var c1)
       (:apply int
        (:binary :minus
         (:binary :plus (:var h)
          (:binary :mul (:apply rnd (:icon 1)) (:icon 10)))
         (:binary :mul (:apply rnd (:icon 1)) (:icon 20))))))
     (:line 1224 (:if (:binary :gt (:var c) (:icon 0))) (:goto 1230))
     (:line 1226 (:let (:var c1) (:binary :plus (:var c1) (:icon 20))))
     (:line 1230
      (:print (:var c1) :semi (:scon "workers came to the country and")
       :semi))
     (:line 1250
      (:let (:var p1)
       (:apply int
        (:binary :minus
         (:binary :minus
          (:binary :plus
           (:binary :div
            (:binary :minus (:binary :div (:var i) (:icon 100))
             (:var b))
            (:icon 10))
           (:binary :div (:var k) (:icon 25)))
          (:binary :div (:binary :minus (:icon 2000) (:var d)) (:icon 50)))
         (:binary :div (:var f1) (:icon 2))))))
     (:line 1255
      (:print (:apply abs (:var p1)) :semi (:scon "countrymen ")
       :semi))
     (:line 1260 (:if (:binary :lt (:var p1) (:icon 0))) (:goto 1275))
     (:line 1265 (:print (:scon "came to") :semi)) (:line 1270 (:goto 1280))
     (:line 1275 (:print (:scon "left") :semi))
     (:line 1280 (:print (:scon " the island.")))
     (:line 1290
      (:let (:var b)
       (:apply int (:binary :plus (:var b) (:var p1)))))
     (:line 1292
      (:let (:var c)
       (:apply int (:binary :plus (:var c) (:var c1)))))
     (:line 1305
      (:let (:var u2)
       (:apply int
        (:binary :mul (:binary :minus (:icon 2000) (:var d))
         (:binary :div (:binary :plus (:apply rnd (:icon 1)) (:fcon 1.5))
          (:icon 2))))))
     (:line 1310 (:if (:binary :eq (:var c) (:icon 0))) (:goto 1324))
     (:line 1320
      (:print (:scon "of ") :semi (:apply int (:var j)) :semi
       (:scon "sq. miles planted,") :semi))
     (:line 1324 (:if (:binary :gt (:var j) (:var u2))) (:goto 1330))
     (:line 1326 (:let (:var u2) (:var j)))
     (:line 1330
      (:print (:scon " you harvested ") :semi
       (:apply int (:binary :minus (:var j) (:var u2))) :semi
       (:scon "sq. miles of crops.")))
     (:line 1340 (:if (:binary :eq (:var u2) (:icon 0))) (:goto 1370))
     (:line 1344 (:if (:binary :ge (:var t1) (:icon 2))) (:goto 1370))
     (:line 1350 (:print (:scon "   (due to ") :semi))
     (:line 1355 (:if (:binary :eq (:var t1) (:icon 0))) (:goto 1365))
     (:line 1360 (:print (:scon "increased ") :semi))
     (:line 1365
      (:print (:scon "air and water pollution from foreign industry.)")))
     (:line 1370
      (:let (:var q)
       (:apply int
        (:binary :mul (:binary :minus (:var j) (:var u2))
         (:binary :div (:var w) (:icon 2))))))
     (:line 1380
      (:print (:scon "making") :semi (:apply int (:var q)) :semi
       (:scon "rallods.")))
     (:line 1390
      (:let (:var a)
       (:apply int (:binary :plus (:var a) (:var q)))))
     (:line 1400
      (:let (:var v1)
       (:apply int
        (:binary :plus
         (:binary :mul (:binary :minus (:var b) (:var p1)) (:icon 22))
         (:binary :mul (:apply rnd (:icon 1)) (:icon 500))))))
     (:line 1405
      (:let (:var v2)
       (:apply int
        (:binary :mul (:binary :minus (:icon 2000) (:var d)) (:icon 15)))))
     (:line 1410
      (:print (:scon " you made") :semi
       (:apply abs
        (:apply int (:binary :minus (:var v1) (:var v2))))
       :semi (:scon "rallods from tourist trade.")))
     (:line 1420 (:if (:binary :eq (:var v2) (:icon 0))) (:goto 1450))
     (:line 1425
      (:if
       (:binary :ge (:binary :minus (:var v1) (:var v2))
        (:var v3)))
      (:goto 1450))
     (:line 1430 (:print (:scon "   decrease because ") :semi))
     (:line 1435
      (:let (:var g1)
       (:binary :mul (:icon 10) (:apply rnd (:icon 1)))))
     (:line 1440 (:if (:binary :le (:var g1) (:icon 2))) (:goto 1460))
     (:line 1442 (:if (:binary :le (:var g1) (:icon 4))) (:goto 1465))
     (:line 1444 (:if (:binary :le (:var g1) (:icon 6))) (:goto 1470))
     (:line 1446 (:if (:binary :le (:var g1) (:icon 8))) (:goto 1475))
     (:line 1448 (:if (:binary :le (:var g1) (:icon 10))) (:goto 1480))
     (:line 1450
      (:let (:var v3)
       (:apply int (:binary :plus (:var a) (:var v3)))))
     (:line 1451
      (:let (:var a)
       (:apply int (:binary :plus (:var a) (:var v3)))))
     (:line 1452 (:goto 1500))
     (:line 1460
      (:print (:scon "fish population has dwindled due to water pollution.")))
     (:line 1462 (:goto 1450))
     (:line 1465
      (:print (:scon "air pollution is killing game bird population.")))
     (:line 1467 (:goto 1450))
     (:line 1470
      (:print (:scon "mineral baths are being ruined by water pollution.")))
     (:line 1472 (:goto 1450))
     (:line 1475
      (:print (:scon "unpleasant smog is discouraging sun bathers.")))
     (:line 1477 (:goto 1450))
     (:line 1480
      (:print (:scon "hotels are looking shabby due to smog grit.")))
     (:line 1482 (:goto 1450))
     (:line 1500 (:if (:binary :gt (:var b5) (:icon 200))) (:goto 1600))
     (:line 1505 (:if (:binary :lt (:var b) (:icon 343))) (:goto 1700))
     (:line 1510
      (:if (:binary :gt (:binary :div (:var a4) (:icon 100)) (:icon 5)))
      (:goto 1800))
     (:line 1515 (:if (:binary :gt (:var c) (:var b))) (:goto 1550))
     (:line 1520
      (:if
       (:binary :eq (:binary :minus (:var n5) (:icon 1)) (:var x5)))
      (:goto 1900))
     (:line 1545 (:goto 2000)) (:line 1550 (:print)) (:line 1552 (:print))
     (:line 1560
      (:print (:scon "the number of foreign workers has exceeded the number")))
     (:line 1562
      (:print (:scon "of countrymen. as a minority, they have revolted and")))
     (:line 1564 (:print (:scon "taken over the country.")))
     (:line 1570 (:if (:binary :le (:apply rnd (:icon 1)) (:fcon 0.5)))
      (:goto 1580))
     (:line 1574
      (:print (:scon "you have been thrown out of office and are now")))
     (:line 1576 (:print (:scon "residing in prison.")))
     (:line 1578 (:goto 1590))
     (:line 1580 (:print (:scon "you have been assassinated.")))
     (:line 1590 (:print)) (:line 1592 (:print)) (:line 1596 (:stop))
     (:line 1600 (:print)) (:line 1602 (:print))
     (:line 1610
      (:print (:var b5) :semi (:scon "countrymen died in one year!!!!!")))
     (:line 1615
      (:print (:scon "due to this extreme mismanagement, you have not only")))
     (:line 1620
      (:print (:scon "been impeached and thrown out of office, but you")))
     (:line 1622
      (:let (:var m6)
       (:apply int (:binary :mul (:apply rnd (:icon 1)) (:icon 10)))))
     (:line 1625 (:if (:binary :le (:var m6) (:icon 3))) (:goto 1670))
     (:line 1630 (:if (:binary :le (:var m6) (:icon 6))) (:goto 1680))
     (:line 1635 (:if (:binary :le (:var m6) (:icon 10))) (:goto 1690))
     (:line 1670 (:print (:scon "also had your left eye gouged out!")))
     (:line 1672 (:goto 1590))
     (:line 1680 (:print (:scon "have also gained a very bad reputation.")))
     (:line 1682 (:goto 1590))
     (:line 1690 (:print (:scon "have also been declared national fink.")))
     (:line 1692 (:goto 1590)) (:line 1700 (:print)) (:line 1702 (:print))
     (:line 1710
      (:print (:scon "over one third of the popultation has died since you")))
     (:line 1715
      (:print (:scon "were elected to office. the people (remaining)")))
     (:line 1720 (:print (:scon "hate your guts."))) (:line 1730 (:goto 1570))
     (:line 1800
      (:if
       (:binary :lt (:binary :minus (:var b5) (:var f1)) (:icon 2)))
      (:goto 1515))
     (:line 1807 (:print))
     (:line 1815
      (:print (:scon "money was left over in the treasury which you did")))
     (:line 1820
      (:print (:scon "not spend. as a result, some of your countrymen died")))
     (:line 1825
      (:print (:scon "of starvation. the public is enraged and you have")))
     (:line 1830
      (:print (:scon "been forced to either resign or commit suicide.")))
     (:line 1835 (:print (:scon "the choice is yours.")))
     (:line 1840
      (:print
       (:scon "if you choose the latter, please turn off your computer")))
     (:line 1845 (:print (:scon "before proceeding.")))
     (:line 1850 (:goto 1590)) (:line 1900 (:print)) (:line 1902 (:print))
     (:line 1920 (:print (:scon "congratulations!!!!!!!!!!!!!!!!!!")))
     (:line 1925
      (:print (:scon "you have succesfully completed your") :semi (:var n5)
       :semi (:scon "year term")))
     (:line 1930
      (:print (:scon "of office. you were, of course, extremely lucky, but")))
     (:line 1935
      (:print
       (:scon "nevertheless, it's quite an achievement. goodbye and good")))
     (:line 1940
      (:print
       (:scon "luck - you'll probably need it if you're the type that")))
     (:line 1945 (:print (:scon "plays this game."))) (:line 1950 (:goto 1590))
     (:line 1960
      (:print (:scon "how many years had you been in office when interrupted")
       :semi))
     (:line 1961 (:input nil ((:var x5))))
     (:line 1962 (:if (:binary :lt (:var x5) (:icon 0))) (:goto 1590))
     (:line 1963 (:if (:binary :lt (:var x5) (:icon 8))) (:goto 1969))
     (:line 1965
      (:print (:scon "   come on, your term in office is only") :semi
       (:var n5) :semi (:scon "years.")))
     (:line 1967 (:goto 1960))
     (:line 1969
      (:print (:scon "how much did you have in the treasury") :semi))
     (:line 1970 (:input nil ((:var a))))
     (:line 1971 (:if (:binary :lt (:var a) (:icon 0))) (:goto 1590))
     (:line 1975 (:print (:scon "how many countrymen") :semi))
     (:line 1976 (:input nil ((:var b))))
     (:line 1977 (:if (:binary :lt (:var b) (:icon 0))) (:goto 1590))
     (:line 1980 (:print (:scon "how many workers") :semi))
     (:line 1981 (:input nil ((:var c))))
     (:line 1982 (:if (:binary :lt (:var c) (:icon 0))) (:goto 1590))
     (:line 1990 (:print (:scon "how many square miles of land") :semi))
     (:line 1991 (:input nil ((:var d))))
     (:line 1992 (:if (:binary :lt (:var d) (:icon 0))) (:goto 1590))
     (:line 1993 (:if (:binary :gt (:var d) (:icon 2000))) (:goto 1996))
     (:line 1994 (:if (:binary :gt (:var d) (:icon 1000))) (:goto 100))
     (:line 1996
      (:print
       (:scon "   come on, you started with 1000 sq. miles of farm land")))
     (:line 1997 (:print (:scon "   and 10,000 sq. miles of forest land.")))
     (:line 1998 (:goto 1990))
     (:line 2000 (:let (:var x5) (:binary :plus (:var x5) (:icon 1))))
     (:line 2020 (:let (:var b5) (:icon 0))) (:line 2040 (:goto 100))
     (:line 2046 (:end)))))



(defvar *lem*
  '(((:line 2 (:print (:apply tab (:icon 34)) :semi (:scon "lem")))
     (:line 4
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 7 (:rem " rockt2 is an interactive game that simulates a lunar
"))
     (:line 8 (:rem " landing is similar to that of the apollo program.
"))
     (:line 9 (:rem " there is absolutely no chance involved
"))
     (:line 10 (:let (:var z$) (:scon "go")))
     (:line 15 (:let (:var b1) (:icon 1)))
     (:line 20 (:let (:var m) (:fcon 17.95)))
     (:line 25 (:let (:var f1) (:fcon 5.25)))
     (:line 30 (:let (:var n) (:fcon 7.5)))
     (:line 35 (:let (:var r0) (:icon 926)))
     (:line 40 (:let (:var v0) (:fcon 1.29)))
     (:line 45 (:let (:var t) (:icon 0)))
     (:line 50 (:let (:var h0) (:icon 60)))
     (:line 55 (:let (:var r) (:binary :plus (:var r0) (:var h0))))
     (:line 60 (:let (:var a) (:uminus (:fcon 3.425))))
     (:line 65 (:let (:var r1) (:icon 0)))
     (:line 70 (:let (:var a1) (:fcon 8.84361e-4)))
     (:line 75 (:let (:var r3) (:icon 0)))
     (:line 80 (:let (:var a3) (:icon 0)))
     (:line 85 (:let (:var m1) (:fcon 7.45)))
     (:line 90 (:let (:var m0) (:var m1)))
     (:line 95 (:let (:var b) (:icon 750)))
     (:line 100 (:let (:var t1) (:icon 0)))
     (:line 105 (:let (:var f) (:icon 0)))
     (:line 110 (:let (:var p) (:icon 0)))
     (:line 115 (:let (:var n) (:icon 1)))
     (:line 120 (:let (:var m2) (:icon 0)))
     (:line 125 (:let (:var s) (:icon 0)))
     (:line 130 (:let (:var c) (:icon 0)))
     (:line 135 (:if (:binary :eq (:var z$) (:scon "yes"))) (:goto 1150))
     (:line 140 (:print))
     (:line 145 (:print (:scon "lunar landing simulation")))
     (:line 150 (:print))
     (:line 155
      (:print (:scon "have you flown an apollo/lem mission before") :semi))
     (:line 160 (:print (:scon " (yes or no)") :semi))
     (:line 165 (:input nil ((:var q$))))
     (:line 170 (:if (:binary :eq (:var q$) (:scon "yes"))) (:goto 190))
     (:line 175 (:if (:binary :eq (:var q$) (:scon "no"))) (:goto 205))
     (:line 180 (:print (:scon "just answer the question, please, ") :semi))
     (:line 185 (:goto 160)) (:line 190 (:print))
     (:line 195 (:print (:scon "input measurement option number") :semi))
     (:line 200 (:goto 225)) (:line 205 (:print))
     (:line 210 (:print (:scon "which system of measurement do you prefer?")))
     (:line 215 (:print (:scon " 1=metric     0=english")))
     (:line 220 (:print (:scon "enter the appropriate number") :semi))
     (:line 225 (:input nil ((:var k)))) (:line 230 (:print))
     (:line 235 (:if (:binary :eq (:var k) (:icon 0))) (:goto 280))
     (:line 240 (:if (:binary :eq (:var k) (:icon 1))) (:goto 250))
     (:line 245 (:goto 220)) (:line 250 (:let (:var z) (:fcon 1852.8)))
     (:line 255 (:let (:var m$) (:scon "meters")))
     (:line 260 (:let (:var g3) (:fcon 3.6)))
     (:line 265 (:let (:var n$) (:scon " kilometers")))
     (:line 270 (:let (:var g5) (:icon 1000))) (:line 275 (:goto 305))
     (:line 280 (:let (:var z) (:icon 6080)))
     (:line 285 (:let (:var m$) (:scon "feet")))
     (:line 290 (:let (:var g3) (:fcon 0.592)))
     (:line 295 (:let (:var n$) (:scon "n.miles")))
     (:line 300 (:let (:var g5) (:var z)))
     (:line 305 (:if (:binary :eq (:var b1) (:icon 3))) (:goto 670))
     (:line 310 (:if (:binary :eq (:var q$) (:scon "yes"))) (:goto 485))
     (:line 315 (:print))
     (:line 320
      (:print
       (:scon "  you are on a lunar landing mission.  as the pilot of")))
     (:line 325
      (:print (:scon "the lunar excursion module, you will be expected to")))
     (:line 330
      (:print
       (:scon "give certain commands to the module navigation system.")))
     (:line 335
      (:print (:scon "the on-board computer will give a running account")))
     (:line 340 (:print (:scon "of information needed to navigate the ship.")))
     (:line 345 (:print)) (:line 350 (:print))
     (:line 355
      (:print
       (:scon "the attitude angle called for is described as follows.")))
     (:line 360
      (:print (:scon "+ or -180 degrees is directly away from the moon")))
     (:line 365
      (:print (:scon "-90 degrees is on a tangent in the direction of orbit")))
     (:line 370
      (:print
       (:scon "+90 degrees is on a tangent from the direction of orbit")))
     (:line 375
      (:print (:scon "0 (zero) degrees is directly toward the moon")))
     (:line 380 (:print))
     (:line 385 (:print (:apply tab (:icon 30)) :semi (:scon "-180|+180")))
     (:line 390 (:print (:apply tab (:icon 34)) :semi (:scon "^")))
     (:line 395
      (:print (:apply tab (:icon 27)) :semi (:scon "-90 < -+- > +90")))
     (:line 400 (:print (:apply tab (:icon 34)) :semi (:scon "!")))
     (:line 405 (:print (:apply tab (:icon 34)) :semi (:scon "0")))
     (:line 410
      (:print (:apply tab (:icon 21)) :semi
       (:scon "<<<< direction of orbit <<<<")))
     (:line 415 (:print))
     (:line 420
      (:print (:apply tab (:icon 20)) :semi
       (:scon "------ surface of moon ------")))
     (:line 425 (:print)) (:line 430 (:print))
     (:line 435
      (:print
       (:scon "all angles between -180 and +180 degrees are accepted.")))
     (:line 440 (:print))
     (:line 445 (:print (:scon "1 fuel unit = 1 sec. at max thrust")))
     (:line 450
      (:print
       (:scon "any discrepancies are accounted for in the use of fuel")))
     (:line 455 (:print (:scon "for an attitude change.")))
     (:line 460
      (:print
       (:scon "available engine power: 0 (zero) and any value between")))
     (:line 465 (:print (:scon "10 and 100 percent."))) (:line 470 (:print))
     (:line 475 (:print (:scon "negative thrust or time is prohibited.")))
     (:line 480 (:print)) (:line 485 (:print))
     (:line 490 (:print (:scon "input: time interval in seconds ------ (t)")))
     (:line 495 (:print (:scon "       percentage of thrust ---------- (p)")))
     (:line 500 (:print (:scon "       attitude angle in degrees ----- (a)")))
     (:line 505 (:print))
     (:line 510 (:if (:binary :eq (:var q$) (:scon "yes"))) (:goto 535))
     (:line 515 (:print (:scon "for example:")))
     (:line 520 (:print (:scon "t,p,a? 10,65,-60")))
     (:line 525
      (:print (:scon "to abort the mission at any time, enter 0,0,0")))
     (:line 530 (:print))
     (:line 535 (:print (:scon "output: total time in elapsed seconds")))
     (:line 540 (:print (:scon "        height in ") :semi (:var m$)))
     (:line 545
      (:print (:scon "        distance from landing site in ") :semi
       (:var m$)))
     (:line 550
      (:print (:scon "        vertical velocity in ") :semi (:var m$) :semi
       (:scon "/second")))
     (:line 555
      (:print (:scon "        horizontal velocity in ") :semi (:var m$)
       :semi (:scon "/second")))
     (:line 560 (:print (:scon "        fuel units remaining")))
     (:line 565 (:print)) (:line 570 (:goto 670)) (:line 575 (:print))
     (:line 580 (:print (:scon "t,p,a") :semi))
     (:line 585 (:input nil ((:var t1) (:var f) (:var p))))
     (:line 590 (:let (:var f) (:binary :div (:var f) (:icon 100))))
     (:line 595 (:if (:binary :lt (:var t1) (:icon 0))) (:goto 905))
     (:line 600 (:if (:binary :eq (:var t1) (:icon 0))) (:goto 1090))
     (:line 605
      (:if
       (:binary :gt
        (:apply abs (:binary :minus (:var f) (:fcon 0.049999997)))
        (:icon 1)))
      (:goto 945))
     (:line 610
      (:if
       (:binary :lt
        (:apply abs (:binary :minus (:var f) (:fcon 0.049999997)))
        (:fcon 0.049999997)))
      (:goto 945))
     (:line 615 (:if (:binary :gt (:apply abs (:var p)) (:icon 180)))
      (:goto 925))
     (:line 620 (:let (:var n) (:icon 20)))
     (:line 625 (:if (:binary :lt (:var t1) (:icon 400))) (:goto 635))
     (:line 630 (:let (:var n) (:binary :div (:var t1) (:icon 20))))
     (:line 635 (:let (:var t1) (:binary :div (:var t1) (:var n))))
     (:line 640
      (:let (:var p)
       (:binary :div (:binary :mul (:var p) (:fcon 3.14159)) (:icon 180))))
     (:line 645 (:let (:var s) (:apply sin (:var p))))
     (:line 650 (:let (:var c) (:apply cos (:var p))))
     (:line 655
      (:let (:var m2)
       (:binary :div
        (:binary :mul (:binary :mul (:var m0) (:var t1)) (:var f))
        (:var b))))
     (:line 660
      (:let (:var r3)
       (:binary :plus
        (:binary :mul (:binary :mul (:uminus (:fcon 0.5)) (:var r0))
         (:exp (:binary :div (:var v0) (:var r)) (:icon 2)))
        (:binary :mul (:binary :mul (:var r) (:var a1))
         (:var a1)))))
     (:line 665
      (:let (:var a3)
       (:binary :div
        (:binary :mul (:binary :mul (:uminus (:icon 2)) (:var r1))
         (:var a1))
        (:var r))))
     (:line 670 (:for i (:icon 1) (:var n) nil))
     (:line 675 (:if (:binary :eq (:var m1) (:icon 0))) (:goto 715))
     (:line 680
      (:let (:var m1) (:binary :minus (:var m1) (:var m2))))
     (:line 685 (:if (:binary :gt (:var m1) (:icon 0))) (:goto 725))
     (:line 690
      (:let (:var f)
       (:binary :mul (:var f)
        (:binary :plus (:icon 1) (:binary :div (:var m1) (:var m2))))))
     (:line 695
      (:let (:var m2) (:binary :plus (:var m1) (:var m2))))
     (:line 700 (:print (:scon "you are out of fuel.")))
     (:line 705 (:let (:var m1) (:icon 0))) (:line 710 (:goto 725))
     (:line 715 (:let (:var f) (:icon 0)))
     (:line 720 (:let (:var m2) (:icon 0)))
     (:line 725
      (:let (:var m)
       (:binary :minus (:var m) (:binary :mul (:fcon 0.5) (:var m2)))))
     (:line 730 (:let (:var r4) (:var r3)))
     (:line 735
      (:let (:var r3)
       (:binary :plus
        (:binary :mul (:binary :mul (:uminus (:fcon 0.5)) (:var r0))
         (:exp (:binary :div (:var v0) (:var r)) (:icon 2)))
        (:binary :mul (:binary :mul (:var r) (:var a1))
         (:var a1)))))
     (:line 740
      (:let (:var r2)
       (:binary :plus
        (:binary :div
         (:binary :minus (:binary :mul (:icon 3) (:var r3)) (:var r4))
         (:icon 2))
        (:binary :div
         (:binary :mul
          (:binary :mul (:binary :mul (:fcon 0.00526) (:var f1))
           (:var f))
          (:var c))
         (:var m)))))
     (:line 745 (:let (:var a4) (:var a3)))
     (:line 750
      (:let (:var a3)
       (:binary :div
        (:binary :mul (:binary :mul (:uminus (:icon 2)) (:var r1))
         (:var a1))
        (:var r))))
     (:line 755
      (:let (:var a2)
       (:binary :plus
        (:binary :div
         (:binary :minus (:binary :mul (:icon 3) (:var a3)) (:var a4))
         (:icon 2))
        (:binary :div
         (:binary :mul
          (:binary :mul (:binary :mul (:fcon 0.0056) (:var f1))
           (:var f))
          (:var s))
         (:binary :mul (:var m) (:var r))))))
     (:line 760
      (:let (:var x)
       (:binary :plus (:binary :mul (:var r1) (:var t1))
        (:binary :mul
         (:binary :mul (:binary :mul (:fcon 0.5) (:var r2)) (:var t1))
         (:var t1)))))
     (:line 765 (:let (:var r) (:binary :plus (:var r) (:var x))))
     (:line 770
      (:let (:var h0) (:binary :plus (:var h0) (:var x))))
     (:line 775
      (:let (:var r1)
       (:binary :plus (:var r1)
        (:binary :mul (:var r2) (:var t1)))))
     (:line 780
      (:let (:var a)
       (:binary :plus
        (:binary :plus (:var a) (:binary :mul (:var a1) (:var t1)))
        (:binary :mul
         (:binary :mul (:binary :mul (:fcon 0.5) (:var a2)) (:var t1))
         (:var t1)))))
     (:line 785
      (:let (:var a1)
       (:binary :plus (:var a1)
        (:binary :mul (:var a2) (:var t1)))))
     (:line 790
      (:let (:var m)
       (:binary :minus (:var m) (:binary :mul (:fcon 0.5) (:var m2)))))
     (:line 795 (:let (:var t) (:binary :plus (:var t) (:var t1))))
     (:line 800 (:if (:binary :lt (:var h0) (:fcon 3.287828e-4)))
      (:goto 810))
     (:line 805 (:next i))
     (:line 810 (:let (:var h) (:binary :mul (:var h0) (:var z))))
     (:line 815 (:let (:var h1) (:binary :mul (:var r1) (:var z))))
     (:line 820
      (:let (:var d)
       (:binary :mul (:binary :mul (:var r0) (:var a)) (:var z))))
     (:line 825
      (:let (:var d1)
       (:binary :mul (:binary :mul (:var r) (:var a1)) (:var z))))
     (:line 830
      (:let (:var t2)
       (:binary :div (:binary :mul (:var m1) (:var b)) (:var m0))))
     (:line 835
      (:print (:scon " ") :semi (:var t) :semi (:apply tab (:icon 10))
       :semi (:var h) :semi (:apply tab (:icon 23)) :semi (:var d)
       :semi))
     (:line 840
      (:print (:apply tab (:icon 37)) :semi (:var h1) :semi
       (:apply tab (:icon 49)) :semi (:var d1) :semi
       (:apply tab (:icon 60)) :semi (:var t2)))
     (:line 845 (:if (:binary :lt (:var h0) (:fcon 3.287828e-4)))
      (:goto 880))
     (:line 850
      (:if
       (:binary :gt (:binary :mul (:var r0) (:var a)) (:fcon 164.474)))
      (:goto 1050))
     (:line 855 (:if (:binary :gt (:var m1) (:icon 0))) (:goto 580))
     (:line 860 (:let (:var t1) (:icon 20)))
     (:line 865 (:let (:var f) (:icon 0)))
     (:line 870 (:let (:var p) (:icon 0))) (:line 875 (:goto 620))
     (:line 880 (:if (:binary :lt (:var r1) (:uminus (:fcon 8.21957e-4))))
      (:goto 1020))
     (:line 885
      (:if
       (:binary :gt (:apply abs (:binary :mul (:var r) (:var a1)))
        (:fcon 4.9317395e-4)))
      (:goto 1020))
     (:line 890 (:if (:binary :lt (:var h0) (:uminus (:fcon 3.287828e-4))))
      (:goto 1020))
     (:line 895
      (:if
       (:binary :gt (:apply abs (:var d))
        (:binary :mul (:icon 10) (:var z))))
      (:goto 1065))
     (:line 900 (:goto 995)) (:line 905 (:print))
     (:line 910
      (:print (:scon "this spacecraft is not able to violate the space-")
       :semi))
     (:line 915 (:print (:scon "time continuum."))) (:line 920 (:goto 575))
     (:line 925 (:print))
     (:line 930
      (:print (:scon "if you want to spin around, go outside the module")))
     (:line 935 (:print (:scon "for an e.v.a."))) (:line 940 (:goto 575))
     (:line 945 (:print))
     (:line 950 (:print (:scon "impossible thrust value ") :semi))
     (:line 955 (:if (:binary :lt (:var f) (:icon 0))) (:goto 985))
     (:line 960
      (:if
       (:binary :lt (:binary :minus (:var f) (:fcon 0.049999997))
        (:fcon 0.049999997)))
      (:goto 975))
     (:line 965 (:print (:scon "too large"))) (:line 970 (:goto 575))
     (:line 975 (:print (:scon "too small"))) (:line 980 (:goto 575))
     (:line 985 (:print (:scon "negative"))) (:line 990 (:goto 575))
     (:line 995 (:print))
     (:line 1000
      (:print (:scon "tranquility base here -- the eagle has landed.")))
     (:line 1005
      (:print (:scon "congratulations -- there was no spacecraft damage.")))
     (:line 1010
      (:print (:scon "you may now proceed with surface exploration.")))
     (:line 1015 (:goto 1100)) (:line 1020 (:print))
     (:line 1025 (:print (:scon "crash !!!!!!!!!!!!!!!!")))
     (:line 1030
      (:print (:scon "your impact created a crater") :semi
       (:apply abs (:var h)) :semi (:var m$) :semi
       (:scon " deep.")))
     (:line 1035
      (:let (:var x1)
       (:binary :mul
        (:apply sqr
         (:binary :plus (:binary :mul (:var d1) (:var d1))
          (:binary :mul (:var h1) (:var h1))))
        (:var g3))))
     (:line 1040
      (:print (:scon "at contact you were traveling") :semi (:var x1) :semi
       (:var n$) :semi (:scon "/hr")))
     (:line 1045 (:goto 1100)) (:line 1050 (:print))
     (:line 1055
      (:print (:scon "you have been lost in space with no hope of recovery.")))
     (:line 1060 (:goto 1100))
     (:line 1065 (:print (:scon "you are down safely - ")))
     (:line 1075 (:print))
     (:line 1080
      (:print (:scon "but missed the landing site by") :semi
       (:apply abs (:binary :div (:var d) (:var g5))) :semi
       (:var n$) :semi (:scon ".")))
     (:line 1085 (:goto 1100)) (:line 1090 (:print))
     (:line 1095 (:print (:scon "mission abended"))) (:line 1100 (:print))
     (:line 1105 (:print (:scon "do you want to try it again (yes/no)?")))
     (:line 1110 (:input nil ((:var z$))))
     (:line 1115 (:if (:binary :eq (:var z$) (:scon "yes"))) (:goto 20))
     (:line 1120 (:if (:binary :eq (:var z$) (:scon "no"))) (:goto 1130))
     (:line 1125 (:goto 1105)) (:line 1130 (:print))
     (:line 1135
      (:print (:scon "too bad, the space program hates to lose experienced")))
     (:line 1140 (:print (:scon "astronauts."))) (:line 1145 (:stop))
     (:line 1150 (:print))
     (:line 1155
      (:print
       (:scon "ok, do you want the complete instructions or the input -")))
     (:line 1160 (:print (:scon "output statements?")))
     (:line 1165 (:print (:scon "1=complete instructions")))
     (:line 1170 (:print (:scon "2=input-output statements")))
     (:line 1175 (:print (:scon "3=neither")))
     (:line 1180 (:input nil ((:var b1))))
     (:line 1185 (:let (:var q$) (:scon "no")))
     (:line 1190 (:if (:binary :eq (:var b1) (:icon 1))) (:goto 205))
     (:line 1195 (:let (:var q$) (:scon "yes")))
     (:line 1200 (:if (:binary :eq (:var b1) (:icon 2))) (:goto 190))
     (:line 1205 (:if (:binary :eq (:var b1) (:icon 3))) (:goto 190))
     (:line 1210 (:goto 1165)) (:line 1215 (:end)))))



(defvar *letter*
  '(((:line 10 (:print (:apply tab (:icon 33)) :semi (:scon "letter")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print))
     (:line 100 (:print (:scon "letter guessing game")) (:print))
     (:line 210
      (:print (:scon "i'll think of a letter of the alphabet, a to z.")))
     (:line 220
      (:print (:scon "try to guess my letter and i'll give you clues")))
     (:line 230
      (:print (:scon "as to how close you're getting to my letter.")))
     (:line 310
      (:let (:var l)
       (:binary :plus (:icon 65)
        (:apply int
         (:binary :mul (:apply rnd (:icon 1)) (:icon 26))))))
     (:line 320 (:let (:var g) (:icon 0)))
     (:line 340 (:print)
      (:print (:scon "o.k., i have a letter.  start guessing.")))
     (:line 410 (:print) (:print (:scon "what is your guess") :semi))
     (:line 420 (:let (:var g) (:binary :plus (:var g) (:icon 1))))
     (:line 430 (:input nil ((:var a$)))
      (:let (:var a) (:apply asc (:var a$))) (:print))
     (:line 440 (:if (:binary :eq (:var a) (:var l))) (:goto 500))
     (:line 450 (:if (:binary :gt (:var a) (:var l))) (:goto 480))
     (:line 460 (:print (:scon "too low.  try a higher letter.")) (:goto 410))
     (:line 480 (:print (:scon "too high.  try a lower letter.")) (:goto 410))
     (:line 500 (:print)
      (:print (:scon "you got it in") :semi (:var g) :semi
       (:scon "guesses!!")))
     (:line 504 (:if (:binary :le (:var g) (:icon 5))) (:goto 508))
     (:line 506 (:print (:scon "but it shouldn't take more than 5 guesses!"))
      (:goto 515))
     (:line 508 (:print (:scon "good job !!!!!")))
     (:line 510 (:for n (:icon 1) (:icon 15) nil)
      (:print (:apply chr$ (:icon 7)) :semi) (:next n))
     (:line 515 (:print)) (:line 520 (:print (:scon "let's plan again.....")))
     (:line 530 (:goto 310)) (:line 999 (:end)))))



(defvar *life*
  '(((:line 2 (:print (:apply tab (:icon 34)) :semi (:scon "life")))
     (:line 4
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 6 (:print) (:print) (:print))
     (:line 8 (:print (:scon "enter your pattern:")))
     (:line 9 (:let (:var x1) (:icon 1)) (:let (:var y1) (:icon 1))
      (:let (:var x2) (:icon 24)) (:let (:var y2) (:icon 70)))
     (:line 10
      (:dim ((:dimd2 a (:icon 24) (:icon 70)) (:dimd b$ (:icon 24)))))
     (:line 20 (:let (:var c) (:icon 1)))
     (:line 30 (:input nil ((:apply b$ (:var c)))))
     (:line 40 (:if (:binary :eq (:apply b$ (:var c)) (:scon "done")))
      (:let (:apply b$ (:var c)) (:scon "")) (:goto 80))
     (:line 50
      (:if
       (:binary :eq (:apply left$ (:apply b$ (:var c)) (:icon 1))
        (:scon ".")))
      (:let (:apply b$ (:var c))
       (:binary :plus (:scon " ")
        (:apply right$ (:apply b$ (:var c))
         (:binary :minus (:apply len (:apply b$ (:var c)))
          (:icon 1))))))
     (:line 60 (:let (:var c) (:binary :plus (:var c) (:icon 1))))
     (:line 70 (:goto 30))
     (:line 80 (:let (:var c) (:binary :minus (:var c) (:icon 1)))
      (:let (:var l) (:icon 0)))
     (:line 90
      (:for x (:icon 1) (:binary :minus (:var c) (:icon 1)) nil))
     (:line 100
      (:if
       (:binary :gt (:apply len (:apply b$ (:var x)))
        (:var l)))
      (:let (:var l) (:apply len (:apply b$ (:var x)))))
     (:line 110 (:next x))
     (:line 120
      (:let (:var x1)
       (:binary :minus (:icon 11) (:binary :div (:var c) (:icon 2)))))
     (:line 130
      (:let (:var y1)
       (:binary :minus (:icon 33) (:binary :div (:var l) (:icon 2)))))
     (:line 140 (:for x (:icon 1) (:var c) nil))
     (:line 150
      (:for y (:icon 1) (:apply len (:apply b$ (:var x))) nil))
     (:line 160
      (:if
       (:binary :ne
        (:apply mid$ (:apply b$ (:var x)) (:var y) (:icon 1))
        (:scon " ")))
      (:let
       (:apply a (:binary :plus (:var x1) (:var x))
        (:binary :plus (:var y1) (:var y)))
       (:icon 1))
      (:let (:var p) (:binary :plus (:var p) (:icon 1))))
     (:line 170 (:next y)) (:line 180 (:next x))
     (:line 200 (:print) (:print) (:print))
     (:line 210
      (:print (:scon "generation:") :semi (:var g) :comma
       (:scon "population:") :semi (:var p) :semi)
      (:if (:var i9)) (:print (:scon "invalid!") :semi))
     (:line 215 (:let (:var x3) (:icon 24)) (:let (:var y3) (:icon 70))
      (:let (:var x4) (:icon 1)) (:let (:var y4) (:icon 1))
      (:let (:var p) (:icon 0)))
     (:line 220 (:let (:var g) (:binary :plus (:var g) (:icon 1))))
     (:line 225
      (:for x (:icon 1) (:binary :minus (:var x1) (:icon 1)) nil)
      (:print) (:next x))
     (:line 230 (:for x (:var x1) (:var x2) nil))
     (:line 240 (:print))
     (:line 250 (:for y (:var y1) (:var y2) nil))
     (:line 253
      (:if (:binary :eq (:apply a (:var x) (:var y)) (:icon 2)))
      (:let (:apply a (:var x) (:var y)) (:icon 0)) (:goto 270))
     (:line 256
      (:if (:binary :eq (:apply a (:var x) (:var y)) (:icon 3)))
      (:let (:apply a (:var x) (:var y)) (:icon 1)) (:goto 261))
     (:line 260
      (:if (:binary :ne (:apply a (:var x) (:var y)) (:icon 1)))
      (:goto 270))
     (:line 261 (:print (:apply tab (:var y)) :semi (:scon "*") :semi))
     (:line 262 (:if (:binary :lt (:var x) (:var x3)))
      (:let (:var x3) (:var x)))
     (:line 264 (:if (:binary :gt (:var x) (:var x4)))
      (:let (:var x4) (:var x)))
     (:line 266 (:if (:binary :lt (:var y) (:var y3)))
      (:let (:var y3) (:var y)))
     (:line 268 (:if (:binary :gt (:var y) (:var y4)))
      (:let (:var y4) (:var y)))
     (:line 270 (:next y)) (:line 290 (:next x))
     (:line 295
      (:for x (:binary :plus (:var x2) (:icon 1)) (:icon 24) nil)
      (:print) (:next x))
     (:line 299 (:let (:var x1) (:var x3))
      (:let (:var x2) (:var x4)) (:let (:var y1) (:var y3))
      (:let (:var y2) (:var y4)))
     (:line 301 (:if (:binary :lt (:var x1) (:icon 3)))
      (:let (:var x1) (:icon 3)) (:let (:var i9) (:uminus (:icon 1))))
     (:line 303 (:if (:binary :gt (:var x2) (:icon 22)))
      (:let (:var x2) (:icon 22)) (:let (:var i9) (:uminus (:icon 1))))
     (:line 305 (:if (:binary :lt (:var y1) (:icon 3)))
      (:let (:var y1) (:icon 3)) (:let (:var i9) (:uminus (:icon 1))))
     (:line 307 (:if (:binary :gt (:var y2) (:icon 68)))
      (:let (:var y2) (:icon 68)) (:let (:var i9) (:uminus (:icon 1))))
     (:line 309 (:let (:var p) (:icon 0)))
     (:line 500
      (:for x (:binary :minus (:var x1) (:icon 1))
       (:binary :plus (:var x2) (:icon 1)) nil))
     (:line 510
      (:for y (:binary :minus (:var y1) (:icon 1))
       (:binary :plus (:var y2) (:icon 1)) nil))
     (:line 520 (:let (:var c) (:icon 0)))
     (:line 530
      (:for i (:binary :minus (:var x) (:icon 1))
       (:binary :plus (:var x) (:icon 1)) nil))
     (:line 540
      (:for j (:binary :minus (:var y) (:icon 1))
       (:binary :plus (:var y) (:icon 1)) nil))
     (:line 550
      (:if
       (:lazy-binary :or
        (:binary :eq (:apply a (:var i) (:var j)) (:icon 1))
        (:binary :eq (:apply a (:var i) (:var j)) (:icon 2))))
      (:let (:var c) (:binary :plus (:var c) (:icon 1))))
     (:line 560 (:next j)) (:line 570 (:next i))
     (:line 580
      (:if (:binary :eq (:apply a (:var x) (:var y)) (:icon 0)))
      (:goto 610))
     (:line 590
      (:if
       (:lazy-binary :or (:binary :lt (:var c) (:icon 3))
        (:binary :gt (:var c) (:icon 4))))
      (:let (:apply a (:var x) (:var y)) (:icon 2)) (:goto 600))
     (:line 595 (:let (:var p) (:binary :plus (:var p) (:icon 1))))
     (:line 600 (:goto 620))
     (:line 610 (:if (:binary :eq (:var c) (:icon 3)))
      (:let (:apply a (:var x) (:var y)) (:icon 3))
      (:let (:var p) (:binary :plus (:var p) (:icon 1))))
     (:line 620 (:next y)) (:line 630 (:next x))
     (:line 635 (:let (:var x1) (:binary :minus (:var x1) (:icon 1)))
      (:let (:var y1) (:binary :minus (:var y1) (:icon 1)))
      (:let (:var x2) (:binary :plus (:var x2) (:icon 1)))
      (:let (:var y2) (:binary :plus (:var y2) (:icon 1))))
     (:line 640 (:goto 210)) (:line 650 (:end)))))



(defvar *lifefortwo*
  '(((:line 2 (:print (:apply tab (:icon 33)) :semi (:scon "life2")))
     (:line 4
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 6 (:print) (:print) (:print))
     (:line 7
      (:dim
       ((:dimd2 n (:icon 6) (:icon 6)) (:dimd k (:icon 18))
        (:dimd a (:icon 16)) (:dimd x (:icon 2))
        (:dimd y (:icon 2)))))
     (:line 8
      (:data (:icon 3) (:icon 102) (:icon 103) (:icon 120) (:icon 130)
       (:icon 121) (:icon 112) (:icon 111) (:icon 12)))
     (:line 9
      (:data (:icon 21) (:icon 30) (:icon 1020) (:icon 1030) (:icon 1011)
       (:icon 1021) (:icon 1003) (:icon 1002) (:icon 1012)))
     (:line 10 (:for m (:icon 1) (:icon 18) nil)
      (:read (:apply k (:var m))) (:next m))
     (:line 13
      (:data (:uminus (:icon 1)) (:icon 0) (:icon 1) (:icon 0) (:icon 0)
       (:uminus (:icon 1)) (:icon 0) (:icon 1) (:uminus (:icon 1))
       (:uminus (:icon 1)) (:icon 1) (:uminus (:icon 1)) (:uminus (:icon 1))
       (:icon 1) (:icon 1) (:icon 1)))
     (:line 14 (:for o1 (:icon 1) (:icon 16) nil)
      (:read (:apply a (:var o1))) (:next o1))
     (:line 20 (:goto 500)) (:line 50 (:for j (:icon 1) (:icon 5) nil))
     (:line 51 (:for k (:icon 1) (:icon 5) nil))
     (:line 55
      (:if (:binary :gt (:apply n (:var j) (:var k)) (:icon 99)))
      (:gosub 200))
     (:line 60 (:next k)) (:line 65 (:next j))
     (:line 90 (:let (:var k) (:icon 0)) (:let (:var m2) (:icon 0))
      (:let (:var m3) (:icon 0)))
     (:line 99 (:for j (:icon 0) (:icon 6) nil) (:print))
     (:line 100 (:for k (:icon 0) (:icon 6) nil))
     (:line 101 (:if (:binary :ne (:var j) (:icon 0)))
      (:if (:binary :ne (:var j) (:icon 6))) (:goto 105))
     (:line 102 (:if (:binary :eq (:var k) (:icon 6)))
      (:print (:icon 0) :semi) (:goto 125))
     (:line 103 (:print (:var k) :semi) (:goto 120))
     (:line 105 (:if (:binary :ne (:var k) (:icon 0)))
      (:if (:binary :ne (:var k) (:icon 6))) (:goto 110))
     (:line 106 (:if (:binary :eq (:var j) (:icon 6))) (:print (:icon 0))
      (:goto 126))
     (:line 107 (:print (:var j) :semi) (:goto 120))
     (:line 110 (:gosub 300)) (:line 120 (:next k))
     (:line 125 (:next j)) (:line 126 (:return))
     (:line 200 (:let (:var b) (:icon 1))
      (:if (:binary :gt (:apply n (:var j) (:var k)) (:icon 999)))
      (:let (:var b) (:icon 10)))
     (:line 220 (:for o1 (:icon 1) (:icon 15) (:icon 2)))
     (:line 230
      (:let
       (:apply n (:binary :plus (:var j) (:apply a (:var o1)))
        (:binary :plus (:var k)
         (:apply a (:binary :plus (:var o1) (:icon 1)))))
       (:binary :plus
        (:apply n (:binary :plus (:var j) (:apply a (:var o1)))
         (:binary :plus (:var k)
          (:apply a (:binary :plus (:var o1) (:icon 1)))))
        (:var b))))
     (:line 231 (:next o1)) (:line 239 (:return))
     (:line 300
      (:if (:binary :lt (:apply n (:var j) (:var k)) (:icon 3)))
      (:goto 399))
     (:line 305 (:for o1 (:icon 1) (:icon 18) nil))
     (:line 310
      (:if
       (:binary :eq (:apply n (:var j) (:var k))
        (:apply k (:var o1))))
      (:goto 350))
     (:line 315 (:next o1)) (:line 320 (:goto 399))
     (:line 350 (:if (:binary :gt (:var o1) (:icon 9))) (:goto 360))
     (:line 351 (:let (:apply n (:var j) (:var k)) (:icon 100))
      (:let (:var m2) (:binary :plus (:var m2) (:icon 1)))
      (:print (:scon " * ") :semi))
     (:line 355 (:return))
     (:line 360 (:let (:apply n (:var j) (:var k)) (:icon 1000))
      (:let (:var m3) (:binary :plus (:var m3) (:icon 1)))
      (:print (:scon " # ") :semi))
     (:line 365 (:return))
     (:line 399 (:let (:apply n (:var j) (:var k)) (:icon 0))
      (:print (:scon "   ") :semi) (:return))
     (:line 500
      (:print (:apply tab (:icon 10)) :semi (:scon "u.b. life game")))
     (:line 505 (:let (:var m2) (:icon 0)) (:let (:var m3) (:icon 0)))
     (:line 510 (:for j (:icon 1) (:icon 5) nil))
     (:line 511 (:for k (:icon 1) (:icon 5) nil))
     (:line 515 (:let (:apply n (:var j) (:var k)) (:icon 0)))
     (:line 516 (:next k)) (:line 517 (:next j))
     (:line 519 (:for b (:icon 1) (:icon 2) nil)
      (:let (:var p1) (:icon 3)) (:if (:binary :eq (:var b) (:icon 2)))
      (:let (:var p1) (:icon 30)))
     (:line 520 (:print)
      (:print (:scon "player") :semi (:var b) :semi
       (:scon " - 3 live pieces.")))
     (:line 535 (:for k1 (:icon 1) (:icon 3) nil) (:gosub 700))
     (:line 540
      (:let
       (:apply n (:apply x (:var b)) (:apply y (:var b)))
       (:var p1))
      (:next k1))
     (:line 542 (:next b)) (:line 559 (:gosub 90))
     (:line 560 (:print) (:gosub 50))
     (:line 570 (:if (:binary :eq (:var m2) (:icon 0)))
      (:if (:binary :eq (:var m3) (:icon 0))) (:goto 574))
     (:line 571 (:if (:binary :eq (:var m3) (:icon 0)))
      (:let (:var b) (:icon 1)) (:goto 575))
     (:line 572 (:if (:binary :eq (:var m2) (:icon 0)))
      (:let (:var b) (:icon 2)) (:goto 575))
     (:line 573 (:goto 580))
     (:line 574 (:print) (:print (:scon "a draw")) (:goto 800))
     (:line 575 (:print)
      (:print (:scon "player") :semi (:var b) :semi
       (:scon "is the winner"))
      (:goto 800))
     (:line 580 (:for b (:icon 1) (:icon 2) nil) (:print) (:print)
      (:print (:scon "player") :semi (:var b) :semi) (:gosub 700))
     (:line 581 (:if (:binary :eq (:var b) (:icon 99))) (:goto 560))
     (:line 582 (:next b))
     (:line 586
      (:let (:apply n (:apply x (:icon 1)) (:apply y (:icon 1)))
       (:icon 100))
      (:let (:apply n (:apply x (:icon 2)) (:apply y (:icon 2)))
       (:icon 1000)))
     (:line 596 (:goto 560))
     (:line 700 (:print (:scon "x,y"))
      (:print (:scon "xxxxxx") :semi (:apply chr$ (:icon 13)) :semi
       (:scon "$$$$$$") :semi (:apply chr$ (:icon 13)) :semi
       (:scon "&&&&&&") :semi))
     (:line 701 (:print (:apply chr$ (:icon 13)) :semi)
      (:input nil ((:apply y (:var b)) (:apply x (:var b)))))
     (:line 705 (:if (:binary :le (:apply x (:var b)) (:icon 5)))
      (:if (:binary :gt (:apply x (:var b)) (:icon 0))) (:goto 708))
     (:line 706 (:goto 750))
     (:line 708 (:if (:binary :le (:apply y (:var b)) (:icon 5)))
      (:if (:binary :gt (:apply y (:var b)) (:icon 0))) (:goto 715))
     (:line 710 (:goto 750))
     (:line 715
      (:if
       (:binary :ne
        (:apply n (:apply x (:var b)) (:apply y (:var b)))
        (:icon 0)))
      (:goto 750))
     (:line 720 (:if (:binary :eq (:var b) (:icon 1))) (:return))
     (:line 725
      (:if (:binary :eq (:apply x (:icon 1)) (:apply x (:icon 2))))
      (:if (:binary :eq (:apply y (:icon 1)) (:apply y (:icon 2))))
      (:goto 740))
     (:line 730 (:return)) (:line 740 (:print (:scon "same coord.  set to 0")))
     (:line 741
      (:let
       (:apply n (:binary :plus (:apply x (:var b)) (:icon 1))
        (:binary :plus (:apply y (:var b)) (:icon 1)))
       (:icon 0))
      (:let (:var b) (:icon 99)) (:return))
     (:line 750 (:print (:scon "illegal coords. retype")) (:goto 700))
     (:line 999 (:end)))))



(defvar *litquiz*
  '(((:line 1
      (:print (:apply tab (:icon 25)) :semi (:scon "literature quiz")))
     (:line 2
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 3 (:print) (:print) (:print))
     (:line 5 (:let (:var r) (:icon 0)))
     (:line 10
      (:print (:scon "test your knowledge of children's literature.")))
     (:line 12 (:print) (:print (:scon "this is a multiple-choice quiz.")))
     (:line 13
      (:print (:scon "type a 1, 2, 3, or 4 after the question mark.")))
     (:line 15 (:print) (:print (:scon "good luck!")) (:print) (:print))
     (:line 40 (:print (:scon "in pinocchio, what was the name of the cat")))
     (:line 42
      (:print (:scon "1)tigger, 2)cicero, 3)figaro, 4)guipetto") :semi))
     (:line 43 (:input nil ((:var a)))
      (:if (:binary :eq (:var a) (:icon 3))) (:goto 46))
     (:line 44 (:print (:scon "sorry...figaro was his name.")) (:goto 50))
     (:line 46 (:print (:scon "very good!  here's another.")))
     (:line 47 (:let (:var r) (:binary :plus (:var r) (:icon 1))))
     (:line 50 (:print) (:print))
     (:line 51
      (:print (:scon "from whose garden did bugs bunny steal the carrots?")))
     (:line 52
      (:print
       (:scon "1)mr. nixon's, 2)elmer fudd's, 3)clem judd's, 4)stromboli's")
       :semi))
     (:line 53 (:input nil ((:var a)))
      (:if (:binary :eq (:var a) (:icon 2))) (:goto 56))
     (:line 54 (:print (:scon "too bad...it was elmer fudd's garden."))
      (:goto 60))
     (:line 56 (:print (:scon "pretty good!")))
     (:line 57 (:let (:var r) (:binary :plus (:var r) (:icon 1))))
     (:line 60 (:print) (:print))
     (:line 61 (:print (:scon "in the wizard of os, dorothy's dog was named")))
     (:line 62 (:print (:scon "1)cicero, 2)trixia, 3)king, 4)toto") :semi))
     (:line 63 (:input nil ((:var a)))
      (:if (:binary :eq (:var a) (:icon 4))) (:goto 66))
     (:line 64 (:print (:scon "back to the books,...toto was his name."))
      (:goto 70))
     (:line 66 (:print (:scon "yea!  you're a real literature giant.")))
     (:line 67 (:let (:var r) (:binary :plus (:var r) (:icon 1))))
     (:line 70 (:print) (:print))
     (:line 71
      (:print (:scon "who was the fair maiden who ate the poison apple")))
     (:line 72
      (:print (:scon "1)sleeping beauty, 2)cinderella, 3)snow white, 4)wendy")
       :semi))
     (:line 73 (:input nil ((:var a)))
      (:if (:binary :eq (:var a) (:icon 3))) (:goto 76))
     (:line 74 (:print (:scon "oh, come on now...it was snow white.")))
     (:line 75 (:goto 80)) (:line 76 (:print (:scon "good memory!")))
     (:line 77 (:let (:var r) (:binary :plus (:var r) (:icon 1))))
     (:line 80 (:print) (:print))
     (:line 85 (:if (:binary :eq (:var r) (:icon 4))) (:goto 100))
     (:line 90 (:if (:binary :lt (:var r) (:icon 2))) (:goto 200))
     (:line 92
      (:print (:scon "not bad, but you might spend a little more time")))
     (:line 94 (:print (:scon "reading the nursery greats.")))
     (:line 96 (:stop))
     (:line 100
      (:print (:scon "wow!  that's super!  you really know your nursery")))
     (:line 110
      (:print (:scon "your next quiz will be on 2nd century chinese")))
     (:line 120 (:print (:scon "literature (ha, ha, ha)"))) (:line 130 (:stop))
     (:line 200
      (:print (:scon "ugh.  that was definitely not too swift.  back to")))
     (:line 205 (:print (:scon "nursery school for you, my friend.")))
     (:line 999 (:end)))))



(defvar *love*
  '(((:line 2 (:print (:apply tab (:icon 33)) :semi (:scon "love")))
     (:line 4
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 6 (:print) (:print) (:print))
     (:line 20
      (:print
       (:scon "a tribute to the great american artist, robert indiana.")))
     (:line 30
      (:print
       (:scon "his greatest work will be reproduced with a message of")))
     (:line 40
      (:print
       (:scon "your choice up to 60 characters.  if you can't think of")))
     (:line 50 (:print (:scon "a message, simple type the word 'love'"))
      (:print))
     (:line 60 (:input "your message, please" ((:var a$)))
      (:let (:var l) (:apply len (:var a$))))
     (:line 70 (:dim ((:dimd t$ (:icon 120))))
      (:for i (:icon 1) (:icon 10) nil) (:print) (:next i))
     (:line 100
      (:for j (:icon 0)
       (:apply int (:binary :div (:icon 60) (:var l))) nil))
     (:line 110 (:for i (:icon 1) (:var l) nil))
     (:line 120
      (:let
       (:apply t$
        (:binary :plus (:binary :mul (:var j) (:var l)) (:var i)))
       (:apply mid$ (:var a$) (:var i) (:icon 1))))
     (:line 130 (:next i) (:next j))
     (:line 140 (:let (:var c) (:icon 0)))
     (:line 200 (:let (:var a1) (:icon 1)) (:let (:var p) (:icon 1))
      (:let (:var c) (:binary :plus (:var c) (:icon 1)))
      (:if (:binary :eq (:var c) (:icon 37))) (:goto 999))
     (:line 205 (:print))
     (:line 210 (:read (:var a))
      (:let (:var a1) (:binary :plus (:var a1) (:var a)))
      (:if (:binary :eq (:var p) (:icon 1))) (:goto 300))
     (:line 240 (:for i (:icon 1) (:var a) nil)
      (:print (:scon " ") :semi) (:next i) (:let (:var p) (:icon 1))
      (:goto 400))
     (:line 300
      (:for i (:binary :minus (:var a1) (:var a))
       (:binary :minus (:var a1) (:icon 1)) nil)
      (:print (:apply t$ (:var i)) :semi) (:next i)
      (:let (:var p) (:icon 0)))
     (:line 400 (:if (:binary :gt (:var a1) (:icon 60))) (:goto 200))
     (:line 410 (:goto 210))
     (:line 600
      (:data (:icon 60) (:icon 1) (:icon 12) (:icon 26) (:icon 9) (:icon 12)
       (:icon 3) (:icon 8) (:icon 24) (:icon 17) (:icon 8) (:icon 4) (:icon 6)
       (:icon 23) (:icon 21) (:icon 6) (:icon 4) (:icon 6) (:icon 22)
       (:icon 12) (:icon 5) (:icon 6) (:icon 5)))
     (:line 610
      (:data (:icon 4) (:icon 6) (:icon 21) (:icon 11) (:icon 8) (:icon 6)
       (:icon 4) (:icon 4) (:icon 6) (:icon 21) (:icon 10) (:icon 10) (:icon 5)
       (:icon 4) (:icon 4) (:icon 6) (:icon 21) (:icon 9) (:icon 11) (:icon 5)
       (:icon 4)))
     (:line 620
      (:data (:icon 4) (:icon 6) (:icon 21) (:icon 8) (:icon 11) (:icon 6)
       (:icon 4) (:icon 4) (:icon 6) (:icon 21) (:icon 7) (:icon 11) (:icon 7)
       (:icon 4) (:icon 4) (:icon 6) (:icon 21) (:icon 6) (:icon 11) (:icon 8)
       (:icon 4)))
     (:line 630
      (:data (:icon 4) (:icon 6) (:icon 19) (:icon 1) (:icon 1) (:icon 5)
       (:icon 11) (:icon 9) (:icon 4) (:icon 4) (:icon 6) (:icon 19) (:icon 1)
       (:icon 1) (:icon 5) (:icon 10) (:icon 10) (:icon 4) (:icon 4) (:icon 6)
       (:icon 18) (:icon 2) (:icon 1) (:icon 6) (:icon 8) (:icon 11)
       (:icon 4)))
     (:line 640
      (:data (:icon 4) (:icon 6) (:icon 17) (:icon 3) (:icon 1) (:icon 7)
       (:icon 5) (:icon 13) (:icon 4) (:icon 4) (:icon 6) (:icon 15) (:icon 5)
       (:icon 2) (:icon 23) (:icon 5) (:icon 1) (:icon 29) (:icon 5) (:icon 17)
       (:icon 8)))
     (:line 650
      (:data (:icon 1) (:icon 29) (:icon 9) (:icon 9) (:icon 12) (:icon 1)
       (:icon 13) (:icon 5) (:icon 40) (:icon 1) (:icon 1) (:icon 13) (:icon 5)
       (:icon 40) (:icon 1) (:icon 4) (:icon 6) (:icon 13) (:icon 3) (:icon 10)
       (:icon 6) (:icon 12) (:icon 5) (:icon 1)))
     (:line 660
      (:data (:icon 5) (:icon 6) (:icon 11) (:icon 3) (:icon 11) (:icon 6)
       (:icon 14) (:icon 3) (:icon 1) (:icon 5) (:icon 6) (:icon 11) (:icon 3)
       (:icon 11) (:icon 6) (:icon 15) (:icon 2) (:icon 1)))
     (:line 670
      (:data (:icon 6) (:icon 6) (:icon 9) (:icon 3) (:icon 12) (:icon 6)
       (:icon 16) (:icon 1) (:icon 1) (:icon 6) (:icon 6) (:icon 9) (:icon 3)
       (:icon 12) (:icon 6) (:icon 7) (:icon 1) (:icon 10)))
     (:line 680
      (:data (:icon 7) (:icon 6) (:icon 7) (:icon 3) (:icon 13) (:icon 6)
       (:icon 6) (:icon 2) (:icon 10) (:icon 7) (:icon 6) (:icon 7) (:icon 3)
       (:icon 13) (:icon 14) (:icon 10) (:icon 8) (:icon 6) (:icon 5) (:icon 3)
       (:icon 14) (:icon 6) (:icon 6) (:icon 2) (:icon 10)))
     (:line 690
      (:data (:icon 8) (:icon 6) (:icon 5) (:icon 3) (:icon 14) (:icon 6)
       (:icon 7) (:icon 1) (:icon 10) (:icon 9) (:icon 6) (:icon 3) (:icon 3)
       (:icon 15) (:icon 6) (:icon 16) (:icon 1) (:icon 1)))
     (:line 700
      (:data (:icon 9) (:icon 6) (:icon 3) (:icon 3) (:icon 15) (:icon 6)
       (:icon 15) (:icon 2) (:icon 1) (:icon 10) (:icon 6) (:icon 1) (:icon 3)
       (:icon 16) (:icon 6) (:icon 14) (:icon 3) (:icon 1) (:icon 10)
       (:icon 10) (:icon 16) (:icon 6) (:icon 12) (:icon 5) (:icon 1)))
     (:line 710
      (:data (:icon 11) (:icon 8) (:icon 13) (:icon 27) (:icon 1) (:icon 11)
       (:icon 8) (:icon 13) (:icon 27) (:icon 1) (:icon 60)))
     (:line 999 (:for i (:icon 1) (:icon 10) nil) (:print) (:next i)
      (:end)))))



(defvar *lunar*
  '(((:line 10 (:print (:apply tab (:icon 33)) :semi (:scon "lunar")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing morristown, new jersey")))
     (:line 25 (:print) (:print) (:print))
     (:line 30
      (:print (:scon "this is a computer simulation of an apollo lunar")))
     (:line 40 (:print (:scon "landing capsule.")) (:print) (:print))
     (:line 50
      (:print (:scon "the on-board computer has failed (it was made by")))
     (:line 60
      (:print (:scon "xerox) so you have to land the capsule manually.")))
     (:line 70 (:print)
      (:print (:scon "set burn rate of retro rockets to any value between")))
     (:line 80
      (:print
       (:scon "0 (free fall) and 200 (maximum burn) pounds per second.")))
     (:line 90 (:print (:scon "set new burn rate every 10 seconds.")) (:print))
     (:line 100
      (:print (:scon "capsule weight 32,500 lbs; fuel weight 16,500 lbs.")))
     (:line 110 (:print) (:print) (:print) (:print (:scon "good luck")))
     (:line 120 (:let (:var l) (:icon 0)))
     (:line 130 (:print)
      (:print (:scon "sec") :comma (:scon "mi + ft") :comma (:scon "mph")
       :comma (:scon "lb fuel") :comma (:scon "burn rate"))
      (:print))
     (:line 140 (:let (:var a) (:icon 120)) (:let (:var v) (:icon 1))
      (:let (:var m) (:icon 33000)) (:let (:var n) (:icon 16500))
      (:let (:var g) (:icon 1/1000)) (:let (:var z) (:fcon 1.8)))
     (:line 150
      (:print (:var l) :comma (:apply int (:var a)) :semi
       (:apply int
        (:binary :mul (:icon 5280)
         (:binary :minus (:var a) (:apply int (:var a)))))
       :comma (:binary :mul (:icon 3600) (:var v)) :comma
       (:binary :minus (:var m) (:var n)) :comma)
      (:input nil ((:var k))) (:let (:var t) (:icon 10)))
     (:line 160
      (:if
       (:binary :lt (:binary :minus (:var m) (:var n)) (:icon 1/1000)))
      (:goto 240))
     (:line 170 (:if (:binary :lt (:var t) (:icon 1/1000))) (:goto 150))
     (:line 180 (:let (:var s) (:var t))
      (:if
       (:binary :ge (:var m)
        (:binary :plus (:var n) (:binary :mul (:var s) (:var k)))))
      (:goto 200))
     (:line 190
      (:let (:var s)
       (:binary :div (:binary :minus (:var m) (:var n)) (:var k))))
     (:line 200 (:gosub 420) (:if (:binary :le (:var i) (:var o)))
      (:goto 340))
     (:line 210 (:if (:binary :le (:var v) (:icon 0))) (:goto 230))
     (:line 220 (:if (:binary :lt (:var j) (:icon 0))) (:goto 370))
     (:line 230 (:gosub 330) (:goto 160))
     (:line 240
      (:print (:scon "fuel out at") :semi (:var l) :semi (:scon "seconds"))
      (:let (:var s)
       (:binary :div
        (:binary :plus (:uminus (:var v))
         (:apply sqr
          (:binary :plus (:binary :mul (:var v) (:var v))
           (:binary :mul (:binary :mul (:icon 2) (:var a)) (:var g)))))
        (:var g))))
     (:line 250
      (:let (:var v)
       (:binary :plus (:var v) (:binary :mul (:var g) (:var s))))
      (:let (:var l) (:binary :plus (:var l) (:var s))))
     (:line 260 (:let (:var w) (:binary :mul (:icon 3600) (:var v)))
      (:print (:scon "on moon at") :semi (:var l) :semi
       (:scon "seconds - impact velocity") :semi (:var w) :semi
       (:scon "mph")))
     (:line 274 (:if (:binary :le (:var w) (:fcon 1.2)))
      (:print (:scon "perfect landing!")) (:goto 440))
     (:line 280 (:if (:binary :le (:var w) (:icon 10)))
      (:print (:scon "good landing (could re better)")) (:goto 440))
     (:line 282 (:if (:binary :gt (:var w) (:icon 60))) (:goto 300))
     (:line 284
      (:print (:scon "craft damage... you're stranded here until a rescue")))
     (:line 286 (:print (:scon "party arrives. hope you have enough oxygen!")))
     (:line 288 (:goto 440))
     (:line 300 (:print (:scon "sorry there nere no survivors. you blow it!")))
     (:line 310
      (:print (:scon "in fact, you blasted a new lunar crater") :semi
       (:binary :mul (:var w) (:fcon 0.22700001)) :semi
       (:scon "feet deep!")))
     (:line 320 (:goto 440))
     (:line 330 (:let (:var l) (:binary :plus (:var l) (:var s)))
      (:let (:var t) (:binary :minus (:var t) (:var s)))
      (:let (:var m)
       (:binary :minus (:var m) (:binary :mul (:var s) (:var k))))
      (:let (:var a) (:var i)) (:let (:var v) (:var j))
      (:return))
     (:line 340 (:if (:binary :lt (:var s) (:icon 1/200))) (:goto 260))
     (:line 350
      (:let (:var d)
       (:binary :plus (:var v)
        (:apply sqr
         (:binary :plus (:binary :mul (:var v) (:var v))
          (:binary :mul (:binary :mul (:icon 2) (:var a))
           (:binary :minus (:var g)
            (:binary :div (:binary :mul (:var z) (:var k))
             (:var m))))))))
      (:let (:var s)
       (:binary :div (:binary :mul (:icon 2) (:var a)) (:var d))))
     (:line 360 (:gosub 420) (:gosub 330) (:goto 340))
     (:line 370
      (:let (:var w)
       (:binary :div
        (:binary :minus (:icon 1)
         (:binary :div (:binary :mul (:var m) (:var g))
          (:binary :mul (:var z) (:var k))))
        (:icon 2)))
      (:let (:var s)
       (:binary :plus
        (:binary :div (:binary :mul (:var m) (:var v))
         (:binary :mul (:binary :mul (:var z) (:var k))
          (:binary :plus (:var w)
           (:apply sqr
            (:binary :plus (:binary :mul (:var w) (:var w))
             (:binary :div (:var v) (:var z)))))))
        (:fcon 0.049999997)))
      (:gosub 420))
     (:line 380 (:if (:binary :le (:var i) (:icon 0))) (:goto 340))
     (:line 390 (:gosub 330) (:if (:binary :gt (:var j) (:icon 0)))
      (:goto 160))
     (:line 400 (:if (:binary :gt (:var v) (:icon 0))) (:goto 370))
     (:line 410 (:goto 160))
     (:line 420
      (:let (:var q)
       (:binary :div (:binary :mul (:var s) (:var k)) (:var m)))
      (:let (:var j)
       (:binary :plus
        (:binary :plus (:var v) (:binary :mul (:var g) (:var s)))
        (:binary :mul (:var z)
         (:binary :minus
          (:binary :minus
           (:binary :minus
            (:binary :minus (:uminus (:var q))
             (:binary :div (:binary :mul (:var q) (:var q)) (:icon 2)))
            (:binary :div (:exp (:var q) (:icon 3)) (:icon 3)))
           (:binary :div (:exp (:var q) (:icon 4)) (:icon 4)))
          (:binary :div (:exp (:var q) (:icon 5)) (:icon 5)))))))
     (:line 430
      (:let (:var i)
       (:binary :plus
        (:binary :minus
         (:binary :minus (:var a)
          (:binary :div
           (:binary :mul (:binary :mul (:var g) (:var s)) (:var s))
           (:icon 2)))
         (:binary :mul (:var v) (:var s)))
        (:binary :mul (:binary :mul (:var z) (:var s))
         (:binary :plus
          (:binary :plus
           (:binary :plus
            (:binary :plus (:binary :div (:var q) (:icon 2))
             (:binary :div (:exp (:var q) (:icon 2)) (:icon 6)))
            (:binary :div (:exp (:var q) (:icon 3)) (:icon 12)))
           (:binary :div (:exp (:var q) (:icon 4)) (:icon 20)))
          (:binary :div (:exp (:var q) (:icon 5)) (:icon 30))))))
      (:return))
     (:line 440 (:print) (:print) (:print) (:print (:scon "try again??"))
      (:goto 70)))))



(defvar *mastermind*
  '(((:line 2 (:print (:apply tab (:icon 30)) :semi (:scon "mastermind")))
     (:line 4
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 6 (:print) (:print) (:print)) (:line 10 (:rem "
"))
     (:line 20 (:rem "     mastermind ii
"))
     (:line 30 (:rem "     steve north
"))
     (:line 40 (:rem "     creative computing
"))
     (:line 50 (:rem "     po box 789-m morristown new jersey 07960
"))
     (:line 60 (:rem "
")) (:line 70 (:rem "
"))
     (:line 80 (:input "number of colors" ((:var c9))))
     (:line 90 (:if (:binary :gt (:var c9) (:icon 8)))
      (:print (:scon "no more than 8, please!")) (:goto 80))
     (:line 100 (:input "number of positions" ((:var p9))))
     (:line 110 (:input "number of rounds" ((:var r9))))
     (:line 120 (:let (:var p) (:exp (:var c9) (:var p9))))
     (:line 130 (:print (:scon "total possibilities =") :semi (:var p)))
     (:line 140 (:let (:var h) (:icon 0)) (:let (:var c) (:icon 0)))
     (:line 150
      (:dim
       ((:dimd q (:var p9)) (:dimd2 s (:icon 10) (:icon 2))
        (:dimd s$ (:icon 10)) (:dimd a$ (:var p9))
        (:dimd g$ (:var p9)) (:dimd i (:var p))
        (:dimd h$ (:var p9)))))
     (:line 160 (:let (:var l$) (:scon "bwrgoypt"))) (:line 170 (:print))
     (:line 180 (:print)) (:line 190 (:print (:scon "color     letter")))
     (:line 200 (:print (:scon "=====     ======")))
     (:line 210 (:for x (:icon 1) (:var c9) nil))
     (:line 220 (:read (:var x$)))
     (:line 230
      (:print (:var x$) :semi (:apply tab (:icon 13)) :semi
       (:apply mid$ (:var l$) (:var x) (:icon 1))))
     (:line 240 (:next x)) (:line 250 (:print))
     (:line 260 (:for r (:icon 1) (:var r9) nil)) (:line 270 (:print))
     (:line 280
      (:print (:scon "round number") :semi (:var r) :semi (:scon "----")))
     (:line 290 (:print))
     (:line 300 (:print (:scon "guess my combination.")) (:print))
     (:line 310 (:rem "     get a combination
"))
     (:line 320
      (:let (:var a)
       (:apply int
        (:binary :plus (:binary :mul (:var p) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 330 (:gosub 3000))
     (:line 340 (:for x (:icon 1) (:var a) nil))
     (:line 350 (:gosub 3500)) (:line 360 (:next x))
     (:line 370 (:for m (:icon 1) (:icon 10) nil))
     (:line 380
      (:print (:scon "move # ") :semi (:var m) :semi (:scon " guess ")
       :semi)
      (:input nil ((:var x$))))
     (:line 390 (:if (:binary :eq (:var x$) (:scon "board"))) (:goto 2000))
     (:line 400 (:if (:binary :eq (:var x$) (:scon "quit"))) (:goto 2500))
     (:line 410
      (:if (:binary :ne (:apply len (:var x$)) (:var p9)))
      (:print (:scon "bad number of positions.")) (:goto 380))
     (:line 420 (:rem "     unpack x$ into g$(1-p9)
"))
     (:line 430 (:for x (:icon 1) (:var p9) nil))
     (:line 440 (:for y (:icon 1) (:var c9) nil))
     (:line 450
      (:if
       (:binary :eq (:apply mid$ (:var x$) (:var x) (:icon 1))
        (:apply mid$ (:var l$) (:var y) (:icon 1))))
      (:goto 480))
     (:line 460 (:next y))
     (:line 470
      (:print (:scon "'") :semi
       (:apply mid$ (:var x$) (:var x) (:icon 1)) :semi
       (:scon "' is unrecognized."))
      (:goto 380))
     (:line 480
      (:let (:apply g$ (:var x))
       (:apply mid$ (:var x$) (:var x) (:icon 1))))
     (:line 490 (:next x))
     (:line 500
      (:rem "     now we convert q(1-p9) into a$(1-p9) [actual guess]
"))
     (:line 510 (:gosub 4000))
     (:line 520 (:rem "     and get number of blacks and whites
"))
     (:line 530 (:gosub 4500))
     (:line 540 (:if (:binary :eq (:var b) (:var p9))) (:goto 630))
     (:line 550 (:rem "     tell human results
"))
     (:line 560
      (:print (:scon "you have ") :semi (:var b) :semi
       (:scon " blacks and ") :semi (:var w) :semi (:scon " whites.")))
     (:line 570 (:rem "     save all this stuff for board printout later
"))
     (:line 580 (:let (:apply s$ (:var m)) (:var x$)))
     (:line 590 (:let (:apply s (:var m) (:icon 1)) (:var b)))
     (:line 600 (:let (:apply s (:var m) (:icon 2)) (:var w)))
     (:line 610 (:next m))
     (:line 620 (:print (:scon "you ran out of moves!  that's all you get!"))
      (:goto 640))
     (:line 622 (:gosub 4000))
     (:line 623 (:print (:scon "the actual combination was: ") :semi))
     (:line 624 (:for x (:icon 1) (:var p9) nil))
     (:line 625 (:print (:apply a$ (:var x)) :semi))
     (:line 626 (:next x)) (:line 627 (:print))
     (:line 630
      (:print (:scon "you guessed it in ") :semi (:var m) :semi
       (:scon " moves!")))
     (:line 640 (:let (:var h) (:binary :plus (:var h) (:var m))))
     (:line 650 (:gosub 5000)) (:line 660 (:rem "
"))
     (:line 670 (:rem "     now computer guesses
")) (:line 680 (:rem "
"))
     (:line 690 (:for x (:icon 1) (:var p) nil))
     (:line 700 (:let (:apply i (:var x)) (:icon 1)))
     (:line 710 (:next x))
     (:line 720 (:print (:scon "now i guess.  think of a combination.")))
     (:line 730 (:input "hit return when ready:" ((:var x$))))
     (:line 740 (:for m (:icon 1) (:icon 10) nil))
     (:line 750 (:gosub 3000)) (:line 760 (:rem "     find a guess
"))
     (:line 770
      (:let (:var g)
       (:apply int
        (:binary :plus (:binary :mul (:var p) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 780 (:if (:binary :eq (:apply i (:var g)) (:icon 1)))
      (:goto 890))
     (:line 790 (:for x (:var g) (:var p) nil))
     (:line 800 (:if (:binary :eq (:apply i (:var x)) (:icon 1)))
      (:goto 880))
     (:line 810 (:next x))
     (:line 820 (:for x (:icon 1) (:var g) nil))
     (:line 830 (:if (:binary :eq (:apply i (:var x)) (:icon 1)))
      (:goto 880))
     (:line 840 (:next x))
     (:line 850 (:print (:scon "you have given me inconsistent information.")))
     (:line 860
      (:print (:scon "try again, and this time please be more careful.")))
     (:line 870 (:goto 660)) (:line 880 (:let (:var g) (:var x)))
     (:line 890 (:rem "     now we convert guess #g into g$
"))
     (:line 900 (:for x (:icon 1) (:var g) nil))
     (:line 910 (:gosub 3500)) (:line 920 (:next x))
     (:line 930 (:gosub 6000))
     (:line 940 (:print (:scon "my guess is: ") :semi))
     (:line 950 (:for x (:icon 1) (:var p9) nil))
     (:line 960 (:print (:apply h$ (:var x)) :semi))
     (:line 970 (:next x))
     (:line 980 (:input "  blacks, whites " ((:var b1) (:var w1))))
     (:line 990 (:if (:binary :eq (:var b1) (:var p9))) (:goto 1120))
     (:line 1000 (:gosub 3000))
     (:line 1010 (:for x (:icon 1) (:var p) nil))
     (:line 1020 (:gosub 3500))
     (:line 1030 (:if (:binary :eq (:apply i (:var x)) (:icon 0)))
      (:goto 1070))
     (:line 1035 (:gosub 6500)) (:line 1040 (:gosub 4000))
     (:line 1050 (:gosub 4500))
     (:line 1060
      (:if
       (:lazy-binary :or (:binary :ne (:var b1) (:var b))
        (:binary :ne (:var w1) (:var w))))
      (:let (:apply i (:var x)) (:icon 0)))
     (:line 1070 (:next x)) (:line 1080 (:next m))
     (:line 1090 (:print (:scon "i used up all my moves!")))
     (:line 1100 (:print (:scon "i guess my cpu is just having an off day.")))
     (:line 1110 (:goto 1130))
     (:line 1120
      (:print (:scon "i got it in ") :semi (:var m) :semi
       (:scon " moves!")))
     (:line 1130 (:let (:var c) (:binary :plus (:var c) (:var m))))
     (:line 1140 (:gosub 5000)) (:line 1150 (:next r))
     (:line 1160 (:print (:scon "game over")))
     (:line 1170 (:print (:scon "final score:"))) (:line 1180 (:gosub 5040))
     (:line 1190 (:stop)) (:line 2000 (:rem "
"))
     (:line 2010 (:rem "     board printout routine
")) (:line 2020 (:rem "
"))
     (:line 2025 (:print)) (:line 2030 (:print (:scon "board")))
     (:line 2040 (:print (:scon "move     guess          black     white")))
     (:line 2050
      (:for z (:icon 1) (:binary :minus (:var m) (:icon 1)) nil))
     (:line 2060
      (:print (:var z) :semi (:apply tab (:icon 9)) :semi
       (:apply s$ (:var z)) :semi (:apply tab (:icon 25)) :semi
       (:apply s (:var z) (:icon 1)) :semi (:apply tab (:icon 35))
       :semi (:apply s (:var z) (:icon 2))))
     (:line 2070 (:next z)) (:line 2075 (:print)) (:line 2080 (:goto 380))
     (:line 2500 (:rem "
")) (:line 2510 (:rem "     quit routine
"))
     (:line 2520 (:rem "
"))
     (:line 2530 (:print (:scon "quitter!  my combination was: ") :semi))
     (:line 2535 (:gosub 4000))
     (:line 2540 (:for x (:icon 1) (:var p9) nil))
     (:line 2550 (:print (:apply a$ (:var x)) :semi))
     (:line 2560 (:next x)) (:line 2565 (:print))
     (:line 2570 (:print (:scon "good bye"))) (:line 2580 (:stop))
     (:line 3000 (:rem "
"))
     (:line 3010 (:rem "     initialize q(1-p9) to zeros
"))
     (:line 3020 (:rem "
"))
     (:line 3030 (:for s (:icon 1) (:var p9) nil))
     (:line 3040 (:let (:apply q (:var s)) (:icon 0)))
     (:line 3050 (:next s)) (:line 3060 (:return)) (:line 3500 (:rem "
"))
     (:line 3510 (:rem "     increment q(1-p9)
")) (:line 3520 (:rem "
"))
     (:line 3522 (:if (:binary :gt (:apply q (:icon 1)) (:icon 0)))
      (:goto 3530))
     (:line 3524
      (:rem "  if zero, this is our first increment: make all ones
"))
     (:line 3526 (:for s (:icon 1) (:var p9) nil))
     (:line 3527 (:let (:apply q (:var s)) (:icon 1)))
     (:line 3528 (:next s)) (:line 3529 (:return))
     (:line 3530 (:let (:var q) (:icon 1)))
     (:line 3540
      (:let (:apply q (:var q))
       (:binary :plus (:apply q (:var q)) (:icon 1))))
     (:line 3550 (:if (:binary :le (:apply q (:var q)) (:var c9)))
      (:return))
     (:line 3560 (:let (:apply q (:var q)) (:icon 1)))
     (:line 3570 (:let (:var q) (:binary :plus (:var q) (:icon 1))))
     (:line 3580 (:goto 3540)) (:line 4000 (:rem "
"))
     (:line 4010 (:rem "     convert q(1-p9) to a$(1-p9)
"))
     (:line 4020 (:rem "
"))
     (:line 4030 (:for s (:icon 1) (:var p9) nil))
     (:line 4040
      (:let (:apply a$ (:var s))
       (:apply mid$ (:var l$) (:apply q (:var s)) (:icon 1))))
     (:line 4050 (:next s)) (:line 4060 (:return)) (:line 4500 (:rem "
"))
     (:line 4510 (:rem "     get number of blacks (b) and whites (w)
"))
     (:line 4520 (:rem "     mashes g$ and a$ in the process
"))
     (:line 4530 (:rem "
"))
     (:line 4540 (:let (:var b) (:icon 0)) (:let (:var w) (:icon 0))
      (:let (:var f) (:icon 0)))
     (:line 4550 (:for s (:icon 1) (:var p9) nil))
     (:line 4560
      (:if
       (:binary :ne (:apply g$ (:var s)) (:apply a$ (:var s))))
      (:goto 4620))
     (:line 4570 (:let (:var b) (:binary :plus (:var b) (:icon 1))))
     (:line 4580
      (:let (:apply g$ (:var s)) (:apply chr$ (:var f))))
     (:line 4590
      (:let (:apply a$ (:var s))
       (:apply chr$ (:binary :plus (:var f) (:icon 1)))))
     (:line 4600 (:let (:var f) (:binary :plus (:var f) (:icon 2))))
     (:line 4610 (:goto 4660))
     (:line 4620 (:for t (:icon 1) (:var p9) nil))
     (:line 4630
      (:if
       (:binary :ne (:apply g$ (:var s)) (:apply a$ (:var t))))
      (:goto 4650))
     (:line 4640
      (:if
       (:binary :eq (:apply g$ (:var t)) (:apply a$ (:var t))))
      (:goto 4650))
     (:line 4645 (:let (:var w) (:binary :plus (:var w) (:icon 1)))
      (:let (:apply a$ (:var t)) (:apply chr$ (:var f)))
      (:let (:apply g$ (:var s))
       (:apply chr$ (:binary :plus (:var f) (:icon 1))))
      (:let (:var f) (:binary :plus (:var f) (:icon 2))) (:goto 4660))
     (:line 4650 (:next t)) (:line 4660 (:next s))
     (:line 4670 (:return)) (:line 5000 (:rem "
"))
     (:line 5010 (:rem "     print score
")) (:line 5020 (:rem "
"))
     (:line 5030 (:print (:scon "score:")))
     (:line 5040 (:print (:scon "     computer ") :semi (:var c)))
     (:line 5050 (:print (:scon "     human    ") :semi (:var h)))
     (:line 5060 (:print)) (:line 5070 (:return)) (:line 5500 (:rem "
"))
     (:line 5510 (:rem "     convert q(1-p9) into g$(1-p9)
"))
     (:line 5520 (:rem "
"))
     (:line 5530 (:for s (:icon 1) (:var p9) nil))
     (:line 5540
      (:let (:apply g$ (:var s))
       (:apply mid$ (:var l$) (:apply q (:var s)) (:icon 1))))
     (:line 5550 (:next s)) (:line 5560 (:return)) (:line 6000 (:rem "
"))
     (:line 6010 (:rem "     convert q(1-p9) to h$(1-p9)
"))
     (:line 6020 (:rem "
"))
     (:line 6030 (:for s (:icon 1) (:var p9) nil))
     (:line 6040
      (:let (:apply h$ (:var s))
       (:apply mid$ (:var l$) (:apply q (:var s)) (:icon 1))))
     (:line 6050 (:next s)) (:line 6060 (:return)) (:line 6500 (:rem "
"))
     (:line 6510 (:rem "     copy h$ into g$
")) (:line 6520 (:rem "
"))
     (:line 6530 (:for s (:icon 1) (:var p9) nil))
     (:line 6540
      (:let (:apply g$ (:var s)) (:apply h$ (:var s))))
     (:line 6550 (:next s)) (:line 6560 (:return))
     (:line 8000 (:rem "     program data for color names
"))
     (:line 8010
      (:data (:var black) (:var white) (:var red) (:var green)
       (:var orange) (:var yellow) (:var purple) (:var tan)))
     (:line 9998 (:rem "   ...we're sorry but it's time to go...
"))
     (:line 9999 (:end)))))



(defvar *mathdice*
  '(((:line 10 (:print (:apply tab (:icon 31)) :semi (:scon "math dice")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print))
     (:line 40
      (:print
       (:scon "this program generates succesive pictures of two dice.")))
     (:line 50
      (:print
       (:scon "when two dice and an equal sign followed by a question")))
     (:line 60
      (:print
       (:scon "mark have been printed, type your answer and the return key.")))
     (:line 70
      (:print
       (:scon "to conclude the lesson, type control-c as your answer.")))
     (:line 80 (:print)) (:line 90 (:print))
     (:line 100 (:let (:var n) (:binary :plus (:var n) (:icon 1))))
     (:line 110
      (:let (:var d)
       (:apply int
        (:binary :plus (:binary :mul (:icon 6) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 120 (:print (:scon " ----- ")))
     (:line 130 (:if (:binary :eq (:var d) (:icon 1))) (:goto 200))
     (:line 140 (:if (:binary :eq (:var d) (:icon 2))) (:goto 180))
     (:line 150 (:if (:binary :eq (:var d) (:icon 3))) (:goto 180))
     (:line 160 (:print (:scon "i * * i"))) (:line 170 (:goto 210))
     (:line 180 (:print (:scon "i *   i"))) (:line 190 (:goto 210))
     (:line 200 (:print (:scon "i     i")))
     (:line 210 (:if (:binary :eq (:var d) (:icon 2))) (:goto 260))
     (:line 220 (:if (:binary :eq (:var d) (:icon 4))) (:goto 260))
     (:line 230 (:if (:binary :eq (:var d) (:icon 6))) (:goto 270))
     (:line 240 (:print (:scon "i  *  i"))) (:line 250 (:goto 280))
     (:line 260 (:print (:scon "i     i"))) (:line 265 (:goto 280))
     (:line 270 (:print (:scon "i * * i")))
     (:line 280 (:if (:binary :eq (:var d) (:icon 1))) (:goto 350))
     (:line 290 (:if (:binary :eq (:var d) (:icon 2))) (:goto 330))
     (:line 300 (:if (:binary :eq (:var d) (:icon 3))) (:goto 330))
     (:line 310 (:print (:scon "i * * i"))) (:line 320 (:goto 360))
     (:line 330 (:print (:scon "i   * i"))) (:line 340 (:goto 360))
     (:line 350 (:print (:scon "i     i")))
     (:line 360 (:print (:scon " ----- "))) (:line 370 (:print))
     (:line 375 (:if (:binary :eq (:var n) (:icon 2))) (:goto 500))
     (:line 380 (:print (:scon "   +"))) (:line 381 (:print))
     (:line 400 (:let (:var a) (:var d))) (:line 410 (:goto 100))
     (:line 500 (:let (:var t) (:binary :plus (:var d) (:var a))))
     (:line 510 (:print (:scon "      =") :semi))
     (:line 520 (:input nil ((:var t1))))
     (:line 530 (:if (:binary :eq (:var t1) (:var t))) (:goto 590))
     (:line 540
      (:print (:scon "no, count the spots and give another answer.")))
     (:line 541 (:print (:scon "      =") :semi))
     (:line 550 (:input nil ((:var t2))))
     (:line 560 (:if (:binary :eq (:var t2) (:var t))) (:goto 590))
     (:line 570 (:print (:scon "no, the answer is") :semi (:var t)))
     (:line 580 (:goto 600)) (:line 590 (:print (:scon "right!")))
     (:line 600 (:print)) (:line 601 (:print (:scon "the dice roll again...")))
     (:line 610 (:print)) (:line 615 (:let (:var n) (:icon 0)))
     (:line 620 (:goto 100)) (:line 999 (:end)))))



(defvar *mugwump*
  '(((:line 1 (:print (:apply tab (:icon 33)) :semi (:scon "mugwump")))
     (:line 2
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 3 (:print) (:print) (:print))
     (:line 4 (:rem "     courtesy people's computer company
"))
     (:line 10 (:dim ((:dimd2 p (:icon 4) (:icon 2)))))
     (:line 20
      (:print (:scon "the object of this game is to find four mugwumps")))
     (:line 30
      (:print (:scon "hidden on a 10 by 10 grid.  homebase is position 0,0.")))
     (:line 40
      (:print (:scon "any guess you make must be two numbers with each")))
     (:line 50
      (:print (:scon "number between 0 and 9, inclusive.  first number")))
     (:line 60
      (:print (:scon "is distance to right of homebase and second number")))
     (:line 70 (:print (:scon "is distance above homebase.")))
     (:line 80 (:print))
     (:line 90
      (:print (:scon "you get 10 tries.  after each try, i will tell")))
     (:line 100 (:print (:scon "you how far you are from each mugwump.")))
     (:line 110 (:print)) (:line 240 (:gosub 1000))
     (:line 250 (:let (:var t) (:icon 0)))
     (:line 260 (:let (:var t) (:binary :plus (:var t) (:icon 1))))
     (:line 270 (:print)) (:line 275 (:print))
     (:line 290
      (:print (:scon "turn no.") :semi (:var t) :semi
       (:scon "-- what is your guess") :semi))
     (:line 300 (:input nil ((:var m) (:var n))))
     (:line 310 (:for i (:icon 1) (:icon 4) nil))
     (:line 320
      (:if
       (:binary :eq (:apply p (:var i) (:icon 1)) (:uminus (:icon 1))))
      (:goto 400))
     (:line 330
      (:if (:binary :ne (:apply p (:var i) (:icon 1)) (:var m)))
      (:goto 380))
     (:line 340
      (:if (:binary :ne (:apply p (:var i) (:icon 2)) (:var n)))
      (:goto 380))
     (:line 350
      (:let (:apply p (:var i) (:icon 1)) (:uminus (:icon 1))))
     (:line 360 (:print (:scon "you have found mugwump") :semi (:var i)))
     (:line 370 (:goto 400))
     (:line 380
      (:let (:var d)
       (:apply sqr
        (:binary :plus
         (:exp
          (:binary :minus (:apply p (:var i) (:icon 1)) (:var m))
          (:icon 2))
         (:exp
          (:binary :minus (:apply p (:var i) (:icon 2)) (:var n))
          (:icon 2))))))
     (:line 390
      (:print (:scon "you are") :semi
       (:binary :div (:apply int (:binary :mul (:var d) (:icon 10)))
        (:icon 10))
       :semi (:scon "units from mugwump") :semi (:var i)))
     (:line 400 (:next i)) (:line 410 (:for j (:icon 1) (:icon 4) nil))
     (:line 420
      (:if
       (:binary :ne (:apply p (:var j) (:icon 1)) (:uminus (:icon 1))))
      (:goto 470))
     (:line 430 (:next j)) (:line 440 (:print))
     (:line 450
      (:print (:scon "you got them all in") :semi (:var t) :semi
       (:scon "turns!")))
     (:line 460 (:goto 580))
     (:line 470 (:if (:binary :lt (:var t) (:icon 10))) (:goto 260))
     (:line 480 (:print))
     (:line 490
      (:print
       (:scon "sorry, that's 10 tries.  here is where they're hiding:")))
     (:line 540 (:for i (:icon 1) (:icon 4) nil))
     (:line 550
      (:if
       (:binary :eq (:apply p (:var i) (:icon 1)) (:uminus (:icon 1))))
      (:goto 570))
     (:line 560
      (:print (:scon "mugwump") :semi (:var i) :semi (:scon "is at (")
       :semi (:apply p (:var i) (:icon 1)) :semi (:scon ",") :semi
       (:apply p (:var i) (:icon 2)) :semi (:scon ")")))
     (:line 570 (:next i)) (:line 580 (:print))
     (:line 600 (:print (:scon "that was fun! let's play again.......")))
     (:line 610 (:print (:scon "four more mugwumps are now in hiding.")))
     (:line 630 (:goto 240)) (:line 1000 (:for j (:icon 1) (:icon 2) nil))
     (:line 1010 (:for i (:icon 1) (:icon 4) nil))
     (:line 1020
      (:let (:apply p (:var i) (:var j))
       (:apply int (:binary :mul (:icon 10) (:apply rnd (:icon 1))))))
     (:line 1030 (:next i)) (:line 1040 (:next j))
     (:line 1050 (:return)) (:line 1099 (:end)))))



(defvar *name*
  '(((:line 1 (:print (:apply tab (:icon 34)) :semi (:scon "name")))
     (:line 2
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 3 (:print) (:print) (:print))
     (:line 5 (:dim ((:dimd b$ (:icon 40)))))
     (:line 10 (:print (:scon "hello."))
      (:print (:scon "my name is creative computer.")))
     (:line 20 (:print (:scon "what's your name (first and last") :semi)
      (:input nil ((:var a$)))
      (:let (:var l) (:apply len (:var a$))))
     (:line 30 (:print) (:print (:scon "thank you, ") :semi))
     (:line 40 (:for i (:icon 1) (:var l) nil)
      (:let (:apply b$ (:var i))
       (:apply mid$ (:var a$) (:var i) (:icon 1)))
      (:next i))
     (:line 50 (:for i (:var l) (:icon 1) (:uminus (:icon 1)))
      (:print (:apply b$ (:var i)) :semi) (:next i))
     (:line 60 (:print (:scon "."))
      (:print (:scon "oops!  i guess i got it backwards.  a smart")))
     (:line 70
      (:print (:scon "computer like me shouldn't make a mistake like that!"))
      (:print))
     (:line 80
      (:print (:scon "but i just noticed your letters are out of order.")))
     (:line 90 (:print (:scon "let's put them in order like this: ") :semi))
     (:line 100 (:for j (:icon 2) (:var l) nil)
      (:let (:var i) (:binary :minus (:var j) (:icon 1)))
      (:let (:var t$) (:apply b$ (:var j))))
     (:line 110 (:if (:binary :gt (:var t$) (:apply b$ (:var i))))
      (:goto 130))
     (:line 120
      (:let (:apply b$ (:binary :plus (:var i) (:icon 1)))
       (:apply b$ (:var i)))
      (:let (:var i) (:binary :minus (:var i) (:icon 1)))
      (:if (:binary :gt (:var i) (:icon 0))) (:goto 110))
     (:line 130
      (:let (:apply b$ (:binary :plus (:var i) (:icon 1)))
       (:var t$))
      (:next j))
     (:line 140 (:for i (:icon 1) (:var l) nil)
      (:print (:apply b$ (:var i)) :semi) (:next i) (:print)
      (:print))
     (:line 150 (:print (:scon "don't you like that better") :semi)
      (:input nil ((:var d$))))
     (:line 160 (:if (:binary :eq (:var d$) (:scon "yes"))) (:goto 180))
     (:line 170 (:print)
      (:print (:scon "i'm sorry you don't like it that way.")) (:goto 200))
     (:line 180 (:print) (:print (:scon "i knew you'd agree!!")))
     (:line 200 (:print)
      (:print (:scon "i really enjoyed meeting you ") :semi (:var a$) :semi
       (:scon ".")))
     (:line 210 (:print (:scon "have a nice day!"))) (:line 999 (:end)))))



(defvar *nicomachus*
  '(((:line 2 (:print (:apply tab (:icon 33)) :semi (:scon "nicoma")))
     (:line 4
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 6 (:print) (:print) (:print))
     (:line 10
      (:print
       (:scon "boomerang puzzle from arithmetica of nicomachus -- a.d. 90!")))
     (:line 20 (:print))
     (:line 30 (:print (:scon "please think of a number between 1 and 100.")))
     (:line 40
      (:print (:scon "your number divided by 3 has a remainder of") :semi))
     (:line 45 (:input nil ((:var a))))
     (:line 50
      (:print (:scon "your number divided by 5 has a remainder of") :semi))
     (:line 55 (:input nil ((:var b))))
     (:line 60
      (:print (:scon "your number divided by 7 has a remainder of") :semi))
     (:line 65 (:input nil ((:var c)))) (:line 70 (:print))
     (:line 80 (:print (:scon "let me think a moment..."))) (:line 85 (:print))
     (:line 90 (:for i (:icon 1) (:icon 1500) nil) (:next i))
     (:line 100
      (:let (:var d)
       (:binary :plus
        (:binary :plus (:binary :mul (:icon 70) (:var a))
         (:binary :mul (:icon 21) (:var b)))
        (:binary :mul (:icon 15) (:var c)))))
     (:line 110 (:if (:binary :le (:var d) (:icon 105))) (:goto 140))
     (:line 120 (:let (:var d) (:binary :minus (:var d) (:icon 105))))
     (:line 130 (:goto 110))
     (:line 140
      (:print (:scon "your number was") :semi (:var d) :semi
       (:scon ", right") :semi))
     (:line 160 (:input nil ((:var a$)))) (:line 165 (:print))
     (:line 170 (:if (:binary :eq (:var a$) (:scon "yes"))) (:goto 220))
     (:line 180 (:if (:binary :eq (:var a$) (:scon "no"))) (:goto 240))
     (:line 190
      (:print (:scon "eh?  i don't understand '") :semi (:var a$) :semi
       (:scon "'  try 'yes' or 'no'.")))
     (:line 200 (:goto 160)) (:line 220 (:print (:scon "how about that!!")))
     (:line 230 (:goto 250))
     (:line 240 (:print (:scon "i feel your arithmetic is in error.")))
     (:line 250 (:print)) (:line 260 (:print (:scon "let's try another.")))
     (:line 270 (:goto 20)) (:line 999 (:end)))))



(defvar *nim*
  '(((:line 100 (:print (:apply tab (:icon 33)) :semi (:scon "nim")))
     (:line 110
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 120 (:print) (:print) (:print))
     (:line 210
      (:dim
       ((:dimd a (:icon 100)) (:dimd2 b (:icon 100) (:icon 10))
        (:dimd d (:icon 2)))))
     (:line 220 (:print (:scon "this is the game of nim.")))
     (:line 230 (:print (:scon "do you want instructions") :semi))
     (:line 240 (:input nil ((:var z$))))
     (:line 250 (:if (:binary :eq (:var z$) (:scon "no"))) (:goto 440))
     (:line 260 (:if (:binary :eq (:var z$) (:scon "no"))) (:goto 440))
     (:line 270 (:if (:binary :eq (:var z$) (:scon "yes"))) (:goto 310))
     (:line 280 (:if (:binary :eq (:var z$) (:scon "yes"))) (:goto 310))
     (:line 290 (:print (:scon "please answer yes or no")))
     (:line 300 (:goto 240))
     (:line 310
      (:print (:scon "the game is played with a number of piles of objects.")))
     (:line 320
      (:print
       (:scon "any number of objects are removed from one pile by you and")))
     (:line 330
      (:print (:scon "the machine alternately.  on your turn, you may take")))
     (:line 340
      (:print (:scon "all the objects that remain in any pile, but you must")))
     (:line 350
      (:print
       (:scon "take at least one object, and you may take objects from")))
     (:line 360
      (:print
       (:scon "only one pile on a single turn.  you must specify whether")))
     (:line 370
      (:print
       (:scon "winning is defined as taking or not taking the last object,")))
     (:line 380
      (:print
       (:scon "the number of piles in the game, and how many objects are")))
     (:line 390
      (:print (:scon "originally in each pile.  each pile may contain a")))
     (:line 400 (:print (:scon "different number of objects.")))
     (:line 410
      (:print
       (:scon "the machine will show its move by listing each pile and the")))
     (:line 420
      (:print
       (:scon "number of objects remaining in the piles after  each of its")))
     (:line 430 (:print (:scon "moves."))) (:line 440 (:print))
     (:line 450
      (:print (:scon "enter win option - 1 to take last, 2 to avoid last")
       :semi))
     (:line 460 (:input nil ((:var w))))
     (:line 470 (:if (:binary :eq (:var w) (:icon 1))) (:goto 490))
     (:line 480 (:if (:binary :ne (:var w) (:icon 2))) (:goto 450))
     (:line 490 (:print (:scon "enter number of piles") :semi))
     (:line 500 (:input nil ((:var n))))
     (:line 510 (:if (:binary :gt (:var n) (:icon 100))) (:goto 490))
     (:line 520 (:if (:binary :lt (:var n) (:icon 1))) (:goto 490))
     (:line 530 (:if (:binary :ne (:var n) (:apply int (:var n))))
      (:goto 490))
     (:line 540 (:print (:scon "enter pile sizes")))
     (:line 550 (:for i (:icon 1) (:var n) nil))
     (:line 560 (:print (:var i) :semi))
     (:line 570 (:input nil ((:apply a (:var i)))))
     (:line 580 (:if (:binary :gt (:apply a (:var i)) (:icon 2000)))
      (:goto 560))
     (:line 590 (:if (:binary :lt (:apply a (:var i)) (:icon 1)))
      (:goto 560))
     (:line 600
      (:if
       (:binary :ne (:apply a (:var i))
        (:apply int (:apply a (:var i)))))
      (:goto 560))
     (:line 610 (:next i))
     (:line 620 (:print (:scon "do you want to move first") :semi))
     (:line 630 (:input nil ((:var q9$))))
     (:line 640 (:if (:binary :eq (:var q9$) (:scon "yes"))) (:goto 1450))
     (:line 650 (:if (:binary :eq (:var q9$) (:scon "yes"))) (:goto 1450))
     (:line 660 (:if (:binary :eq (:var q9$) (:scon "no"))) (:goto 700))
     (:line 670 (:if (:binary :eq (:var q9$) (:scon "no"))) (:goto 700))
     (:line 680 (:print (:scon "please answer yes or no.")))
     (:line 690 (:goto 630))
     (:line 700 (:if (:binary :eq (:var w) (:icon 1))) (:goto 940))
     (:line 710 (:let (:var c) (:icon 0)))
     (:line 720 (:for i (:icon 1) (:var n) nil))
     (:line 730 (:if (:binary :eq (:apply a (:var i)) (:icon 0)))
      (:goto 770))
     (:line 740 (:let (:var c) (:binary :plus (:var c) (:icon 1))))
     (:line 750 (:if (:binary :eq (:var c) (:icon 3))) (:goto 840))
     (:line 760 (:let (:apply d (:var c)) (:var i)))
     (:line 770 (:next i))
     (:line 780 (:if (:binary :eq (:var c) (:icon 2))) (:goto 920))
     (:line 790
      (:if (:binary :gt (:apply a (:apply d (:icon 1))) (:icon 1)))
      (:goto 820))
     (:line 800 (:print (:scon "machine loses"))) (:line 810 (:goto 1640))
     (:line 820 (:print (:scon "machine wins"))) (:line 830 (:goto 1640))
     (:line 840 (:let (:var c) (:icon 0)))
     (:line 850 (:for i (:icon 1) (:var n) nil))
     (:line 860 (:if (:binary :gt (:apply a (:var i)) (:icon 1)))
      (:goto 940))
     (:line 870 (:if (:binary :eq (:apply a (:var i)) (:icon 0)))
      (:goto 890))
     (:line 880 (:let (:var c) (:binary :plus (:var c) (:icon 1))))
     (:line 890 (:next i))
     (:line 900
      (:if
       (:binary :ne (:binary :div (:var c) (:icon 2))
        (:apply int (:binary :div (:var c) (:icon 2)))))
      (:goto 800))
     (:line 910 (:goto 940))
     (:line 920
      (:if (:binary :eq (:apply a (:apply d (:icon 1))) (:icon 1)))
      (:goto 820))
     (:line 930
      (:if (:binary :eq (:apply a (:apply d (:icon 2))) (:icon 1)))
      (:goto 820))
     (:line 940 (:for i (:icon 1) (:var n) nil))
     (:line 950 (:let (:var e) (:apply a (:var i))))
     (:line 960 (:for j (:icon 0) (:icon 10) nil))
     (:line 970 (:let (:var f) (:binary :div (:var e) (:icon 2))))
     (:line 980
      (:let (:apply b (:var i) (:var j))
       (:binary :mul (:icon 2)
        (:binary :minus (:var f) (:apply int (:var f))))))
     (:line 990 (:let (:var e) (:apply int (:var f))))
     (:line 1000 (:next j)) (:line 1010 (:next i))
     (:line 1020 (:for j (:icon 10) (:icon 0) (:uminus (:icon 1))))
     (:line 1030 (:let (:var c) (:icon 0)))
     (:line 1040 (:let (:var h) (:icon 0)))
     (:line 1050 (:for i (:icon 1) (:var n) nil))
     (:line 1060
      (:if (:binary :eq (:apply b (:var i) (:var j)) (:icon 0)))
      (:goto 1110))
     (:line 1070 (:let (:var c) (:binary :plus (:var c) (:icon 1))))
     (:line 1080 (:if (:binary :le (:apply a (:var i)) (:var h)))
      (:goto 1110))
     (:line 1090 (:let (:var h) (:apply a (:var i))))
     (:line 1100 (:let (:var g) (:var i))) (:line 1110 (:next i))
     (:line 1120
      (:if
       (:binary :ne (:binary :div (:var c) (:icon 2))
        (:apply int (:binary :div (:var c) (:icon 2)))))
      (:goto 1190))
     (:line 1130 (:next j))
     (:line 1140
      (:let (:var e)
       (:apply int
        (:binary :plus (:binary :mul (:var n) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 1150 (:if (:binary :eq (:apply a (:var e)) (:icon 0)))
      (:goto 1140))
     (:line 1160
      (:let (:var f)
       (:apply int
        (:binary :plus
         (:binary :mul (:apply a (:var e)) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 1170
      (:let (:apply a (:var e))
       (:binary :minus (:apply a (:var e)) (:var f))))
     (:line 1180 (:goto 1380))
     (:line 1190 (:let (:apply a (:var g)) (:icon 0)))
     (:line 1200 (:for j (:icon 0) (:icon 10) nil))
     (:line 1210 (:let (:apply b (:var g) (:var j)) (:icon 0)))
     (:line 1220 (:let (:var c) (:icon 0)))
     (:line 1230 (:for i (:icon 1) (:var n) nil))
     (:line 1240
      (:if (:binary :eq (:apply b (:var i) (:var j)) (:icon 0)))
      (:goto 1260))
     (:line 1250 (:let (:var c) (:binary :plus (:var c) (:icon 1))))
     (:line 1260 (:next i))
     (:line 1270
      (:let (:apply a (:var g))
       (:binary :plus (:apply a (:var g))
        (:binary :mul
         (:binary :mul (:icon 2)
          (:binary :minus (:binary :div (:var c) (:icon 2))
           (:apply int (:binary :div (:var c) (:icon 2)))))
         (:exp (:icon 2) (:var j))))))
     (:line 1280 (:next j))
     (:line 1290 (:if (:binary :eq (:var w) (:icon 1))) (:goto 1380))
     (:line 1300 (:let (:var c) (:icon 0)))
     (:line 1310 (:for i (:icon 1) (:var n) nil))
     (:line 1320 (:if (:binary :gt (:apply a (:var i)) (:icon 1)))
      (:goto 1380))
     (:line 1330 (:if (:binary :eq (:apply a (:var i)) (:icon 0)))
      (:goto 1350))
     (:line 1340 (:let (:var c) (:binary :plus (:var c) (:icon 1))))
     (:line 1350 (:next i))
     (:line 1360
      (:if
       (:binary :ne (:binary :div (:var c) (:icon 2))
        (:apply int (:binary :div (:var c) (:icon 2)))))
      (:goto 1380))
     (:line 1370
      (:let (:apply a (:var g))
       (:binary :minus (:icon 1) (:apply a (:var g)))))
     (:line 1380 (:print (:scon "pile  size")))
     (:line 1390 (:for i (:icon 1) (:var n) nil))
     (:line 1400 (:print (:var i) :semi (:apply a (:var i))))
     (:line 1410 (:next i))
     (:line 1420 (:if (:binary :eq (:var w) (:icon 2))) (:goto 1450))
     (:line 1430 (:gosub 1570))
     (:line 1440 (:if (:binary :eq (:var z) (:icon 1))) (:goto 820))
     (:line 1450
      (:print (:scon "your move - pile, number to be removed") :semi))
     (:line 1460 (:input nil ((:var x) (:var y))))
     (:line 1470 (:if (:binary :gt (:var x) (:var n))) (:goto 1450))
     (:line 1480 (:if (:binary :lt (:var x) (:icon 1))) (:goto 1450))
     (:line 1490 (:if (:binary :ne (:var x) (:apply int (:var x))))
      (:goto 1450))
     (:line 1500 (:if (:binary :gt (:var y) (:apply a (:var x))))
      (:goto 1450))
     (:line 1510 (:if (:binary :lt (:var y) (:icon 1))) (:goto 1450))
     (:line 1520 (:if (:binary :ne (:var y) (:apply int (:var y))))
      (:goto 1450))
     (:line 1530
      (:let (:apply a (:var x))
       (:binary :minus (:apply a (:var x)) (:var y))))
     (:line 1540 (:gosub 1570))
     (:line 1550 (:if (:binary :eq (:var z) (:icon 1))) (:goto 800))
     (:line 1560 (:goto 700)) (:line 1570 (:let (:var z) (:icon 0)))
     (:line 1580 (:for i (:icon 1) (:var n) nil))
     (:line 1590 (:if (:binary :eq (:apply a (:var i)) (:icon 0)))
      (:goto 1610))
     (:line 1600 (:return)) (:line 1610 (:next i))
     (:line 1620 (:let (:var z) (:icon 1))) (:line 1630 (:return))
     (:line 1640 (:print (:scon "do you want to play another game") :semi))
     (:line 1650 (:input nil ((:var q9$))))
     (:line 1660 (:if (:binary :eq (:var q9$) (:scon "yes"))) (:goto 1720))
     (:line 1670 (:if (:binary :eq (:var q9$) (:scon "yes"))) (:goto 1720))
     (:line 1680 (:if (:binary :eq (:var q9$) (:scon "no"))) (:goto 1730))
     (:line 1690 (:if (:binary :eq (:var q9$) (:scon "no"))) (:goto 1730))
     (:line 1700 (:print (:scon "please.  yes or no.")))
     (:line 1710 (:goto 1650)) (:line 1720 (:goto 440)) (:line 1730 (:end)))))



(defvar *number*
  '(((:line 1 (:print (:apply tab (:icon 33)) :semi (:scon "number")))
     (:line 2
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 3 (:print) (:print) (:print))
     (:line 4
      (:print
       (:scon "you have 100 points.  by guessing numbers from 1 to 5, you")))
     (:line 5
      (:print
       (:scon "can gain or lose points depending upon how close you get to")))
     (:line 6 (:print (:scon "a random number selected by the computer."))
      (:print))
     (:line 7
      (:print
       (:scon "you occasionally will get a jackpot which will double(!)")))
     (:line 8
      (:print (:scon "your point count.  you win when you get 500 points.")))
     (:line 9 (:print) (:let (:var p) (:icon 100)))
     (:line 10
      (:def fnr x
       (:apply int
        (:binary :plus (:binary :mul (:icon 5) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 12 (:input "guess a number from 1 to 5" ((:var g))))
     (:line 15 (:let (:var r) (:apply fnr (:icon 1))))
     (:line 16 (:let (:var s) (:apply fnr (:icon 1))))
     (:line 17 (:let (:var t) (:apply fnr (:icon 1))))
     (:line 18 (:let (:var u) (:apply fnr (:icon 1))))
     (:line 19 (:let (:var v) (:apply fnr (:icon 1))))
     (:line 20 (:if (:binary :eq (:var g) (:var r))) (:goto 30))
     (:line 21 (:if (:binary :eq (:var g) (:var s))) (:goto 40))
     (:line 22 (:if (:binary :eq (:var g) (:var t))) (:goto 50))
     (:line 23 (:if (:binary :eq (:var g) (:var u))) (:goto 60))
     (:line 24 (:if (:binary :eq (:var g) (:var v))) (:goto 70))
     (:line 25 (:if (:binary :gt (:var g) (:icon 5))) (:goto 12))
     (:line 30 (:let (:var p) (:binary :minus (:var p) (:icon 5))))
     (:line 35 (:goto 80))
     (:line 40 (:let (:var p) (:binary :plus (:var p) (:icon 5))))
     (:line 45 (:goto 80))
     (:line 50 (:let (:var p) (:binary :plus (:var p) (:var p))))
     (:line 53 (:print (:scon "you hit the jackpot!!!"))) (:line 55 (:goto 80))
     (:line 60 (:let (:var p) (:binary :plus (:var p) (:icon 1))))
     (:line 65 (:goto 80))
     (:line 70
      (:let (:var p)
       (:binary :minus (:var p) (:binary :mul (:var p) (:fcon 0.5)))))
     (:line 80 (:if (:binary :gt (:var p) (:icon 500))) (:goto 90))
     (:line 82
      (:print (:scon "you have") :semi (:var p) :semi (:scon "points."))
      (:print))
     (:line 85 (:goto 12))
     (:line 90
      (:print (:scon "!!!!you win!!!! with ") :semi (:var p) :semi
       (:scon "points.")))
     (:line 99 (:end)))))



(defvar *onecheck*
  '(((:line 2 (:print (:apply tab (:icon 30)) :semi (:scon "one check")))
     (:line 4
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 6 (:print) (:print) (:print))
     (:line 8 (:dim ((:dimd a (:icon 64)))))
     (:line 10 (:print (:scon "solitaire checker puzzle by david ahl")))
     (:line 15 (:print))
     (:line 20
      (:print (:scon "48 checkers are placed on the 2 outside spaces of a")))
     (:line 25
      (:print (:scon "standard 64-square checkerboard.  the object is to")))
     (:line 30
      (:print (:scon "remove as many checkers as possible by diagonal jumps")))
     (:line 35
      (:print (:scon "(as in standard checkers).  use the numbered board to")))
     (:line 40
      (:print (:scon "indicate the square you wish to jump from and to.  on")))
     (:line 45
      (:print (:scon "the board printed out on each turn '1' indicates a")))
     (:line 50
      (:print (:scon "checker and '0' an empty square.  when you have no")))
     (:line 55
      (:print (:scon "possible jumps remaining, input a '0' in response to")))
     (:line 60 (:print (:scon "question 'jump from ?'"))) (:line 62 (:print))
     (:line 63 (:print (:scon "here is the numerical board:")))
     (:line 66 (:print)) (:line 70 (:for j (:icon 1) (:icon 57) (:icon 8)))
     (:line 74
      (:print (:var j) :semi (:apply tab (:icon 4)) :semi
       (:binary :plus (:var j) (:icon 1)) :semi (:apply tab (:icon 8))
       :semi (:binary :plus (:var j) (:icon 2)) :semi
       (:apply tab (:icon 12)) :semi (:binary :plus (:var j) (:icon 3))
       :semi (:apply tab (:icon 16)) :semi
       (:binary :plus (:var j) (:icon 4)) :semi (:apply tab (:icon 20))
       :semi (:binary :plus (:var j) (:icon 5)) :semi))
     (:line 75
      (:print (:apply tab (:icon 24)) :semi
       (:binary :plus (:var j) (:icon 6)) :semi (:apply tab (:icon 28))
       :semi (:binary :plus (:var j) (:icon 7))))
     (:line 76 (:next j)) (:line 77 (:print))
     (:line 78
      (:print (:scon "and here is the opening position of the checkers.")))
     (:line 79 (:print)) (:line 80 (:for j (:icon 1) (:icon 64) nil))
     (:line 82 (:let (:apply a (:var j)) (:icon 1)))
     (:line 84 (:next j))
     (:line 86 (:for j (:icon 19) (:icon 43) (:icon 8)))
     (:line 88
      (:for i (:var j) (:binary :plus (:var j) (:icon 3)) nil))
     (:line 90 (:let (:apply a (:var i)) (:icon 0)))
     (:line 92 (:next i)) (:line 94 (:next j))
     (:line 96 (:let (:var m) (:icon 0))) (:line 98 (:goto 340))
     (:line 100 (:input "jump from" ((:var f))))
     (:line 105 (:if (:binary :eq (:var f) (:icon 0))) (:goto 500))
     (:line 110 (:input "to" ((:var t)))) (:line 112 (:print))
     (:line 118 (:rem " *** check legality of move
"))
     (:line 120
      (:let (:var f1)
       (:apply int
        (:binary :div (:binary :minus (:var f) (:icon 1)) (:icon 8)))))
     (:line 130
      (:let (:var f2)
       (:binary :minus (:var f) (:binary :mul (:icon 8) (:var f1)))))
     (:line 140
      (:let (:var t1)
       (:apply int
        (:binary :div (:binary :minus (:var t) (:icon 1)) (:icon 8)))))
     (:line 150
      (:let (:var t2)
       (:binary :minus (:var t) (:binary :mul (:icon 8) (:var t1)))))
     (:line 160 (:if (:binary :gt (:var f1) (:icon 7))) (:goto 230))
     (:line 170 (:if (:binary :gt (:var t1) (:icon 7))) (:goto 230))
     (:line 180 (:if (:binary :gt (:var f2) (:icon 8))) (:goto 230))
     (:line 190 (:if (:binary :gt (:var t2) (:icon 8))) (:goto 230))
     (:line 200
      (:if
       (:binary :ne
        (:apply abs (:binary :minus (:var f1) (:var t1)))
        (:icon 2)))
      (:goto 230))
     (:line 210
      (:if
       (:binary :ne
        (:apply abs (:binary :minus (:var f2) (:var t2)))
        (:icon 2)))
      (:goto 230))
     (:line 212
      (:if
       (:binary :eq
        (:apply a
         (:binary :div (:binary :plus (:var t) (:var f)) (:icon 2)))
        (:icon 0)))
      (:goto 230))
     (:line 215 (:if (:binary :eq (:apply a (:var f)) (:icon 0)))
      (:goto 230))
     (:line 220 (:if (:binary :eq (:apply a (:var t)) (:icon 1)))
      (:goto 230))
     (:line 225 (:goto 250))
     (:line 230 (:print (:scon "illegal move.  try again...")))
     (:line 240 (:goto 100)) (:line 245 (:rem " *** update board
"))
     (:line 250 (:let (:apply a (:var t)) (:icon 1)))
     (:line 260 (:let (:apply a (:var f)) (:icon 0)))
     (:line 270
      (:let
       (:apply a
        (:binary :div (:binary :plus (:var t) (:var f)) (:icon 2)))
       (:icon 0)))
     (:line 290 (:let (:var m) (:binary :plus (:var m) (:icon 1))))
     (:line 310 (:rem " *** print board
"))
     (:line 340 (:for j (:icon 1) (:icon 57) (:icon 8)))
     (:line 350
      (:for i (:var j) (:binary :plus (:var j) (:icon 7)) nil))
     (:line 360 (:print (:apply a (:var i)) :semi))
     (:line 370 (:next i)) (:line 380 (:print)) (:line 390 (:next j))
     (:line 400 (:print)) (:line 410 (:goto 100))
     (:line 490 (:rem " *** end game summary
"))
     (:line 500 (:let (:var s) (:icon 0)))
     (:line 510 (:for i (:icon 1) (:icon 64) nil))
     (:line 520
      (:let (:var s)
       (:binary :plus (:var s) (:apply a (:var i)))))
     (:line 530 (:next i))
     (:line 540 (:print)
      (:print (:scon "you made") :semi (:var m) :semi
       (:scon "jumps and had") :semi (:var s) :semi (:scon "pieces")))
     (:line 550 (:print (:scon "remaining on the board.")))
     (:line 560 (:print)) (:line 562 (:input "try again" ((:var a$))))
     (:line 570 (:if (:binary :eq (:var a$) (:scon "yes"))) (:goto 70))
     (:line 575 (:if (:binary :eq (:var a$) (:scon "no"))) (:goto 600))
     (:line 580 (:print (:scon "please answer 'yes' or 'no'.")))
     (:line 590 (:goto 562)) (:line 600 (:print))
     (:line 610 (:print (:scon "o.k.  hope you had fun!!")))
     (:line 999 (:end)))))



(defvar *orbit*
  '(((:line 2 (:print (:apply tab (:icon 33)) :semi (:scon "orbit")))
     (:line 4
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 6 (:print) (:print) (:print))
     (:line 10
      (:print (:scon "somewhere above your planet is a romulan ship.")))
     (:line 15 (:print))
     (:line 20 (:print (:scon "the ship is in a constant polar orbit.  its")))
     (:line 25
      (:print (:scon "distance from the center of your planet is from")))
     (:line 30
      (:print
       (:scon "10,000 to 30,000 miles and at its present velocity can")))
     (:line 31
      (:print (:scon "circle your planet once every 12 to 36 hours.")))
     (:line 35 (:print))
     (:line 40
      (:print (:scon "unfortunately, they are using a cloaking device so")))
     (:line 45
      (:print (:scon "you are unable to see them, but with a special")))
     (:line 50
      (:print (:scon "instrument you can tell how near their ship your")))
     (:line 55
      (:print
       (:scon "photon bomb exploded.  you have seven hours until they")))
     (:line 60
      (:print (:scon "have built up sufficient power in order to escape")))
     (:line 65 (:print (:scon "your planet's gravity."))) (:line 70 (:print))
     (:line 75
      (:print
       (:scon "your planet has enough power to fire one bomb an hour.")))
     (:line 80 (:print))
     (:line 85
      (:print
       (:scon "at the beginning of each hour you will be asked to give an")))
     (:line 90
      (:print (:scon "angle (between 0 and 360) and a distance in units of")))
     (:line 95
      (:print
       (:scon "100 miles (between 100 and 300), after which your bomb's")))
     (:line 100 (:print (:scon "distance from the enemy ship will be given.")))
     (:line 105 (:print))
     (:line 110
      (:print (:scon "an explosion within 5,000 miles of the romulan ship")))
     (:line 111 (:print (:scon "will destroy it."))) (:line 114 (:print))
     (:line 115
      (:print (:scon "below is a diagram to help you visualize your plight.")))
     (:line 116 (:print)) (:line 117 (:print))
     (:line 168 (:print (:scon "                          90")))
     (:line 170 (:print (:scon "                    0000000000000")))
     (:line 171 (:print (:scon "                 0000000000000000000")))
     (:line 172 (:print (:scon "               000000           000000")))
     (:line 173 (:print (:scon "             00000                 00000")))
     (:line 174 (:print (:scon "            00000    xxxxxxxxxxx    00000")))
     (:line 175 (:print (:scon "           00000    xxxxxxxxxxxxx    00000")))
     (:line 176 (:print (:scon "          0000     xxxxxxxxxxxxxxx     0000")))
     (:line 177
      (:print (:scon "         0000     xxxxxxxxxxxxxxxxx     0000")))
     (:line 178
      (:print (:scon "        0000     xxxxxxxxxxxxxxxxxxx     0000")))
     (:line 179
      (:print (:scon "180<== 00000     xxxxxxxxxxxxxxxxxxx     00000 ==>0")))
     (:line 180
      (:print (:scon "        0000     xxxxxxxxxxxxxxxxxxx     0000")))
     (:line 181
      (:print (:scon "         0000     xxxxxxxxxxxxxxxxx     0000")))
     (:line 182 (:print (:scon "          0000     xxxxxxxxxxxxxxx     0000")))
     (:line 183 (:print (:scon "           00000    xxxxxxxxxxxxx    00000")))
     (:line 184 (:print (:scon "            00000    xxxxxxxxxxx    00000")))
     (:line 185 (:print (:scon "             00000                 00000")))
     (:line 186 (:print (:scon "               000000           000000")))
     (:line 187 (:print (:scon "                 0000000000000000000")))
     (:line 188 (:print (:scon "                    0000000000000")))
     (:line 190 (:print (:scon "                         270")))
     (:line 192 (:print)) (:line 195 (:print (:scon "x - your planet")))
     (:line 196 (:print (:scon "o - the orbit of the romulan ship")))
     (:line 197 (:print))
     (:line 198
      (:print (:scon "on the above diagram, the romulan ship is circling")))
     (:line 199
      (:print
       (:scon "counterclockwise around your planet.  don't forget that")))
     (:line 200
      (:print (:scon "without sufficient power the romulan ship's altitude")))
     (:line 210 (:print (:scon "and orbital rate will remain constant.")))
     (:line 220 (:print))
     (:line 230
      (:print (:scon "good luck.  the federation is counting on you.")))
     (:line 270
      (:let (:var a)
       (:apply int (:binary :mul (:icon 360) (:apply rnd (:icon 1))))))
     (:line 280
      (:let (:var d)
       (:apply int
        (:binary :plus (:binary :mul (:icon 200) (:apply rnd (:icon 1)))
         (:icon 200)))))
     (:line 290
      (:let (:var r)
       (:apply int
        (:binary :plus (:binary :mul (:icon 20) (:apply rnd (:icon 1)))
         (:icon 10)))))
     (:line 300 (:let (:var h) (:icon 0)))
     (:line 310 (:if (:binary :eq (:var h) (:icon 7))) (:goto 490))
     (:line 320 (:let (:var h) (:binary :plus (:var h) (:icon 1))))
     (:line 325 (:print)) (:line 326 (:print))
     (:line 330
      (:print (:scon "this is hour") :semi (:var h) :semi
       (:scon ", at what angle do you wish to send")))
     (:line 335 (:print (:scon "your photon bomb") :semi))
     (:line 340 (:input nil ((:var a1))))
     (:line 350
      (:print (:scon "how far out do you wish to detonate it") :semi))
     (:line 360 (:input nil ((:var d1)))) (:line 365 (:print))
     (:line 366 (:print))
     (:line 370 (:let (:var a) (:binary :plus (:var a) (:var r))))
     (:line 380 (:if (:binary :lt (:var a) (:icon 360))) (:goto 400))
     (:line 390 (:let (:var a) (:binary :minus (:var a) (:icon 360))))
     (:line 400
      (:let (:var t)
       (:apply abs (:binary :minus (:var a) (:var a1)))))
     (:line 410 (:if (:binary :lt (:var t) (:icon 180))) (:goto 430))
     (:line 420 (:let (:var t) (:binary :minus (:icon 360) (:var t))))
     (:line 430
      (:let (:var c)
       (:apply sqr
        (:binary :minus
         (:binary :plus (:binary :mul (:var d) (:var d))
          (:binary :mul (:var d1) (:var d1)))
         (:binary :mul
          (:binary :mul (:binary :mul (:icon 2) (:var d)) (:var d1))
          (:apply cos
           (:binary :div (:binary :mul (:var t) (:fcon 3.14159))
            (:icon 180))))))))
     (:line 440
      (:print (:scon "your photon bomb exploded") :semi (:var c) :semi
       (:scon "*10^2 miles from the")))
     (:line 445 (:print (:scon "romulan ship.")))
     (:line 450 (:if (:binary :le (:var c) (:icon 50))) (:goto 470))
     (:line 460 (:goto 310))
     (:line 470
      (:print (:scon "you have succesfully completed your mission.")))
     (:line 480 (:goto 500))
     (:line 490 (:print (:scon "you have allowed the romulans to escape.")))
     (:line 500 (:print (:scon "another romulan ship has gone into orbit.")))
     (:line 510 (:print (:scon "do you wish to try to destroy it") :semi))
     (:line 520 (:input nil ((:var c$))))
     (:line 530 (:if (:binary :eq (:var c$) (:scon "yes"))) (:goto 270))
     (:line 540 (:print (:scon "good bye."))) (:line 999 (:end)))))



(defvar *pizza*
  '(((:line 5 (:print (:apply tab (:icon 33)) :semi (:scon "pizza")))
     (:line 10
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 15 (:print) (:print) (:print))
     (:line 20 (:dim ((:dimd s$ (:icon 16)) (:dimd m$ (:icon 4)))))
     (:line 30 (:print (:scon "pizza delivery game")) (:print))
     (:line 50 (:input "what is your first name" ((:var n$))) (:print))
     (:line 80
      (:print (:scon "hi, ") :semi (:var n$) :semi
       (:scon ".  in this game you are to take orders")))
     (:line 90
      (:print (:scon "for pizzas.  then you are to tell a delivery boy")))
     (:line 100 (:print (:scon "where to deliver the ordered pizzas."))
      (:print) (:print))
     (:line 140 (:for i (:icon 1) (:icon 16) nil))
     (:line 150 (:read (:apply s$ (:var i)))) (:line 160 (:next i))
     (:line 170 (:for i (:icon 1) (:icon 4) nil))
     (:line 180 (:read (:apply m$ (:var i)))) (:line 190 (:next i))
     (:line 200
      (:data (:scon "a") (:scon "b") (:scon "c") (:scon "d") (:scon "e")
       (:scon "f") (:scon "g") (:scon "h") (:scon "i") (:scon "j") (:scon "k")
       (:scon "l") (:scon "m") (:scon "n") (:scon "o")))
     (:line 210
      (:data (:scon "p") (:scon "1") (:scon "2") (:scon "3") (:scon "4")))
     (:line 230 (:print (:scon "map of the city of hyattsville")) (:print))
     (:line 250 (:print (:scon " -----1-----2-----3-----4-----")))
     (:line 260 (:let (:var k) (:icon 4)))
     (:line 270 (:for i (:icon 1) (:icon 4) nil))
     (:line 280 (:print (:scon "-")) (:print (:scon "-")) (:print (:scon "-"))
      (:print (:scon "-")))
     (:line 320 (:print (:apply m$ (:var k)) :semi))
     (:line 330
      (:let (:var s1)
       (:binary :plus
        (:binary :minus (:icon 16) (:binary :mul (:icon 4) (:var i)))
        (:icon 1))))
     (:line 340
      (:print (:scon "     ") :semi (:apply s$ (:var s1)) :semi
       (:scon "     ") :semi
       (:apply s$ (:binary :plus (:var s1) (:icon 1))) :semi
       (:scon "     ") :semi
       (:apply s$ (:binary :plus (:var s1) (:icon 2))) :semi
       (:scon "     ") :semi))
     (:line 350
      (:print (:apply s$ (:binary :plus (:var s1) (:icon 3))) :semi
       (:scon "     ") :semi (:apply m$ (:var k))))
     (:line 380 (:let (:var k) (:binary :minus (:var k) (:icon 1))))
     (:line 390 (:next i))
     (:line 400 (:print (:scon "-")) (:print (:scon "-")) (:print (:scon "-"))
      (:print (:scon "-")))
     (:line 440 (:print (:scon " -----1-----2-----3-----4-----")) (:print))
     (:line 460 (:print (:scon "the output is a map of the homes where")))
     (:line 470 (:print (:scon "you are to send pizzas.")) (:print))
     (:line 490 (:print (:scon "your job is to give a truck driver")))
     (:line 500 (:print (:scon "the location or coordinates of the")))
     (:line 510 (:print (:scon "home ordering the pizza.")) (:print))
     (:line 520 (:input "do you need more directions" ((:var a$))))
     (:line 530 (:if (:binary :eq (:var a$) (:scon "yes"))) (:goto 590))
     (:line 540 (:if (:binary :eq (:var a$) (:scon "no"))) (:goto 750))
     (:line 550 (:print (:scon "'yes' or 'no' please, now then,")) (:goto 520))
     (:line 590 (:print)
      (:print (:scon "somebody will ask for a pizza to be")))
     (:line 600 (:print (:scon "delivered.  then a delivery boy will")))
     (:line 610 (:print (:scon "ask you for the location."))
      (:print (:scon "     example:")))
     (:line 620 (:print (:scon "this is j.  please send a pizza.")))
     (:line 640
      (:print (:scon "driver to ") :semi (:var n$) :semi
       (:scon ".  where does j live?")))
     (:line 650 (:print (:scon "your answer would be 2,3")) (:print))
     (:line 660 (:input "understand" ((:var a$))))
     (:line 670 (:if (:binary :eq (:var a$) (:scon "yes"))) (:goto 690))
     (:line 680
      (:print
       (:scon "this job is definitely too difficult for you. thanks anyway")))
     (:line 685 (:goto 999))
     (:line 690
      (:print (:scon "good.  you are now ready to start taking orders."))
      (:print))
     (:line 700 (:print (:scon "good luck!!")) (:print))
     (:line 750 (:for i (:icon 1) (:icon 5) nil))
     (:line 760
      (:let (:var s)
       (:apply int
        (:binary :plus (:binary :mul (:apply rnd (:icon 1)) (:icon 16))
         (:icon 1))))
      (:print))
     (:line 770
      (:print (:scon "hello ") :semi (:var n$) :semi
       (:scon "'s pizza.  this is ") :semi (:apply s$ (:var s)) :semi
       (:scon ".") :semi))
     (:line 775 (:print (:scon "  please send a pizza.")))
     (:line 780
      (:print (:scon "  driver to ") :semi (:var n$) :semi
       (:scon ":  where does ") :semi (:apply s$ (:var s)) :semi
       (:scon " live") :semi))
     (:line 790
      (:input nil ((:apply a (:icon 1)) (:apply a (:icon 2)))))
     (:line 870
      (:let (:var t)
       (:binary :plus (:apply a (:icon 1))
        (:binary :mul (:binary :minus (:apply a (:icon 2)) (:icon 1))
         (:icon 4)))))
     (:line 880 (:if (:binary :eq (:var t) (:var s))) (:goto 920))
     (:line 890
      (:print (:scon "this is ") :semi (:apply s$ (:var t)) :semi
       (:scon ".  i did not order a pizza.")))
     (:line 900
      (:print (:scon "i live at ") :semi (:apply a (:icon 1)) :semi
       (:scon ",") :semi (:apply a (:icon 2))))
     (:line 910 (:goto 780))
     (:line 920
      (:print (:scon "hello ") (:var n$) :semi (:scon ".  this is ") :semi
       (:apply s$ (:var s)) :semi (:scon ", thanks for the pizza.")))
     (:line 930 (:next i))
     (:line 940 (:print)
      (:input "do you want to deliver more pizzas" ((:var a$))))
     (:line 960 (:if (:binary :eq (:var a$) (:scon "yes"))) (:goto 750))
     (:line 970 (:print)
      (:print (:scon "o.k. ") :semi (:var n$) :semi
       (:scon ", see you later!"))
      (:print))
     (:line 999 (:end)))))



(defvar *poetry*
  '(((:line 10 (:print (:apply tab (:icon 30)) :semi (:scon "poetry")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print))
     (:line 90 (:on-goto (:var i) (100 101 102 103 104)))
     (:line 100 (:print (:scon "midnight dreary") :semi) (:goto 210))
     (:line 101 (:print (:scon "fiery eyes") :semi) (:goto 210))
     (:line 102 (:print (:scon "bird or fiend") :semi) (:goto 210))
     (:line 103 (:print (:scon "thing of evil") :semi) (:goto 210))
     (:line 104 (:print (:scon "prophet") :semi) (:goto 210))
     (:line 110 (:on-goto (:var i) (111 112 113 114 115)))
     (:line 111 (:print (:scon "beguiling me") :semi)
      (:let (:var u) (:icon 2)) (:goto 210))
     (:line 112 (:print (:scon "thrilled me") :semi) (:goto 210))
     (:line 113 (:print (:scon "still sitting....") :semi) (:goto 212))
     (:line 114 (:print (:scon "never flitting") :semi)
      (:let (:var u) (:icon 2)) (:goto 210))
     (:line 115 (:print (:scon "burned") :semi) (:goto 210))
     (:line 120 (:on-goto (:var i) (121 122 123 124 125)))
     (:line 121 (:print (:scon "and my soul") :semi) (:goto 210))
     (:line 122 (:print (:scon "darkness there") :semi) (:goto 210))
     (:line 123 (:print (:scon "shall be lifted") :semi) (:goto 210))
     (:line 124 (:print (:scon "quoth the raven") :semi) (:goto 210))
     (:line 125 (:if (:binary :eq (:var u) (:icon 0))) (:goto 210))
     (:line 126 (:print (:scon "sign of parting") :semi) (:goto 210))
     (:line 130 (:on-goto (:var i) (131 132 133 134 135)))
     (:line 131 (:print (:scon "nothing more") :semi) (:goto 210))
     (:line 132 (:print (:scon "yet again") :semi) (:goto 210))
     (:line 133 (:print (:scon "slowly creeping") :semi) (:goto 210))
     (:line 134 (:print (:scon "...evermore") :semi) (:goto 210))
     (:line 135 (:print (:scon "nevermore") :semi))
     (:line 210
      (:if
       (:lazy-binary :or (:binary :eq (:var u) (:icon 0))
        (:binary :gt (:apply rnd (:icon 1)) (:fcon 0.19))))
      (:goto 212))
     (:line 211 (:print (:scon ",") :semi) (:let (:var u) (:icon 2)))
     (:line 212 (:if (:binary :gt (:apply rnd (:icon 1)) (:fcon 0.65)))
      (:goto 214))
     (:line 213 (:print (:scon " ") :semi)
      (:let (:var u) (:binary :plus (:var u) (:icon 1))) (:goto 215))
     (:line 214 (:print) (:let (:var u) (:icon 0)))
     (:line 215
      (:let (:var i)
       (:binary :plus
        (:apply int
         (:binary :div
          (:apply int (:binary :mul (:icon 10) (:apply rnd (:icon 1))))
          (:icon 2)))
        (:icon 1))))
     (:line 220 (:let (:var j) (:binary :plus (:var j) (:icon 1)))
      (:let (:var k) (:binary :plus (:var k) (:icon 1))))
     (:line 230
      (:if
       (:lazy-binary :or (:binary :gt (:var u) (:icon 0))
        (:binary :ne (:apply int (:binary :div (:var j) (:icon 2)))
         (:binary :div (:var j) (:icon 2)))))
      (:goto 240))
     (:line 235 (:print (:scon "     ") :semi))
     (:line 240 (:on-goto (:var j) (90 110 120 130 250)))
     (:line 250 (:let (:var j) (:icon 0)) (:print)
      (:if (:binary :gt (:var k) (:icon 20))) (:goto 270))
     (:line 260 (:goto 215))
     (:line 270 (:print) (:let (:var u) (:icon 0))
      (:let (:var k) (:icon 0)) (:goto 110))
     (:line 999 (:end)))))



(defvar *poker*
  '(((:line 2 (:print (:apply tab (:icon 33)) :semi (:scon "poker")))
     (:line 4
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 6 (:print) (:print) (:print))
     (:line 10 (:dim ((:dimd a (:icon 50)) (:dimd b (:icon 15)))))
     (:line 20
      (:def fna x
       (:apply int (:binary :mul (:icon 10) (:apply rnd (:icon 1))))))
     (:line 30
      (:def fnb x
       (:binary :minus (:var x)
        (:binary :mul (:icon 100)
         (:apply int (:binary :div (:var x) (:icon 100)))))))
     (:line 40 (:print (:scon "welcome to the casino.  we each have $200.")))
     (:line 50
      (:print
       (:scon "i will open the betting before the draw; you open after.")))
     (:line 60 (:print (:scon "to fold bet 0; to check bet .5.")))
     (:line 70 (:print (:scon "enough talk -- let's get down to business.")))
     (:line 80 (:print)) (:line 90 (:let (:var o) (:icon 1)))
     (:line 100 (:let (:var c) (:icon 200)))
     (:line 110 (:let (:var s) (:icon 200)))
     (:line 120 (:let (:var p) (:icon 0))) (:line 130 (:rem "
"))
     (:line 140 (:print))
     (:line 150 (:if (:binary :le (:var c) (:icon 5))) (:goto 3670))
     (:line 160 (:print (:scon "the ante is $5.  i will deal:")))
     (:line 170 (:print))
     (:line 180 (:if (:binary :gt (:var s) (:icon 5))) (:goto 200))
     (:line 190 (:gosub 3830))
     (:line 200 (:let (:var p) (:binary :plus (:var p) (:icon 10))))
     (:line 210 (:let (:var s) (:binary :minus (:var s) (:icon 5))))
     (:line 220 (:let (:var c) (:binary :minus (:var c) (:icon 5))))
     (:line 230 (:for z (:icon 1) (:icon 10) nil))
     (:line 240 (:gosub 1740)) (:line 250 (:next z))
     (:line 260 (:print (:scon "your hand:")))
     (:line 270 (:let (:var n) (:icon 1))) (:line 280 (:gosub 1850))
     (:line 290 (:let (:var n) (:icon 6)))
     (:line 300 (:let (:var i) (:icon 2))) (:line 310 (:gosub 2170))
     (:line 320 (:print))
     (:line 330 (:if (:binary :ne (:var i) (:icon 6))) (:goto 470))
     (:line 340 (:if (:binary :le (:apply fna (:icon 0)) (:icon 7)))
      (:goto 370))
     (:line 350 (:let (:var x) (:icon 11100))) (:line 360 (:goto 420))
     (:line 370 (:if (:binary :le (:apply fna (:icon 0)) (:icon 7)))
      (:goto 400))
     (:line 380 (:let (:var x) (:icon 11110))) (:line 390 (:goto 420))
     (:line 400 (:if (:binary :ge (:apply fna (:icon 0)) (:icon 1)))
      (:goto 450))
     (:line 410 (:let (:var x) (:icon 11111)))
     (:line 420 (:let (:var i) (:icon 7)))
     (:line 430 (:let (:var z) (:icon 23))) (:line 440 (:goto 580))
     (:line 450 (:let (:var z) (:icon 1))) (:line 460 (:goto 510))
     (:line 470 (:if (:binary :ge (:var u) (:icon 13))) (:goto 540))
     (:line 480 (:if (:binary :ge (:apply fna (:icon 0)) (:icon 2)))
      (:goto 500))
     (:line 490 (:goto 420)) (:line 500 (:let (:var z) (:icon 0)))
     (:line 510 (:let (:var k) (:icon 0)))
     (:line 520 (:print (:scon "i check."))) (:line 530 (:goto 620))
     (:line 540 (:if (:binary :le (:var u) (:icon 16))) (:goto 570))
     (:line 550 (:let (:var z) (:icon 2)))
     (:line 560 (:if (:binary :ge (:apply fna (:icon 0)) (:icon 1)))
      (:goto 580))
     (:line 570 (:let (:var z) (:icon 35)))
     (:line 580
      (:let (:var v)
       (:binary :plus (:var z) (:apply fna (:icon 0)))))
     (:line 590 (:gosub 3480))
     (:line 600 (:print (:scon "i'll open with $") (:var v)))
     (:line 610 (:let (:var k) (:var v))) (:line 620 (:gosub 3050))
     (:line 630 (:gosub 650)) (:line 640 (:goto 820))
     (:line 650 (:if (:binary :ne (:var i) (:icon 3))) (:goto 760))
     (:line 660 (:print)) (:line 670 (:print (:scon "i win.")))
     (:line 680 (:let (:var c) (:binary :plus (:var c) (:var p))))
     (:line 690
      (:print (:scon "now i have $") (:var c) (:scon "and you have $")
       (:var s)))
     (:line 700 (:print (:scon "do you wish to continue") :semi))
     (:line 710 (:input nil ((:var h$))))
     (:line 720 (:if (:binary :eq (:var h$) (:scon "yes"))) (:goto 120))
     (:line 730 (:if (:binary :eq (:var h$) (:scon "no"))) (:goto 4100))
     (:line 740 (:print (:scon "answer yes or no, please.")))
     (:line 750 (:goto 700))
     (:line 760 (:if (:binary :ne (:var i) (:icon 4))) (:goto 810))
     (:line 770 (:print)) (:line 780 (:print (:scon "you win.")))
     (:line 790 (:let (:var s) (:binary :plus (:var s) (:var p))))
     (:line 800 (:goto 690)) (:line 810 (:return)) (:line 820 (:print))
     (:line 830
      (:print (:scon "now we draw -- how many cards do you want") :semi))
     (:line 840 (:input nil ((:var t))))
     (:line 850 (:if (:binary :eq (:var t) (:icon 0))) (:goto 980))
     (:line 860 (:let (:var z) (:icon 10)))
     (:line 870 (:if (:binary :lt (:var t) (:icon 4))) (:goto 900))
     (:line 880 (:print (:scon "you can't draw more than three cards.")))
     (:line 890 (:goto 840))
     (:line 900 (:print (:scon "what are their numbers:")))
     (:line 910 (:for q (:icon 1) (:var t) nil))
     (:line 920 (:input nil ((:var u)))) (:line 930 (:gosub 1730))
     (:line 940 (:next q)) (:line 950 (:print (:scon "your new hand:")))
     (:line 960 (:let (:var n) (:icon 1))) (:line 970 (:gosub 1850))
     (:line 980 (:let (:var z) (:binary :plus (:icon 10) (:var t))))
     (:line 990 (:for u (:icon 6) (:icon 10) nil))
     (:line 1000
      (:if
       (:binary :ne
        (:apply int
         (:binary :div (:var x)
          (:exp (:icon 10) (:binary :minus (:var u) (:icon 6)))))
        (:binary :mul (:icon 10)
         (:apply int
          (:binary :div (:var x)
           (:exp (:icon 10) (:binary :minus (:var u) (:icon 5))))))))
      (:goto 1020))
     (:line 1010 (:gosub 1730)) (:line 1020 (:next u))
     (:line 1030 (:print))
     (:line 1040
      (:print (:scon "i am taking")
       (:binary :minus (:binary :minus (:var z) (:icon 10)) (:var t))
       (:scon "card") :semi))
     (:line 1050
      (:if (:binary :eq (:var z) (:binary :plus (:icon 11) (:var t))))
      (:goto 1090))
     (:line 1060 (:print (:scon "s"))) (:line 1070 (:print))
     (:line 1080 (:goto 1100)) (:line 1090 (:print))
     (:line 1100 (:let (:var n) (:icon 6)))
     (:line 1110 (:let (:var v) (:var i)))
     (:line 1120 (:let (:var i) (:icon 1))) (:line 1130 (:gosub 2170))
     (:line 1140 (:let (:var b) (:var u)))
     (:line 1150 (:let (:var m) (:var d)))
     (:line 1160 (:if (:binary :ne (:var v) (:icon 7))) (:goto 1190))
     (:line 1170 (:let (:var z) (:icon 28))) (:line 1180 (:goto 1330))
     (:line 1190 (:if (:binary :ne (:var i) (:icon 6))) (:goto 1220))
     (:line 1200 (:let (:var z) (:icon 1))) (:line 1210 (:goto 1330))
     (:line 1220 (:if (:binary :ge (:var u) (:icon 13))) (:goto 1270))
     (:line 1230 (:let (:var z) (:icon 2)))
     (:line 1240 (:if (:binary :ne (:apply fna (:icon 0)) (:icon 6)))
      (:goto 1260))
     (:line 1250 (:let (:var z) (:icon 19))) (:line 1260 (:goto 1330))
     (:line 1270 (:if (:binary :ge (:var u) (:icon 16))) (:goto 1320))
     (:line 1280 (:let (:var z) (:icon 19)))
     (:line 1290 (:if (:binary :ne (:apply fna (:icon 0)) (:icon 8)))
      (:goto 1310))
     (:line 1300 (:let (:var z) (:icon 11))) (:line 1310 (:goto 1330))
     (:line 1320 (:let (:var z) (:icon 2)))
     (:line 1330 (:let (:var k) (:icon 0))) (:line 1340 (:gosub 3050))
     (:line 1350 (:if (:binary :ne (:var t) (:fcon 0.5))) (:goto 1450))
     (:line 1360 (:if (:binary :eq (:var v) (:icon 7))) (:goto 1400))
     (:line 1370 (:if (:binary :ne (:var i) (:icon 6))) (:goto 1400))
     (:line 1380 (:print (:scon "i'll check"))) (:line 1390 (:goto 1460))
     (:line 1400
      (:let (:var v)
       (:binary :plus (:var z) (:apply fna (:icon 0)))))
     (:line 1410 (:gosub 3480))
     (:line 1420 (:print (:scon "i'll bet $") (:var v)))
     (:line 1430 (:let (:var k) (:var v))) (:line 1440 (:gosub 3060))
     (:line 1450 (:gosub 650)) (:line 1460 (:print))
     (:line 1470 (:print (:scon "now we compare hands:")))
     (:line 1480 (:let (:var j$) (:var h$)))
     (:line 1490 (:let (:var k$) (:var i$)))
     (:line 1500 (:print (:scon "my hand:")))
     (:line 1510 (:let (:var n) (:icon 6))) (:line 1520 (:gosub 1850))
     (:line 1530 (:let (:var n) (:icon 1))) (:line 1540 (:gosub 2170))
     (:line 1550 (:print)) (:line 1560 (:print (:scon "you have ") :semi))
     (:line 1570 (:let (:var k) (:var d))) (:line 1580 (:gosub 3690))
     (:line 1590 (:let (:var h$) (:var j$)))
     (:line 1600 (:let (:var i$) (:var k$)))
     (:line 1610 (:let (:var k) (:var m)))
     (:line 1620 (:print (:scon "and i have ") :semi))
     (:line 1630 (:gosub 3690))
     (:line 1640 (:if (:binary :gt (:var b) (:var u))) (:goto 670))
     (:line 1650 (:if (:binary :gt (:var u) (:var b))) (:goto 780))
     (:line 1660 (:if (:binary :eq (:var h$) (:scon "a flus")))
      (:goto 1700))
     (:line 1662
      (:if
       (:binary :lt (:apply fnb (:var m))
        (:apply fnb (:var d))))
      (:goto 780))
     (:line 1664
      (:if
       (:binary :gt (:apply fnb (:var m))
        (:apply fnb (:var d))))
      (:goto 670))
     (:line 1670 (:print (:scon "the hand is drawn.")))
     (:line 1680
      (:print (:scon "all $") (:var p) (:scon "remains in the pot.")))
     (:line 1690 (:goto 140))
     (:line 1700
      (:if
       (:binary :gt (:apply fnb (:var m))
        (:apply fnb (:var d))))
      (:goto 670))
     (:line 1710
      (:if
       (:binary :gt (:apply fnb (:var d))
        (:apply fnb (:var m))))
      (:goto 780))
     (:line 1720 (:goto 1670))
     (:line 1730 (:let (:var z) (:binary :plus (:var z) (:icon 1))))
     (:line 1740
      (:let (:apply a (:var z))
       (:binary :plus
        (:binary :mul (:icon 100)
         (:apply int (:binary :mul (:icon 4) (:apply rnd (:icon 1)))))
        (:apply int
         (:binary :mul (:icon 100) (:apply rnd (:icon 1)))))))
     (:line 1750
      (:if
       (:binary :gt
        (:apply int (:binary :div (:apply a (:var z)) (:icon 100)))
        (:icon 3)))
      (:goto 1740))
     (:line 1760
      (:if
       (:binary :gt
        (:binary :minus (:apply a (:var z))
         (:binary :mul (:icon 100)
          (:apply int
           (:binary :div (:apply a (:var z)) (:icon 100)))))
        (:icon 12)))
      (:goto 1740))
     (:line 1765 (:if (:binary :eq (:var z) (:icon 1))) (:goto 1840))
     (:line 1770
      (:for k (:icon 1) (:binary :minus (:var z) (:icon 1)) nil))
     (:line 1780
      (:if
       (:binary :eq (:apply a (:var z)) (:apply a (:var k))))
      (:goto 1740))
     (:line 1790 (:next k))
     (:line 1800 (:if (:binary :le (:var z) (:icon 10))) (:goto 1840))
     (:line 1810 (:let (:var n) (:apply a (:var u))))
     (:line 1820
      (:let (:apply a (:var u)) (:apply a (:var z))))
     (:line 1830 (:let (:apply a (:var z)) (:var n)))
     (:line 1840 (:return))
     (:line 1850
      (:for z (:var n) (:binary :plus (:var n) (:icon 4)) nil))
     (:line 1860 (:print (:var z) (:scon "--  ") :semi))
     (:line 1870 (:gosub 1950)) (:line 1880 (:print (:scon " of") :semi))
     (:line 1890 (:gosub 2070))
     (:line 1900
      (:if
       (:binary :ne (:binary :div (:var z) (:icon 2))
        (:apply int (:binary :div (:var z) (:icon 2)))))
      (:goto 1920))
     (:line 1910 (:print)) (:line 1920 (:next z)) (:line 1930 (:print))
     (:line 1940 (:return))
     (:line 1950
      (:let (:var k) (:apply fnb (:apply a (:var z)))))
     (:line 1960 (:if (:binary :ne (:var k) (:icon 9))) (:goto 1980))
     (:line 1970 (:print (:scon "jack") :semi))
     (:line 1980 (:if (:binary :ne (:var k) (:icon 10))) (:goto 2000))
     (:line 1990 (:print (:scon "queen") :semi))
     (:line 2000 (:if (:binary :ne (:var k) (:icon 11))) (:goto 2020))
     (:line 2010 (:print (:scon "king") :semi))
     (:line 2020 (:if (:binary :ne (:var k) (:icon 12))) (:goto 2040))
     (:line 2030 (:print (:scon "ace") :semi))
     (:line 2040 (:if (:binary :ge (:var k) (:icon 9))) (:goto 2060))
     (:line 2050 (:print (:binary :plus (:var k) (:icon 2)) :semi))
     (:line 2060 (:return))
     (:line 2070
      (:let (:var k)
       (:apply int
        (:binary :div (:apply a (:var z)) (:icon 100)))))
     (:line 2080 (:if (:binary :ne (:var k) (:icon 0))) (:goto 2100))
     (:line 2090 (:print (:scon " clubs") :comma))
     (:line 2100 (:if (:binary :ne (:var k) (:icon 1))) (:goto 2120))
     (:line 2110 (:print (:scon " diamonds") :comma))
     (:line 2120 (:if (:binary :ne (:var k) (:icon 2))) (:goto 2140))
     (:line 2130 (:print (:scon " hearts") :comma))
     (:line 2140 (:if (:binary :ne (:var k) (:icon 3))) (:goto 2160))
     (:line 2150 (:print (:scon " spades") :comma)) (:line 2160 (:return))
     (:line 2170 (:let (:var u) (:icon 0)))
     (:line 2180
      (:for z (:var n) (:binary :plus (:var n) (:icon 4)) nil))
     (:line 2190
      (:let (:apply b (:var z))
       (:apply fnb (:apply a (:var z)))))
     (:line 2200
      (:if (:binary :eq (:var z) (:binary :plus (:var n) (:icon 4))))
      (:goto 2230))
     (:line 2210
      (:if
       (:binary :ne
        (:apply int (:binary :div (:apply a (:var z)) (:icon 100)))
        (:apply int
         (:binary :div (:apply a (:binary :plus (:var z) (:icon 1)))
          (:icon 100)))))
      (:goto 2230))
     (:line 2220 (:let (:var u) (:binary :plus (:var u) (:icon 1))))
     (:line 2230 (:next z))
     (:line 2240 (:if (:binary :ne (:var u) (:icon 4))) (:goto 2310))
     (:line 2250 (:let (:var x) (:icon 11111)))
     (:line 2260 (:let (:var d) (:apply a (:var n))))
     (:line 2270 (:let (:var h$) (:scon "a flus")))
     (:line 2280 (:let (:var i$) (:scon "h in")))
     (:line 2290 (:let (:var u) (:icon 15))) (:line 2300 (:return))
     (:line 2310
      (:for z (:var n) (:binary :plus (:var n) (:icon 3)) nil))
     (:line 2320
      (:for k (:binary :plus (:var z) (:icon 1))
       (:binary :plus (:var n) (:icon 4)) nil))
     (:line 2330
      (:if
       (:binary :le (:apply b (:var z)) (:apply b (:var k))))
      (:goto 2390))
     (:line 2340 (:let (:var x) (:apply a (:var z))))
     (:line 2350
      (:let (:apply a (:var z)) (:apply a (:var k))))
     (:line 2360
      (:let (:apply b (:var z)) (:apply b (:var k))))
     (:line 2370 (:let (:apply a (:var k)) (:var x)))
     (:line 2380
      (:let (:apply b (:var k))
       (:binary :minus (:apply a (:var k))
        (:binary :mul (:icon 100)
         (:apply int
          (:binary :div (:apply a (:var k)) (:icon 100)))))))
     (:line 2390 (:next k)) (:line 2400 (:next z))
     (:line 2410 (:let (:var x) (:icon 0)))
     (:line 2420
      (:for z (:var n) (:binary :plus (:var n) (:icon 3)) nil))
     (:line 2430
      (:if
       (:binary :ne (:apply b (:var z))
        (:apply b (:binary :plus (:var z) (:icon 1)))))
      (:goto 2470))
     (:line 2440
      (:let (:var x)
       (:binary :plus (:var x)
        (:binary :mul (:icon 11)
         (:exp (:icon 10) (:binary :minus (:var z) (:var n)))))))
     (:line 2450 (:let (:var d) (:apply a (:var z))))
     (:line 2460 (:gosub 2760)) (:line 2470 (:next z))
     (:line 2480 (:if (:binary :ne (:var x) (:icon 0))) (:goto 2620))
     (:line 2490
      (:if
       (:binary :ne (:binary :plus (:apply b (:var n)) (:icon 3))
        (:apply b (:binary :plus (:var n) (:icon 3)))))
      (:goto 2520))
     (:line 2500 (:let (:var x) (:icon 1111)))
     (:line 2510 (:let (:var u) (:icon 10)))
     (:line 2520
      (:if
       (:binary :ne
        (:binary :plus (:apply b (:binary :plus (:var n) (:icon 1)))
         (:icon 3))
        (:apply b (:binary :plus (:var n) (:icon 4)))))
      (:goto 2620))
     (:line 2530 (:if (:binary :ne (:var u) (:icon 10))) (:goto 2600))
     (:line 2540 (:let (:var u) (:icon 14)))
     (:line 2550 (:let (:var h$) (:scon "straig")))
     (:line 2560 (:let (:var i$) (:scon "ht")))
     (:line 2570 (:let (:var x) (:icon 11111)))
     (:line 2580
      (:let (:var d)
       (:apply a (:binary :plus (:var n) (:icon 4)))))
     (:line 2590 (:return)) (:line 2600 (:let (:var u) (:icon 10)))
     (:line 2610 (:let (:var x) (:icon 11110)))
     (:line 2620 (:if (:binary :ge (:var u) (:icon 10))) (:goto 2690))
     (:line 2630
      (:let (:var d)
       (:apply a (:binary :plus (:var n) (:icon 4)))))
     (:line 2640 (:let (:var h$) (:scon "schmal")))
     (:line 2650 (:let (:var i$) (:scon "tz, ")))
     (:line 2660 (:let (:var u) (:icon 9)))
     (:line 2670 (:let (:var x) (:icon 11000))) (:line 2680 (:goto 2740))
     (:line 2690 (:if (:binary :ne (:var u) (:icon 10))) (:goto 2720))
     (:line 2700 (:if (:binary :eq (:var i) (:icon 1))) (:goto 2740))
     (:line 2710 (:goto 2750))
     (:line 2720 (:if (:binary :gt (:var u) (:icon 12))) (:goto 2750))
     (:line 2730 (:if (:binary :gt (:apply fnb (:var d)) (:icon 6)))
      (:goto 2750))
     (:line 2740 (:let (:var i) (:icon 6))) (:line 2750 (:return))
     (:line 2760 (:if (:binary :ge (:var u) (:icon 11))) (:goto 2810))
     (:line 2770 (:let (:var u) (:icon 11)))
     (:line 2780 (:let (:var h$) (:scon "a pair")))
     (:line 2790 (:let (:var i$) (:scon " of "))) (:line 2800 (:return))
     (:line 2810 (:if (:binary :ne (:var u) (:icon 11))) (:goto 2910))
     (:line 2820
      (:if
       (:binary :ne (:apply b (:var z))
        (:apply b (:binary :minus (:var z) (:icon 1)))))
      (:goto 2870))
     (:line 2830 (:let (:var h$) (:scon "three")))
     (:line 2840 (:let (:var i$) (:scon " ")))
     (:line 2850 (:let (:var u) (:icon 13))) (:line 2860 (:return))
     (:line 2870 (:let (:var h$) (:scon "two p")))
     (:line 2880 (:let (:var i$) (:scon "air, ")))
     (:line 2890 (:let (:var u) (:icon 12))) (:line 2900 (:return))
     (:line 2910 (:if (:binary :gt (:var u) (:icon 12))) (:goto 2960))
     (:line 2920 (:let (:var u) (:icon 16)))
     (:line 2930 (:let (:var h$) (:scon "full h")))
     (:line 2940 (:let (:var i$) (:scon "ouse, "))) (:line 2950 (:return))
     (:line 2960
      (:if
       (:binary :ne (:apply b (:var z))
        (:apply b (:binary :minus (:var z) (:icon 1)))))
      (:goto 3010))
     (:line 2970 (:let (:var u) (:icon 17)))
     (:line 2980 (:let (:var h$) (:scon "four")))
     (:line 2990 (:let (:var i$) (:scon " "))) (:line 3000 (:return))
     (:line 3010 (:let (:var u) (:icon 16)))
     (:line 3020 (:let (:var h$) (:scon "full h")))
     (:line 3030 (:let (:var i$) (:scon "ouse, "))) (:line 3040 (:return))
     (:line 3050 (:let (:var g) (:icon 0)))
     (:line 3060 (:print) (:print (:scon "what is your bet") :semi))
     (:line 3070 (:input nil ((:var t))))
     (:line 3080
      (:if
       (:binary :eq (:binary :minus (:var t) (:apply int (:var t)))
        (:icon 0)))
      (:goto 3140))
     (:line 3090 (:if (:binary :ne (:var k) (:icon 0))) (:goto 3120))
     (:line 3100 (:if (:binary :ne (:var g) (:icon 0))) (:goto 3120))
     (:line 3110 (:if (:binary :eq (:var t) (:fcon 0.5))) (:goto 3410))
     (:line 3120 (:print (:scon "no small change, please.")))
     (:line 3130 (:goto 3060))
     (:line 3140
      (:if
       (:binary :ge
        (:binary :minus (:binary :minus (:var s) (:var g))
         (:var t))
        (:icon 0)))
      (:goto 3170))
     (:line 3150 (:gosub 3830)) (:line 3160 (:goto 3060))
     (:line 3170 (:if (:binary :ne (:var t) (:icon 0))) (:goto 3200))
     (:line 3180 (:let (:var i) (:icon 3))) (:line 3190 (:goto 3380))
     (:line 3200
      (:if
       (:binary :ge (:binary :plus (:var g) (:var t)) (:var k)))
      (:goto 3230))
     (:line 3210 (:print (:scon "if you can't see my bet, then fold.")))
     (:line 3220 (:goto 3060))
     (:line 3230 (:let (:var g) (:binary :plus (:var g) (:var t))))
     (:line 3240 (:if (:binary :eq (:var g) (:var k))) (:goto 3380))
     (:line 3250 (:if (:binary :ne (:var z) (:icon 1))) (:goto 3420))
     (:line 3260 (:if (:binary :gt (:var g) (:icon 5))) (:goto 3300))
     (:line 3270 (:if (:binary :ge (:var z) (:icon 2))) (:goto 3350))
     (:line 3280 (:let (:var v) (:icon 5))) (:line 3290 (:goto 3420))
     (:line 3300 (:if (:binary :eq (:var z) (:icon 1))) (:goto 3320))
     (:line 3310 (:if (:binary :le (:var t) (:icon 25))) (:goto 3350))
     (:line 3320 (:let (:var i) (:icon 4)))
     (:line 3330 (:print (:scon "i fold."))) (:line 3340 (:return))
     (:line 3350 (:if (:binary :eq (:var z) (:icon 2))) (:goto 3430))
     (:line 3360 (:print (:scon "i'll see you.")))
     (:line 3370 (:let (:var k) (:var g)))
     (:line 3380
      (:let (:var s) (:binary :minus (:var s) (:var g))))
     (:line 3390
      (:let (:var c) (:binary :minus (:var c) (:var k))))
     (:line 3400
      (:let (:var p)
       (:binary :plus (:binary :plus (:var p) (:var g)) (:var k))))
     (:line 3410 (:return))
     (:line 3420
      (:if (:binary :gt (:var g) (:binary :mul (:icon 3) (:var z))))
      (:goto 3350))
     (:line 3430
      (:let (:var v)
       (:binary :plus (:binary :minus (:var g) (:var k))
        (:apply fna (:icon 0)))))
     (:line 3440 (:gosub 3480))
     (:line 3450 (:print (:scon "i'll see you, and raise you") (:var v)))
     (:line 3460 (:let (:var k) (:binary :plus (:var g) (:var v))))
     (:line 3470 (:goto 3060))
     (:line 3480
      (:if
       (:binary :ge
        (:binary :minus (:binary :minus (:var c) (:var g))
         (:var v))
        (:icon 0)))
      (:goto 3660))
     (:line 3490 (:if (:binary :ne (:var g) (:icon 0))) (:goto 3520))
     (:line 3500 (:let (:var v) (:var c))) (:line 3510 (:return))
     (:line 3520
      (:if (:binary :ge (:binary :minus (:var c) (:var g)) (:icon 0)))
      (:goto 3360))
     (:line 3530
      (:if
       (:binary :ne (:binary :div (:var o) (:icon 2))
        (:apply int (:binary :div (:var o) (:icon 2)))))
      (:goto 3600))
     (:line 3540
      (:print (:scon "would you like to buy back your watch for $50") :semi))
     (:line 3550 (:input nil ((:var j$))))
     (:line 3560
      (:if
       (:binary :eq (:apply left$ (:var j$) (:icon 1)) (:scon "n")))
      (:goto 3600))
     (:line 3570 (:let (:var c) (:binary :plus (:var c) (:icon 50))))
     (:line 3580 (:let (:var o) (:binary :div (:var o) (:icon 2))))
     (:line 3590 (:return))
     (:line 3600
      (:if
       (:binary :ne (:binary :div (:var o) (:icon 3))
        (:apply int (:binary :div (:var o) (:icon 3)))))
      (:goto 3670))
     (:line 3610
      (:print (:scon "would you like to buy back your tie tack for $50")
       :semi))
     (:line 3620 (:input nil ((:var j$))))
     (:line 3630
      (:if
       (:binary :eq (:apply left$ (:var j$) (:icon 1)) (:scon "n")))
      (:goto 3670))
     (:line 3640 (:let (:var c) (:binary :plus (:var c) (:icon 50))))
     (:line 3650 (:let (:var o) (:binary :div (:var o) (:icon 3))))
     (:line 3660 (:return))
     (:line 3670 (:print (:scon "i'm busted.  congratulations!")))
     (:line 3680 (:stop))
     (:line 3690 (:print (:var h$) :semi (:var i$) :semi))
     (:line 3700 (:if (:binary :ne (:var h$) (:scon "a flus")))
      (:goto 3750))
     (:line 3710
      (:let (:var k)
       (:apply int (:binary :div (:var k) (:icon 100)))))
     (:line 3720 (:gosub 2080)) (:line 3730 (:print)) (:line 3740 (:return))
     (:line 3750 (:let (:var k) (:apply fnb (:var k))))
     (:line 3760 (:gosub 1960))
     (:line 3770 (:if (:binary :eq (:var h$) (:scon "schmal")))
      (:goto 3790))
     (:line 3780 (:if (:binary :ne (:var h$) (:scon "straig")))
      (:goto 3810))
     (:line 3790 (:print (:scon " high"))) (:line 3800 (:return))
     (:line 3810 (:print (:scon "'s"))) (:line 3820 (:return))
     (:line 3830 (:print))
     (:line 3840 (:print (:scon "you can't bet with what you haven't got.")))
     (:line 3850
      (:if
       (:binary :eq (:binary :div (:var o) (:icon 2))
        (:apply int (:binary :div (:var o) (:icon 2)))))
      (:goto 3970))
     (:line 3860 (:print (:scon "would you like to sell your watch") :semi))
     (:line 3870 (:input nil ((:var j$))))
     (:line 3880
      (:if
       (:binary :eq (:apply left$ (:var j$) (:icon 1)) (:scon "n")))
      (:goto 3970))
     (:line 3890 (:if (:binary :ge (:apply fna (:icon 0)) (:icon 7)))
      (:goto 3930))
     (:line 3900 (:print (:scon "i'll give you $75 for it.")))
     (:line 3910 (:let (:var s) (:binary :plus (:var s) (:icon 75))))
     (:line 3920 (:goto 3950))
     (:line 3930
      (:print (:scon "that's a pretty crummy watch - i'll give you $25.")))
     (:line 3940 (:let (:var s) (:binary :plus (:var s) (:icon 25))))
     (:line 3950 (:let (:var o) (:binary :mul (:var o) (:icon 2))))
     (:line 3960 (:return))
     (:line 3970
      (:if
       (:binary :ne (:binary :div (:var o) (:icon 3))
        (:apply int (:binary :div (:var o) (:icon 3)))))
      (:goto 4090))
     (:line 3980 (:print (:scon "will you part with that diamond tie tack")))
     (:line 3990 (:input nil ((:var j$))))
     (:line 4000
      (:if
       (:binary :eq (:apply left$ (:var j$) (:icon 1)) (:scon "n")))
      (:goto 4080))
     (:line 4010 (:if (:binary :ge (:apply fna (:icon 0)) (:icon 6)))
      (:goto 4050))
     (:line 4020 (:print (:scon "you are now $100 richer.")))
     (:line 4030 (:let (:var s) (:binary :plus (:var s) (:icon 100))))
     (:line 4040 (:goto 4070))
     (:line 4050 (:print (:scon "it's paste.  $25.")))
     (:line 4060 (:let (:var s) (:binary :plus (:var s) (:icon 25))))
     (:line 4070 (:let (:var o) (:binary :mul (:var o) (:icon 3))))
     (:line 4080 (:return))
     (:line 4090 (:print (:scon "your wad is shot.  so long, sucker!")))
     (:line 4100 (:end)))))



(defvar *qubit*
  '(((:line 50 (:print (:apply chr$ (:icon 26))) (:rem " width 80
"))
     (:line 100 (:print (:apply tab (:icon 33)) :semi (:scon "qubic"))
      (:print))
     (:line 110
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 120 (:print) (:print) (:print))
     (:line 210 (:print (:scon "do you want instructions") :semi))
     (:line 220 (:input nil ((:var c$))))
     (:line 230
      (:if
       (:binary :eq (:apply left$ (:var c$) (:icon 1)) (:scon "n")))
      (:goto 315))
     (:line 240
      (:if
       (:binary :eq (:apply left$ (:var c$) (:icon 1)) (:scon "y")))
      (:goto 265))
     (:line 250
      (:print (:scon "incorrect answer.  please type 'yes' or 'no'") :semi))
     (:line 260 (:goto 220)) (:line 265 (:print))
     (:line 270
      (:print (:scon "the game is tic-tac-toe in a 4 x 4 x 4 cube.")))
     (:line 280
      (:print (:scon "each move is indicated by a 3 digit number, with each")))
     (:line 290
      (:print
       (:scon "digit between 1 and 4 inclusive.  the digits indicate the")))
     (:line 300
      (:print (:scon "level, row, and column, respectively, of the occupied")))
     (:line 305 (:print (:scon "place.  "))) (:line 306 (:print))
     (:line 307
      (:print
       (:scon "to print the playing board, type 0 (zero) as your move.")))
     (:line 308
      (:print
       (:scon "the program will print the board with your moves indi-")))
     (:line 309
      (:print
       (:scon "cated with a (y), the machine's moves with an (m), and")))
     (:line 310
      (:print (:scon "unused squares with a ( ).  output is on paper.")))
     (:line 311 (:print))
     (:line 312
      (:print (:scon "to stop the program run, type 1 as your move.")))
     (:line 313 (:print) (:print))
     (:line 315
      (:dim
       ((:dimd x (:icon 64)) (:dimd l (:icon 76))
        (:dimd2 m (:icon 76) (:icon 4)) (:dimd y (:icon 16)))))
     (:line 320 (:for i (:icon 1) (:icon 16) nil))
     (:line 330 (:read (:apply y (:var i)))) (:line 340 (:next i))
     (:line 350 (:for i (:icon 1) (:icon 76) nil))
     (:line 360 (:for j (:icon 1) (:icon 4) nil))
     (:line 370 (:read (:apply m (:var i) (:var j))))
     (:line 380 (:next j)) (:line 390 (:next i))
     (:line 400 (:for i (:icon 1) (:icon 64) nil))
     (:line 410 (:let (:apply x (:var i)) (:icon 0)))
     (:line 420 (:next i)) (:line 430 (:let (:var z) (:icon 1)))
     (:line 440 (:print (:scon "do you want to move first") :semi))
     (:line 450 (:input nil ((:var s$))))
     (:line 460
      (:if
       (:binary :eq (:apply left$ (:var s$) (:icon 1)) (:scon "n")))
      (:goto 630))
     (:line 470
      (:if
       (:binary :eq (:apply left$ (:var s$) (:icon 1)) (:scon "y")))
      (:goto 500))
     (:line 480
      (:print (:scon "incorrect answer.  please type 'yes' or 'no'.") :semi))
     (:line 490 (:goto 450)) (:line 500 (:print (:scon " ")))
     (:line 510 (:print (:scon "your move") :semi))
     (:line 520 (:input nil ((:var j1))))
     (:line 521 (:if (:binary :eq (:var j1) (:icon 1))) (:goto 2770))
     (:line 522 (:if (:binary :ne (:var j1) (:icon 0))) (:goto 525))
     (:line 523 (:gosub 2550)) (:line 524 (:goto 500))
     (:line 525 (:if (:binary :lt (:var j1) (:icon 111))) (:goto 2750))
     (:line 526 (:if (:binary :gt (:var j1) (:icon 444))) (:goto 2750))
     (:line 530 (:gosub 2500))
     (:line 540
      (:let (:var k1)
       (:apply int (:binary :div (:var j1) (:icon 100)))))
     (:line 550
      (:let (:var j2)
       (:binary :minus (:var j1)
        (:binary :mul (:var k1) (:icon 100)))))
     (:line 560
      (:let (:var k2)
       (:apply int (:binary :div (:var j2) (:icon 10)))))
     (:line 570
      (:let (:var k3)
       (:binary :minus
        (:binary :minus (:var j1) (:binary :mul (:var k1) (:icon 100)))
        (:binary :mul (:var k2) (:icon 10)))))
     (:line 580
      (:let (:var m)
       (:binary :minus
        (:binary :plus
         (:binary :plus (:binary :mul (:icon 16) (:var k1))
          (:binary :mul (:icon 4) (:var k2)))
         (:var k3))
        (:icon 20))))
     (:line 590 (:if (:binary :eq (:apply x (:var m)) (:icon 0)))
      (:goto 620))
     (:line 600 (:print (:scon "that square is used, try again.")))
     (:line 610 (:goto 500))
     (:line 620 (:let (:apply x (:var m)) (:icon 1)))
     (:line 630 (:gosub 1640)) (:line 640 (:let (:var j) (:icon 1)))
     (:line 650 (:let (:var i) (:icon 1)))
     (:line 660 (:if (:binary :eq (:var j) (:icon 1))) (:goto 720))
     (:line 670 (:if (:binary :eq (:var j) (:icon 2))) (:goto 790))
     (:line 680 (:if (:binary :eq (:var j) (:icon 3))) (:goto 930))
     (:line 690 (:let (:var i) (:binary :plus (:var i) (:icon 1)))
      (:if (:binary :le (:var i) (:icon 76))) (:goto 660))
     (:line 700 (:let (:var j) (:binary :plus (:var j) (:icon 1)))
      (:if (:binary :le (:var j) (:icon 3))) (:goto 650))
     (:line 710 (:goto 1300))
     (:line 720 (:if (:binary :ne (:apply l (:var i)) (:icon 4)))
      (:goto 690))
     (:line 730 (:print (:scon "you win as follows") :semi))
     (:line 740 (:for j (:icon 1) (:icon 4) nil))
     (:line 750 (:let (:var m) (:apply m (:var i) (:var j))))
     (:line 760 (:gosub 1570)) (:line 770 (:next j))
     (:line 780 (:goto 1490))
     (:line 790 (:if (:binary :ne (:apply l (:var i)) (:icon 15)))
      (:goto 690))
     (:line 800 (:for j (:icon 1) (:icon 4) nil))
     (:line 810 (:let (:var m) (:apply m (:var i) (:var j))))
     (:line 820 (:if (:binary :ne (:apply x (:var m)) (:icon 0)))
      (:goto 860))
     (:line 830 (:let (:apply x (:var m)) (:icon 5)))
     (:line 840 (:print (:scon "machine moves to") :semi))
     (:line 850 (:gosub 1570)) (:line 860 (:next j))
     (:line 870 (:print (:scon ", and wins as follows")))
     (:line 880 (:for j (:icon 1) (:icon 4) nil))
     (:line 890 (:let (:var m) (:apply m (:var i) (:var j))))
     (:line 900 (:gosub 1570)) (:line 910 (:next j))
     (:line 920 (:goto 1490))
     (:line 930 (:if (:binary :ne (:apply l (:var i)) (:icon 3)))
      (:goto 690))
     (:line 940 (:print (:scon "nice try. machine moves to") :semi))
     (:line 950 (:for j (:icon 1) (:icon 4) nil))
     (:line 960 (:let (:var m) (:apply m (:var i) (:var j))))
     (:line 970 (:if (:binary :ne (:apply x (:var m)) (:icon 0)))
      (:goto 1010))
     (:line 980 (:let (:apply x (:var m)) (:icon 5)))
     (:line 990 (:gosub 1570)) (:line 1000 (:goto 500))
     (:line 1010 (:next j)) (:line 1020 (:goto 1300))
     (:line 1030 (:let (:var i) (:icon 1)))
     (:line 1040
      (:let (:apply l (:var i))
       (:binary :plus
        (:binary :plus
         (:binary :plus (:apply x (:apply m (:var i) (:icon 1)))
          (:apply x (:apply m (:var i) (:icon 2))))
         (:apply x (:apply m (:var i) (:icon 3))))
        (:apply x (:apply m (:var i) (:icon 4))))))
     (:line 1050 (:let (:var l) (:apply l (:var i))))
     (:line 1060 (:if (:binary :lt (:var l) (:icon 2))) (:goto 1130))
     (:line 1070 (:if (:binary :ge (:var l) (:icon 3))) (:goto 1130))
     (:line 1080 (:if (:binary :gt (:var l) (:icon 2))) (:goto 2230))
     (:line 1090 (:for j (:icon 1) (:icon 4) nil))
     (:line 1100
      (:if
       (:binary :ne (:apply x (:apply m (:var i) (:var j)))
        (:icon 0)))
      (:goto 1120))
     (:line 1110
      (:let (:apply x (:apply m (:var i) (:var j)))
       (:binary :div (:icon 1) (:icon 8))))
     (:line 1120 (:next j))
     (:line 1130 (:let (:var i) (:binary :plus (:var i) (:icon 1)))
      (:if (:binary :le (:var i) (:icon 76))) (:goto 1040))
     (:line 1140 (:gosub 1640)) (:line 1150 (:let (:var i) (:icon 1)))
     (:line 1160
      (:if
       (:binary :eq (:apply l (:var i))
        (:binary :div (:icon 1) (:icon 2))))
      (:goto 2360))
     (:line 1170
      (:if
       (:binary :eq (:apply l (:var i))
        (:binary :plus (:icon 1) (:binary :div (:icon 3) (:icon 8)))))
      (:goto 2360))
     (:line 1180 (:let (:var i) (:binary :plus (:var i) (:icon 1)))
      (:if (:binary :le (:var i) (:icon 76))) (:goto 1160))
     (:line 1190 (:goto 1830)) (:line 1200 (:let (:var z) (:icon 1)))
     (:line 1210
      (:if (:binary :eq (:apply x (:apply y (:var z))) (:icon 0)))
      (:goto 1250))
     (:line 1220 (:let (:var z) (:binary :plus (:var z) (:icon 1))))
     (:line 1230 (:if (:binary :ne (:var z) (:icon 17))) (:goto 1210))
     (:line 1240 (:goto 1720))
     (:line 1250 (:let (:var m) (:apply y (:var z))))
     (:line 1260 (:let (:apply x (:var m)) (:icon 5)))
     (:line 1270 (:print (:scon "machine moves to") :semi))
     (:line 1280 (:gosub 1570)) (:line 1290 (:goto 500))
     (:line 1300 (:let (:var x) (:var x)))
     (:line 1310 (:let (:var i) (:icon 1)))
     (:line 1320
      (:let (:apply l (:var i))
       (:binary :plus
        (:binary :plus
         (:binary :plus (:apply x (:apply m (:var i) (:icon 1)))
          (:apply x (:apply m (:var i) (:icon 2))))
         (:apply x (:apply m (:var i) (:icon 3))))
        (:apply x (:apply m (:var i) (:icon 4))))))
     (:line 1330 (:let (:var l) (:apply l (:var i))))
     (:line 1340 (:if (:binary :lt (:var l) (:icon 10))) (:goto 1410))
     (:line 1350 (:if (:binary :ge (:var l) (:icon 11))) (:goto 1410))
     (:line 1360 (:if (:binary :gt (:var l) (:icon 10))) (:goto 2230))
     (:line 1370 (:for j (:icon 1) (:icon 4) nil))
     (:line 1380
      (:if
       (:binary :ne (:apply x (:apply m (:var i) (:var j)))
        (:icon 0)))
      (:goto 1400))
     (:line 1390
      (:let (:apply x (:apply m (:var i) (:var j)))
       (:binary :div (:icon 1) (:icon 8))))
     (:line 1400 (:next j))
     (:line 1410 (:let (:var i) (:binary :plus (:var i) (:icon 1)))
      (:if (:binary :le (:var i) (:icon 76))) (:goto 1320))
     (:line 1420 (:gosub 1640)) (:line 1430 (:let (:var i) (:icon 1)))
     (:line 1440 (:if (:binary :eq (:apply l (:var i)) (:fcon 0.5)))
      (:goto 2360))
     (:line 1450
      (:if
       (:binary :eq (:apply l (:var i))
        (:binary :plus (:icon 5) (:binary :div (:icon 3) (:icon 8)))))
      (:goto 2360))
     (:line 1460 (:let (:var i) (:binary :plus (:var i) (:icon 1)))
      (:if (:binary :le (:var i) (:icon 76))) (:goto 1440))
     (:line 1470 (:gosub 2500)) (:line 1480 (:goto 1030))
     (:line 1490 (:print (:scon " ")))
     (:line 1500 (:print (:scon "do you want to try another game") :semi))
     (:line 1510 (:input nil ((:var x$))))
     (:line 1520
      (:if
       (:binary :eq (:apply left$ (:var x$) (:icon 1)) (:scon "y")))
      (:goto 400))
     (:line 1530
      (:if
       (:binary :eq (:apply left$ (:var x$) (:icon 1)) (:scon "n")))
      (:goto 1560))
     (:line 1540
      (:print (:scon "incorrect answer. please type 'yes' or 'no'") :semi))
     (:line 1550 (:goto 1510)) (:line 1560 (:end))
     (:line 1570
      (:let (:var k1)
       (:binary :plus
        (:apply int
         (:binary :div (:binary :minus (:var m) (:icon 1)) (:icon 16)))
        (:icon 1))))
     (:line 1580
      (:let (:var j2)
       (:binary :minus (:var m)
        (:binary :mul (:icon 16) (:binary :minus (:var k1) (:icon 1))))))
     (:line 1590
      (:let (:var k2)
       (:binary :plus
        (:apply int
         (:binary :div (:binary :minus (:var j2) (:icon 1)) (:icon 4)))
        (:icon 1))))
     (:line 1600
      (:let (:var k3)
       (:binary :minus
        (:binary :minus (:var m)
         (:binary :mul (:binary :minus (:var k1) (:icon 1)) (:icon 16)))
        (:binary :mul (:binary :minus (:var k2) (:icon 1)) (:icon 4)))))
     (:line 1610
      (:let (:var m)
       (:binary :plus
        (:binary :plus (:binary :mul (:var k1) (:icon 100))
         (:binary :mul (:var k2) (:icon 10)))
        (:var k3))))
     (:line 1620 (:print (:var m) :semi)) (:line 1630 (:return))
     (:line 1640 (:for s (:icon 1) (:icon 76) nil))
     (:line 1650 (:let (:var j1) (:apply m (:var s) (:icon 1))))
     (:line 1660 (:let (:var j2) (:apply m (:var s) (:icon 2))))
     (:line 1670 (:let (:var j3) (:apply m (:var s) (:icon 3))))
     (:line 1680 (:let (:var j4) (:apply m (:var s) (:icon 4))))
     (:line 1690
      (:let (:apply l (:var s))
       (:binary :plus
        (:binary :plus
         (:binary :plus (:apply x (:var j1))
          (:apply x (:var j2)))
         (:apply x (:var j3)))
        (:apply x (:var j4)))))
     (:line 1700 (:next s)) (:line 1710 (:return))
     (:line 1720 (:for i (:icon 1) (:icon 64) nil))
     (:line 1730 (:if (:binary :ne (:apply x (:var i)) (:icon 0)))
      (:goto 1800))
     (:line 1740 (:let (:apply x (:var i)) (:icon 5)))
     (:line 1750 (:let (:var m) (:var i)))
     (:line 1760 (:print (:scon "machine likes") :semi))
     (:line 1770 (:gosub 1570)) (:line 1780 (:print (:scon " ")))
     (:line 1790 (:goto 500)) (:line 1800 (:next i))
     (:line 1810 (:print (:scon "the game is a draw.")))
     (:line 1820 (:goto 1490))
     (:line 1830 (:for k (:icon 1) (:icon 18) nil))
     (:line 1840 (:let (:var p) (:icon 0)))
     (:line 1850
      (:for i
       (:binary :minus (:binary :mul (:icon 4) (:var k)) (:icon 3))
       (:binary :mul (:icon 4) (:var k)) nil))
     (:line 1860 (:for j (:icon 1) (:icon 4) nil))
     (:line 1870
      (:let (:var p)
       (:binary :plus (:var p)
        (:apply x (:apply m (:var i) (:var j))))))
     (:line 1880 (:next j)) (:line 1890 (:next i))
     (:line 1900 (:if (:binary :lt (:var p) (:icon 4))) (:goto 1940))
     (:line 1910 (:if (:binary :lt (:var p) (:icon 5))) (:goto 1970))
     (:line 1920 (:if (:binary :lt (:var p) (:icon 9))) (:goto 1940))
     (:line 1930 (:if (:binary :lt (:var p) (:icon 10))) (:goto 1970))
     (:line 1940 (:next k)) (:line 1950 (:gosub 2500))
     (:line 1960 (:goto 1200))
     (:line 1970 (:let (:var s) (:binary :div (:icon 1) (:icon 8))))
     (:line 1980
      (:for i
       (:binary :minus (:binary :mul (:icon 4) (:var k)) (:icon 3))
       (:binary :mul (:icon 4) (:var k)) nil))
     (:line 1990 (:goto 2370)) (:line 2000 (:next i))
     (:line 2010 (:let (:var s) (:icon 0))) (:line 2020 (:goto 1980))
     (:line 2030
      (:data (:icon 1) (:icon 49) (:icon 52) (:icon 4) (:icon 13) (:icon 61)
       (:icon 64) (:icon 16) (:icon 22) (:icon 39) (:icon 23) (:icon 38)
       (:icon 26) (:icon 42) (:icon 27) (:icon 43)))
     (:line 2040
      (:data (:icon 1) (:icon 2) (:icon 3) (:icon 4) (:icon 5) (:icon 6)
       (:icon 7) (:icon 8) (:icon 9) (:icon 10) (:icon 11) (:icon 12)
       (:icon 13) (:icon 14) (:icon 15) (:icon 16) (:icon 17) (:icon 18)
       (:icon 19) (:icon 20)))
     (:line 2050
      (:data (:icon 21) (:icon 22) (:icon 23) (:icon 24) (:icon 25) (:icon 26)
       (:icon 27) (:icon 28) (:icon 29) (:icon 30) (:icon 31) (:icon 32)
       (:icon 33) (:icon 34) (:icon 35) (:icon 36) (:icon 37) (:icon 38)))
     (:line 2060
      (:data (:icon 39) (:icon 40) (:icon 41) (:icon 42) (:icon 43) (:icon 44)
       (:icon 45) (:icon 46) (:icon 47) (:icon 48) (:icon 49) (:icon 50)
       (:icon 51) (:icon 52) (:icon 53) (:icon 54) (:icon 55) (:icon 56)))
     (:line 2070
      (:data (:icon 57) (:icon 58) (:icon 59) (:icon 60) (:icon 61) (:icon 62)
       (:icon 63) (:icon 64)))
     (:line 2080
      (:data (:icon 1) (:icon 17) (:icon 33) (:icon 49) (:icon 5) (:icon 21)
       (:icon 37) (:icon 53) (:icon 9) (:icon 25) (:icon 41) (:icon 57)
       (:icon 13) (:icon 29) (:icon 45) (:icon 61)))
     (:line 2090
      (:data (:icon 2) (:icon 18) (:icon 34) (:icon 50) (:icon 6) (:icon 22)
       (:icon 38) (:icon 54) (:icon 10) (:icon 26) (:icon 42) (:icon 58)
       (:icon 14) (:icon 30) (:icon 46) (:icon 62)))
     (:line 2100
      (:data (:icon 3) (:icon 19) (:icon 35) (:icon 51) (:icon 7) (:icon 23)
       (:icon 39) (:icon 55) (:icon 11) (:icon 27) (:icon 43) (:icon 59)
       (:icon 15) (:icon 31) (:icon 47) (:icon 63)))
     (:line 2110
      (:data (:icon 4) (:icon 20) (:icon 36) (:icon 52) (:icon 8) (:icon 24)
       (:icon 40) (:icon 56) (:icon 12) (:icon 28) (:icon 44) (:icon 60)
       (:icon 16) (:icon 32) (:icon 48) (:icon 64)))
     (:line 2120
      (:data (:icon 1) (:icon 5) (:icon 9) (:icon 13) (:icon 17) (:icon 21)
       (:icon 25) (:icon 29) (:icon 33) (:icon 37) (:icon 41) (:icon 45)
       (:icon 49) (:icon 53) (:icon 57) (:icon 61)))
     (:line 2130
      (:data (:icon 2) (:icon 6) (:icon 10) (:icon 14) (:icon 18) (:icon 22)
       (:icon 26) (:icon 30) (:icon 34) (:icon 38) (:icon 42) (:icon 46)
       (:icon 50) (:icon 54) (:icon 58) (:icon 62)))
     (:line 2140
      (:data (:icon 3) (:icon 7) (:icon 11) (:icon 15) (:icon 19) (:icon 23)
       (:icon 27) (:icon 31) (:icon 35) (:icon 39) (:icon 43) (:icon 47)
       (:icon 51) (:icon 55) (:icon 59) (:icon 63)))
     (:line 2150
      (:data (:icon 4) (:icon 8) (:icon 12) (:icon 16) (:icon 20) (:icon 24)
       (:icon 28) (:icon 32) (:icon 36) (:icon 40) (:icon 44) (:icon 48)
       (:icon 52) (:icon 56) (:icon 60) (:icon 64)))
     (:line 2160
      (:data (:icon 1) (:icon 6) (:icon 11) (:icon 16) (:icon 17) (:icon 22)
       (:icon 27) (:icon 32) (:icon 33) (:icon 38) (:icon 43) (:icon 48)
       (:icon 49) (:icon 54) (:icon 59) (:icon 64)))
     (:line 2170
      (:data (:icon 13) (:icon 10) (:icon 7) (:icon 4) (:icon 29) (:icon 26)
       (:icon 23) (:icon 20) (:icon 45) (:icon 42) (:icon 39) (:icon 36)
       (:icon 61) (:icon 58) (:icon 55) (:icon 52)))
     (:line 2180
      (:data (:icon 1) (:icon 21) (:icon 41) (:icon 61) (:icon 2) (:icon 22)
       (:icon 42) (:icon 62) (:icon 3) (:icon 23) (:icon 43) (:icon 63)
       (:icon 4) (:icon 24) (:icon 44) (:icon 64)))
     (:line 2190
      (:data (:icon 49) (:icon 37) (:icon 25) (:icon 13) (:icon 50) (:icon 38)
       (:icon 26) (:icon 14) (:icon 51) (:icon 39) (:icon 27) (:icon 15)
       (:icon 52) (:icon 40) (:icon 28) (:icon 16)))
     (:line 2200
      (:data (:icon 1) (:icon 18) (:icon 35) (:icon 52) (:icon 5) (:icon 22)
       (:icon 39) (:icon 56) (:icon 9) (:icon 26) (:icon 43) (:icon 60)
       (:icon 13) (:icon 30) (:icon 47) (:icon 64)))
     (:line 2210
      (:data (:icon 49) (:icon 34) (:icon 19) (:icon 4) (:icon 53) (:icon 38)
       (:icon 23) (:icon 8) (:icon 57) (:icon 42) (:icon 27) (:icon 12)
       (:icon 61) (:icon 46) (:icon 31) (:icon 16)))
     (:line 2220
      (:data (:icon 1) (:icon 22) (:icon 43) (:icon 64) (:icon 16) (:icon 27)
       (:icon 38) (:icon 49) (:icon 4) (:icon 23) (:icon 42) (:icon 61)
       (:icon 13) (:icon 26) (:icon 39) (:icon 52)))
     (:line 2230 (:for j (:icon 1) (:icon 4) nil))
     (:line 2240
      (:if
       (:binary :ne (:apply x (:apply m (:var i) (:var j)))
        (:binary :div (:icon 1) (:icon 8))))
      (:goto 2330))
     (:line 2250
      (:let (:apply x (:apply m (:var i) (:var j))) (:icon 5)))
     (:line 2260 (:if (:binary :lt (:apply l (:var i)) (:icon 5)))
      (:goto 2290))
     (:line 2270
      (:print (:scon "let's see you get out of this:  machine moves to")
       :semi))
     (:line 2280 (:goto 2300))
     (:line 2290
      (:print (:scon "you fox.  just in the nick of time, machine moves to")
       :semi))
     (:line 2300 (:let (:var m) (:apply m (:var i) (:var j))))
     (:line 2310 (:gosub 1570)) (:line 2320 (:goto 500))
     (:line 2330 (:next j))
     (:line 2340 (:print (:scon "machine concedes this game.")))
     (:line 2350 (:goto 1490))
     (:line 2360 (:let (:var s) (:binary :div (:icon 1) (:icon 8))))
     (:line 2370
      (:if
       (:binary :gt
        (:binary :minus (:var i)
         (:binary :mul (:apply int (:binary :div (:var i) (:icon 4)))
          (:icon 4)))
        (:icon 1)))
      (:goto 2400))
     (:line 2380 (:let (:var a) (:icon 1))) (:line 2390 (:goto 2410))
     (:line 2400 (:let (:var a) (:icon 2)))
     (:line 2410
      (:for j (:var a) (:binary :minus (:icon 5) (:var a))
       (:binary :minus (:icon 5) (:binary :mul (:icon 2) (:var a)))))
     (:line 2420
      (:if
       (:binary :eq (:apply x (:apply m (:var i) (:var j)))
        (:var s)))
      (:goto 2450))
     (:line 2430 (:next j)) (:line 2440 (:goto 2000))
     (:line 2450
      (:let (:apply x (:apply m (:var i) (:var j))) (:icon 5)))
     (:line 2460 (:let (:var m) (:apply m (:var i) (:var j))))
     (:line 2470 (:print (:scon "machine takes") :semi))
     (:line 2480 (:gosub 1570)) (:line 2490 (:goto 500))
     (:line 2500 (:for i (:icon 1) (:icon 64) nil))
     (:line 2510
      (:if
       (:binary :ne (:apply x (:var i))
        (:binary :div (:icon 1) (:icon 8))))
      (:goto 2530))
     (:line 2520 (:let (:apply x (:var i)) (:icon 0)))
     (:line 2530 (:next i)) (:line 2540 (:return))
     (:line 2550 (:for xx (:icon 1) (:icon 9) nil) (:print) (:next)
      (:for i (:icon 1) (:icon 4) nil))
     (:line 2560 (:for j (:icon 1) (:icon 4) nil))
     (:line 2562 (:for i1 (:icon 1) (:var j) nil))
     (:line 2564 (:print (:scon "   ") :semi)) (:line 2566 (:next i1))
     (:line 2570 (:for k (:icon 1) (:icon 4) nil))
     (:line 2600
      (:let (:var q)
       (:binary :minus
        (:binary :plus
         (:binary :plus (:binary :mul (:icon 16) (:var i))
          (:binary :mul (:icon 4) (:var j)))
         (:var k))
        (:icon 20))))
     (:line 2610 (:if (:binary :ne (:apply x (:var q)) (:var o)))
      (:goto 2630))
     (:line 2620 (:print (:scon "( )      ") :semi))
     (:line 2630 (:if (:binary :ne (:apply x (:var q)) (:icon 5)))
      (:goto 2650))
     (:line 2640 (:print (:scon "(m)      ") :semi))
     (:line 2650 (:if (:binary :ne (:apply x (:var q)) (:icon 1)))
      (:goto 2660))
     (:line 2655 (:print (:scon "(y)      ") :semi))
     (:line 2660
      (:if
       (:binary :ne (:apply x (:var q))
        (:binary :div (:icon 1) (:icon 8))))
      (:goto 2670))
     (:line 2665 (:print (:scon "( )      ") :semi)) (:line 2670 (:next k))
     (:line 2680 (:print)) (:line 2690 (:print)) (:line 2700 (:next j))
     (:line 2710 (:print)) (:line 2720 (:print)) (:line 2730 (:next i))
     (:line 2735 (:rem " print chr$(12)
")) (:line 2740 (:return))
     (:line 2750 (:print (:scon "incorrect move, retype it--") :semi))
     (:line 2760 (:goto 520)) (:line 2770 (:end)))))



(defvar *queen*
  '(((:line 1 (:print (:apply tab (:icon 33)) :semi (:scon "queen")))
     (:line 2
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 3 (:print) (:print) (:print))
     (:line 10 (:dim ((:dimd s (:icon 64)))))
     (:line 11 (:for i (:icon 1) (:icon 64) nil))
     (:line 12 (:read (:apply s (:var i)))) (:line 13 (:next i))
     (:line 14
      (:data (:icon 81) (:icon 71) (:icon 61) (:icon 51) (:icon 41) (:icon 31)
       (:icon 21) (:icon 11)))
     (:line 15
      (:data (:icon 92) (:icon 82) (:icon 72) (:icon 62) (:icon 52) (:icon 42)
       (:icon 32) (:icon 22)))
     (:line 16
      (:data (:icon 103) (:icon 93) (:icon 83) (:icon 73) (:icon 63) (:icon 53)
       (:icon 43) (:icon 33)))
     (:line 17
      (:data (:icon 114) (:icon 104) (:icon 94) (:icon 84) (:icon 74)
       (:icon 64) (:icon 54) (:icon 44)))
     (:line 18
      (:data (:icon 125) (:icon 115) (:icon 105) (:icon 95) (:icon 85)
       (:icon 75) (:icon 65) (:icon 55)))
     (:line 19
      (:data (:icon 136) (:icon 126) (:icon 116) (:icon 106) (:icon 96)
       (:icon 86) (:icon 76) (:icon 66)))
     (:line 20
      (:data (:icon 147) (:icon 137) (:icon 127) (:icon 117) (:icon 107)
       (:icon 97) (:icon 87) (:icon 77)))
     (:line 21
      (:data (:icon 158) (:icon 148) (:icon 138) (:icon 128) (:icon 118)
       (:icon 108) (:icon 98) (:icon 88)))
     (:line 22 (:input "do you want instructions" ((:var w$))))
     (:line 23 (:if (:binary :eq (:var w$) (:scon "no"))) (:goto 30))
     (:line 24 (:if (:binary :eq (:var w$) (:scon "yes"))) (:goto 28))
     (:line 25 (:print (:scon "please answer 'yes' or 'no'.")))
     (:line 26 (:goto 22)) (:line 28 (:gosub 5000)) (:line 29 (:goto 100))
     (:line 30 (:gosub 5160)) (:line 90 (:rem "     error checks
"))
     (:line 100 (:print (:scon "where would you like to start") :semi))
     (:line 110 (:input nil ((:var m1))))
     (:line 115 (:if (:binary :eq (:var m1) (:icon 0))) (:goto 232))
     (:line 120
      (:let (:var t1)
       (:apply int (:binary :div (:var m1) (:icon 10)))))
     (:line 130
      (:let (:var u1)
       (:binary :minus (:var m1) (:binary :mul (:icon 10) (:var t1)))))
     (:line 140 (:if (:binary :eq (:var u1) (:icon 1))) (:goto 200))
     (:line 150 (:if (:binary :eq (:var u1) (:var t1))) (:goto 200))
     (:line 160 (:print (:scon "please read the directions again.")))
     (:line 170 (:print (:scon "you have begun illegally.")))
     (:line 175 (:print)) (:line 180 (:goto 100)) (:line 200 (:gosub 2000))
     (:line 210 (:print (:scon "computer moves to square") :semi (:var m)))
     (:line 215 (:if (:binary :eq (:var m) (:icon 158))) (:goto 3400))
     (:line 220 (:print (:scon "what is your move") :semi))
     (:line 230 (:input nil ((:var m1))))
     (:line 231 (:if (:binary :ne (:var m1) (:icon 0))) (:goto 239))
     (:line 232 (:print))
     (:line 233 (:print (:scon "it looks like i have won by forfeit.")))
     (:line 234 (:print)) (:line 235 (:goto 4000))
     (:line 239 (:if (:binary :le (:var m1) (:var m))) (:goto 3200))
     (:line 240
      (:let (:var t1)
       (:apply int (:binary :div (:var m1) (:icon 10)))))
     (:line 250
      (:let (:var u1)
       (:binary :minus (:var m1) (:binary :mul (:icon 10) (:var t1)))))
     (:line 260
      (:let (:var p) (:binary :minus (:var u1) (:var u))))
     (:line 270 (:if (:binary :ne (:var p) (:icon 0))) (:goto 300))
     (:line 280
      (:let (:var l) (:binary :minus (:var t1) (:var t))))
     (:line 290 (:if (:binary :le (:var l) (:icon 0))) (:goto 3200))
     (:line 295 (:goto 200))
     (:line 300
      (:if
       (:binary :ne (:binary :minus (:var t1) (:var t)) (:var p)))
      (:goto 320))
     (:line 310 (:goto 200))
     (:line 320
      (:if
       (:binary :ne (:binary :minus (:var t1) (:var t))
        (:binary :mul (:icon 2) (:var p))))
      (:goto 3200))
     (:line 330 (:goto 200))
     (:line 1990 (:rem "     locate move for computer
"))
     (:line 2000 (:if (:binary :eq (:var m1) (:icon 41))) (:goto 2180))
     (:line 2010 (:if (:binary :eq (:var m1) (:icon 44))) (:goto 2180))
     (:line 2020 (:if (:binary :eq (:var m1) (:icon 73))) (:goto 2180))
     (:line 2030 (:if (:binary :eq (:var m1) (:icon 75))) (:goto 2180))
     (:line 2040 (:if (:binary :eq (:var m1) (:icon 126))) (:goto 2180))
     (:line 2050 (:if (:binary :eq (:var m1) (:icon 127))) (:goto 2180))
     (:line 2060 (:if (:binary :eq (:var m1) (:icon 158))) (:goto 3300))
     (:line 2065 (:let (:var c) (:icon 0)))
     (:line 2070 (:for k (:icon 7) (:icon 1) (:uminus (:icon 1))))
     (:line 2080 (:let (:var u) (:var u1)))
     (:line 2090
      (:let (:var t) (:binary :plus (:var t1) (:var k))))
     (:line 2100 (:gosub 3500))
     (:line 2105 (:if (:binary :eq (:var c) (:icon 1))) (:goto 2160))
     (:line 2110 (:let (:var u) (:binary :plus (:var u) (:var k))))
     (:line 2120 (:gosub 3500))
     (:line 2125 (:if (:binary :eq (:var c) (:icon 1))) (:goto 2160))
     (:line 2130 (:let (:var t) (:binary :plus (:var t) (:var k))))
     (:line 2140 (:gosub 3500))
     (:line 2145 (:if (:binary :eq (:var c) (:icon 1))) (:goto 2160))
     (:line 2150 (:next k)) (:line 2155 (:goto 2180))
     (:line 2160 (:let (:var c) (:icon 0))) (:line 2170 (:return))
     (:line 2180 (:gosub 3000)) (:line 2190 (:return))
     (:line 2990 (:rem "     random move
"))
     (:line 3000 (:let (:var z) (:apply rnd (:icon 1))))
     (:line 3010 (:if (:binary :gt (:var z) (:fcon 0.6))) (:goto 3110))
     (:line 3020 (:if (:binary :gt (:var z) (:fcon 0.3))) (:goto 3070))
     (:line 3030 (:let (:var u) (:var u1)))
     (:line 3040 (:let (:var t) (:binary :plus (:var t1) (:icon 1))))
     (:line 3050
      (:let (:var m)
       (:binary :plus (:binary :mul (:icon 10) (:var t)) (:var u))))
     (:line 3060 (:return))
     (:line 3070 (:let (:var u) (:binary :plus (:var u1) (:icon 1))))
     (:line 3080 (:let (:var t) (:binary :plus (:var t1) (:icon 2))))
     (:line 3090
      (:let (:var m)
       (:binary :plus (:binary :mul (:icon 10) (:var t)) (:var u))))
     (:line 3100 (:return))
     (:line 3110 (:let (:var u) (:binary :plus (:var u1) (:icon 1))))
     (:line 3120 (:let (:var t) (:binary :plus (:var t1) (:icon 1))))
     (:line 3130
      (:let (:var m)
       (:binary :plus (:binary :mul (:icon 10) (:var t)) (:var u))))
     (:line 3140 (:return)) (:line 3190 (:rem "     illegal move message
"))
     (:line 3200 (:print))
     (:line 3210 (:print (:scon "y o u   c h e a t . . .  try again") :semi))
     (:line 3220 (:goto 230)) (:line 3290 (:rem "     player wins
"))
     (:line 3300 (:print))
     (:line 3310 (:print (:scon "c o n g r a t u l a t i o n s . . .")))
     (:line 3320 (:print))
     (:line 3330 (:print (:scon "you have won--very well played.")))
     (:line 3340 (:print (:scon "it looks like i have met my match.")))
     (:line 3350
      (:print (:scon "thanks for playing---i can't win all the time.")))
     (:line 3360 (:print)) (:line 3370 (:goto 4000))
     (:line 3390 (:rem "     computer wins
")) (:line 3400 (:print))
     (:line 3410 (:print (:scon "nice try, but it looks like i have won.")))
     (:line 3420 (:print (:scon "thanks for playing."))) (:line 3430 (:print))
     (:line 3440 (:goto 4000))
     (:line 3490 (:rem "     test for computer move
"))
     (:line 3500
      (:let (:var m)
       (:binary :plus (:binary :mul (:icon 10) (:var t)) (:var u))))
     (:line 3510 (:if (:binary :eq (:var m) (:icon 158))) (:goto 3570))
     (:line 3520 (:if (:binary :eq (:var m) (:icon 127))) (:goto 3570))
     (:line 3530 (:if (:binary :eq (:var m) (:icon 126))) (:goto 3570))
     (:line 3540 (:if (:binary :eq (:var m) (:icon 75))) (:goto 3570))
     (:line 3550 (:if (:binary :eq (:var m) (:icon 73))) (:goto 3570))
     (:line 3560 (:return)) (:line 3570 (:let (:var c) (:icon 1)))
     (:line 3580 (:goto 3560)) (:line 3990 (:rem "     another game???
"))
     (:line 4000 (:print (:scon "anyone else care to try") :semi))
     (:line 4010 (:input nil ((:var q$)))) (:line 4020 (:print))
     (:line 4030 (:if (:binary :eq (:var q$) (:scon "yes"))) (:goto 30))
     (:line 4040 (:if (:binary :eq (:var q$) (:scon "no"))) (:goto 4050))
     (:line 4042 (:print (:scon "please answer 'yes' or 'no'.")))
     (:line 4045 (:goto 4000))
     (:line 4050 (:print) (:print (:scon "ok --- thanks again.")))
     (:line 4060 (:stop)) (:line 4990 (:rem "     directions
"))
     (:line 5000
      (:print (:scon "we are going to play a game based on one of the chess")))
     (:line 5010
      (:print
       (:scon "moves.  our queen will be able to move only to the left,")))
     (:line 5020 (:print (:scon "down, or diagonally down and to the left.")))
     (:line 5030 (:print))
     (:line 5040
      (:print
       (:scon "the object of the game is to place the queen in the lower")))
     (:line 5050
      (:print
       (:scon "left hand square by alternating moves between you and the")))
     (:line 5060
      (:print
       (:scon "computer.  the first one to place the queen there wins.")))
     (:line 5070 (:print))
     (:line 5080
      (:print
       (:scon "you go first and place the queen in any one of the squares")))
     (:line 5090 (:print (:scon "on the top row or right hand column.")))
     (:line 5100 (:print (:scon "that will be your first move.")))
     (:line 5110 (:print (:scon "we alternate moves.")))
     (:line 5120
      (:print (:scon "you may forfeit by typing '0' as your move.")))
     (:line 5130
      (:print (:scon "be sure to press the return key after each response.")))
     (:line 5140 (:print)) (:line 5150 (:print)) (:line 5160 (:print))
     (:line 5170 (:for a (:icon 0) (:icon 7) nil))
     (:line 5180 (:for b (:icon 1) (:icon 8) nil))
     (:line 5185
      (:let (:var i)
       (:binary :plus (:binary :mul (:icon 8) (:var a)) (:var b))))
     (:line 5190 (:print (:apply s (:var i)) :semi))
     (:line 5200 (:next b)) (:line 5210 (:print)) (:line 5220 (:print))
     (:line 5230 (:print)) (:line 5240 (:next a)) (:line 5250 (:print))
     (:line 5260 (:return)) (:line 9999 (:end)))))



(defvar *reverse*
  '(((:line 10 (:print (:apply tab (:icon 32)) :semi (:scon "reverse")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print))
     (:line 100 (:print (:scon "reverse -- a game of skill")) (:print))
     (:line 130 (:dim ((:dimd a (:icon 20)))))
     (:line 140 (:rem " *** n=number of numbers
"))
     (:line 150 (:let (:var n) (:icon 9)))
     (:line 160 (:print (:scon "do you want the rules") :semi))
     (:line 170 (:input nil ((:var a$))))
     (:line 180 (:if (:binary :eq (:var a$) (:scon "no"))) (:goto 210))
     (:line 190 (:gosub 710))
     (:line 200 (:rem " *** make a random list a(1) to a(n)
"))
     (:line 210
      (:let (:apply a (:icon 1))
       (:apply int
        (:binary :plus
         (:binary :mul (:binary :minus (:var n) (:icon 1))
          (:apply rnd (:icon 1)))
         (:icon 2)))))
     (:line 220 (:for k (:icon 2) (:var n) nil))
     (:line 230
      (:let (:apply a (:var k))
       (:apply int
        (:binary :plus (:binary :mul (:var n) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 240
      (:for j (:icon 1) (:binary :minus (:var k) (:icon 1)) nil))
     (:line 250
      (:if
       (:binary :eq (:apply a (:var k)) (:apply a (:var j))))
      (:goto 230))
     (:line 260 (:next j) (:next k))
     (:line 280 (:rem " *** print original list and start game
"))
     (:line 290 (:print) (:print (:scon "here we go ... the list is:")))
     (:line 310 (:let (:var t) (:icon 0))) (:line 320 (:gosub 610))
     (:line 330 (:print (:scon "how many shall i reverse") :semi))
     (:line 340 (:input nil ((:var r))))
     (:line 350 (:if (:binary :eq (:var r) (:icon 0))) (:goto 520))
     (:line 360 (:if (:binary :le (:var r) (:var n))) (:goto 390))
     (:line 370
      (:print (:scon "oops! too many! i can reverse at most") :semi
       (:var n))
      (:goto 330))
     (:line 390 (:let (:var t) (:binary :plus (:var t) (:icon 1))))
     (:line 400 (:rem " *** reverse r numbers and print new list
"))
     (:line 410
      (:for k (:icon 1)
       (:apply int (:binary :div (:var r) (:icon 2))) nil))
     (:line 420 (:let (:var z) (:apply a (:var k))))
     (:line 430
      (:let (:apply a (:var k))
       (:apply a
        (:binary :plus (:binary :minus (:var r) (:var k)) (:icon 1)))))
     (:line 440
      (:let
       (:apply a
        (:binary :plus (:binary :minus (:var r) (:var k)) (:icon 1)))
       (:var z)))
     (:line 450 (:next k)) (:line 460 (:gosub 610))
     (:line 470 (:rem " *** check for a win
"))
     (:line 480 (:for k (:icon 1) (:var n) nil))
     (:line 490 (:if (:binary :ne (:apply a (:var k)) (:var k)))
      (:goto 330))
     (:line 500 (:next k))
     (:line 510
      (:print (:scon "you won it in") :semi (:var t) :semi
       (:scon "moves!!!"))
      (:print))
     (:line 520 (:print))
     (:line 530 (:print (:scon "try again (yes or no)") :semi))
     (:line 540 (:input nil ((:var a$))))
     (:line 550 (:if (:binary :eq (:var a$) (:scon "yes"))) (:goto 210))
     (:line 560 (:print) (:print (:scon "o.k. hope you had fun!!"))
      (:goto 999))
     (:line 600 (:rem " *** subroutine to print list
"))
     (:line 610 (:print) (:for k (:icon 1) (:var n) nil)
      (:print (:apply a (:var k)) :semi) (:next k))
     (:line 650 (:print) (:print) (:return))
     (:line 700 (:rem " *** subroutine to print the rules
"))
     (:line 710 (:print)
      (:print (:scon "this is the game of 'reverse'.  to win, all you have")))
     (:line 720
      (:print (:scon "to do is arrange a list of numbers (1 through") :semi
       (:var n) :semi (:scon ")")))
     (:line 730
      (:print (:scon "in numerical order from left to right.  to move, you")))
     (:line 740
      (:print (:scon "tell me how many numbers (counting from the left) to")))
     (:line 750
      (:print (:scon "reverse.  for example, if the current list is:")))
     (:line 760 (:print) (:print (:scon "2 3 4 5 1 6 7 8 9")))
     (:line 770 (:print)
      (:print (:scon "and you reverse 4, the result will be:")))
     (:line 780 (:print) (:print (:scon "5 4 3 2 1 6 7 8 9")))
     (:line 790 (:print) (:print (:scon "now if you reverse 5, you win!")))
     (:line 800 (:print) (:print (:scon "1 2 3 4 5 6 7 8 9")) (:print))
     (:line 810 (:print (:scon "no doubt you will like this game, but")))
     (:line 820 (:print (:scon "if you want to quit, reverse 0 (zero)."))
      (:print) (:return))
     (:line 999 (:end)))))



(defvar *rocket*
  '(((:line 10 (:print (:apply tab (:icon 30)) :semi (:scon "rocket")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print))
     (:line 70 (:print (:scon "lunar landing simulation")))
     (:line 80 (:print (:scon "----- ------- ----------")) (:print))
     (:line 100
      (:input "do you want instructions (yes or no)" ((:var a$))))
     (:line 110 (:if (:binary :eq (:var a$) (:scon "no"))) (:goto 390))
     (:line 160 (:print))
     (:line 200
      (:print
       (:scon "you are landing on the moon and and have taken over manual")))
     (:line 210
      (:print
       (:scon
        "control 1000 feet above a good landing spot. you have a down-")))
     (:line 220
      (:print
       (:scon "ward velocity of 50 feet/sec. 150 units of fuel remain.")))
     (:line 225 (:print))
     (:line 230
      (:print
       (:scon "here are the rules that govern your apollo space-craft:"))
      (:print))
     (:line 240
      (:print
       (:scon
        "(1) after each second the height, velocity, and remaining fuel")))
     (:line 250
      (:print
       (:scon "    will be reported via digby your on-board computer.")))
     (:line 260
      (:print
       (:scon "(2) after the report a '?' will appear. enter the number")))
     (:line 270
      (:print (:scon "    of units of fuel you wish to burn during the next")))
     (:line 280
      (:print
       (:scon "    second. each unit of fuel will slow your descent by")))
     (:line 290 (:print (:scon "    1 foot/sec.")))
     (:line 310
      (:print
       (:scon "(3) the maximum thrust of your engine is 30 feet/sec/sec")))
     (:line 320 (:print (:scon "    or 30 units of fuel per second.")))
     (:line 330
      (:print
       (:scon "(4) when you contact the lunar surface. your descent engine")))
     (:line 340
      (:print
       (:scon "    will automatically shut down and you will be given a")))
     (:line 350
      (:print (:scon "    report of your landing speed and remaining fuel.")))
     (:line 360
      (:print
       (:scon "(5) if you run out of fuel the '?' will no longer appear")))
     (:line 370
      (:print
       (:scon "    but your second by second report will continue until")))
     (:line 380 (:print (:scon "    you contact the lunar surface.")) (:print))
     (:line 390 (:print (:scon "beginning landing procedure.........."))
      (:print))
     (:line 400 (:print (:scon "g o o d  l u c k ! ! !")))
     (:line 420 (:print) (:print))
     (:line 430
      (:print (:scon "sec  feet      speed     fuel     plot of distance")))
     (:line 450 (:print))
     (:line 455 (:let (:var t) (:icon 0)) (:let (:var h) (:icon 1000))
      (:let (:var v) (:icon 50)) (:let (:var f) (:icon 150)))
     (:line 490
      (:print (:var t) :semi (:apply tab (:icon 6)) :semi (:var h)
       :semi (:apply tab (:icon 16)) :semi (:var v) :semi
       (:apply tab (:icon 26)) :semi (:var f) :semi
       (:apply tab (:icon 35)) :semi (:scon "i") :semi
       (:apply tab (:binary :div (:var h) (:icon 15))) :semi
       (:scon "*")))
     (:line 500 (:input nil ((:var b))))
     (:line 510 (:if (:binary :lt (:var b) (:icon 0))) (:goto 650))
     (:line 520 (:if (:binary :gt (:var b) (:icon 30)))
      (:let (:var b) (:icon 30)))
     (:line 530 (:if (:binary :gt (:var b) (:var f)))
      (:let (:var b) (:var f)))
     (:line 540
      (:let (:var v1)
       (:binary :plus (:binary :minus (:var v) (:var b)) (:icon 5))))
     (:line 560 (:let (:var f) (:binary :minus (:var f) (:var b))))
     (:line 570
      (:let (:var h)
       (:binary :minus (:var h)
        (:binary :mul (:fcon 0.5)
         (:binary :plus (:var v) (:var v1))))))
     (:line 580 (:if (:binary :le (:var h) (:icon 0))) (:goto 670))
     (:line 590 (:let (:var t) (:binary :plus (:var t) (:icon 1))))
     (:line 600 (:let (:var v) (:var v1)))
     (:line 610 (:if (:binary :gt (:var f) (:icon 0))) (:goto 490))
     (:line 615 (:if (:binary :eq (:var b) (:icon 0))) (:goto 640))
     (:line 620 (:print (:scon "**** out of fuel ****")))
     (:line 640
      (:print (:var t) :semi (:apply tab (:icon 4)) :semi (:var h)
       :semi (:apply tab (:icon 12)) :semi (:var v) :semi
       (:apply tab (:icon 20)) :semi (:var f) :semi
       (:apply tab (:icon 29)) :semi (:scon "i") :semi
       (:apply tab
        (:binary :plus (:binary :div (:var h) (:icon 12)) (:icon 29)))
       :semi (:scon "*")))
     (:line 650 (:let (:var b) (:icon 0))) (:line 660 (:goto 540))
     (:line 670 (:print (:scon "***** contact *****")))
     (:line 680
      (:let (:var h)
       (:binary :plus (:var h)
        (:binary :mul (:fcon 0.5)
         (:binary :plus (:var v1) (:var v))))))
     (:line 690 (:if (:binary :eq (:var b) (:icon 5))) (:goto 720))
     (:line 700
      (:let (:var d)
       (:binary :div
        (:binary :plus (:uminus (:var v))
         (:apply sqr
          (:binary :plus (:binary :mul (:var v) (:var v))
           (:binary :mul (:var h)
            (:binary :minus (:icon 10)
             (:binary :mul (:icon 2) (:var b)))))))
        (:binary :minus (:icon 5) (:var b)))))
     (:line 710 (:goto 730))
     (:line 720 (:let (:var d) (:binary :div (:var h) (:var v))))
     (:line 730
      (:let (:var v1)
       (:binary :plus (:var v)
        (:binary :mul (:binary :minus (:icon 5) (:var b)) (:var d)))))
     (:line 760
      (:print (:scon "touchdown at") :semi
       (:binary :plus (:var t) (:var d)) :semi (:scon "seconds.")))
     (:line 770
      (:print (:scon "landing velocity=") :semi (:var v1) :semi
       (:scon "feet/sec.")))
     (:line 780 (:print (:var f) :semi (:scon "units of fuel remaining.")))
     (:line 790 (:if (:binary :ne (:var v1) (:icon 0))) (:goto 810))
     (:line 800 (:print (:scon "congratulations! a perfect landing!!")))
     (:line 805 (:print (:scon "your license will be renewed.......later.")))
     (:line 810 (:if (:binary :lt (:apply abs (:var v1)) (:icon 2)))
      (:goto 840))
     (:line 820 (:print (:scon "***** sorry, but you blew it!!!!")))
     (:line 830
      (:print
       (:scon "appropriate condolences will be sent to your next of kin.")))
     (:line 840 (:print) (:print) (:print))
     (:line 850 (:input "another mission" ((:var a$))))
     (:line 860 (:if (:binary :eq (:var a$) (:scon "yes"))) (:goto 390))
     (:line 870 (:print) (:print (:scon "control out.")) (:print))
     (:line 999 (:end)))))



(defvar *rockscissors*
  '(((:line 10
      (:print (:apply tab (:icon 21)) :semi
       (:scon "game of rock, scissors, paper")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 25 (:print) (:print) (:print))
     (:line 30 (:input "how many games" ((:var q))))
     (:line 40 (:if (:binary :lt (:var q) (:icon 11))) (:goto 60))
     (:line 50
      (:print (:scon "sorry, but we aren't allowed to play that many."))
      (:goto 30))
     (:line 60 (:for g (:icon 1) (:var q) nil))
     (:line 70 (:print) (:print (:scon "game number") :semi (:var g)))
     (:line 80
      (:let (:var x)
       (:apply int
        (:binary :plus (:binary :mul (:apply rnd (:icon 1)) (:icon 3))
         (:icon 1)))))
     (:line 90 (:print (:scon "3=rock...2=scissors...1=paper")))
     (:line 100 (:input "1...2...3...what's your choice" ((:var k))))
     (:line 110
      (:if
       (:binary :ne
        (:binary :mul
         (:binary :mul (:binary :minus (:var k) (:icon 1))
          (:binary :minus (:var k) (:icon 2)))
         (:binary :minus (:var k) (:icon 3)))
        (:icon 0)))
      (:print (:scon "invalid.")) (:goto 90))
     (:line 120 (:print (:scon "this is my choice...")))
     (:line 130 (:on-goto (:var x) (140 150 160)))
     (:line 140 (:print (:scon "...paper")) (:goto 170))
     (:line 150 (:print (:scon "...scissors")) (:goto 170))
     (:line 160 (:print (:scon "...rock")))
     (:line 170 (:if (:binary :eq (:var x) (:var k))) (:goto 250))
     (:line 180 (:if (:binary :gt (:var x) (:var k))) (:goto 230))
     (:line 190 (:if (:binary :eq (:var x) (:icon 1))) (:goto 210))
     (:line 200 (:print (:scon "you win!!!"))
      (:let (:var h) (:binary :plus (:var h) (:icon 1))) (:goto 260))
     (:line 210 (:if (:binary :ne (:var k) (:icon 3))) (:goto 200))
     (:line 220 (:print (:scon "wow!  i win!!!"))
      (:let (:var c) (:binary :plus (:var c) (:icon 1))) (:goto 260))
     (:line 230
      (:if
       (:lazy-binary :or (:binary :ne (:var k) (:icon 1))
        (:binary :ne (:var x) (:icon 3))))
      (:goto 220))
     (:line 240 (:goto 200))
     (:line 250 (:print (:scon "tie game.  no winner.")))
     (:line 260 (:next g))
     (:line 270 (:print) (:print (:scon "here is the final game score:")))
     (:line 280
      (:print (:scon "i have won") :semi (:var c) :semi
       (:scon "game(s).")))
     (:line 290
      (:print (:scon "you have won") :semi (:var h) :semi
       (:scon "game(s).")))
     (:line 300
      (:print (:scon "and") :semi
       (:binary :minus (:var q) (:binary :plus (:var c) (:var h)))
       :semi (:scon "game(s) ended in a tie.")))
     (:line 310 (:print) (:print (:scon "thanks for playing!!")))
     (:line 320 (:end)))))



(defvar *roulette*
  '(((:line 10 (:print (:apply tab (:icon 32)) :semi (:scon "roulette")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print))
     (:line 40
      (:print (:scon "enter the current date (as in 'january 23, 1979') -")
       :semi))
     (:line 50 (:input nil ((:var d$) (:var e$))))
     (:line 1000 (:rem "-roulette
")) (:line 1010 (:rem "-david joslin
"))
     (:line 1020 (:print (:scon "welcome to the roulette table")))
     (:line 1030 (:print))
     (:line 1040 (:print (:scon "do you want instructions") :semi))
     (:line 1050 (:input nil ((:var y$))))
     (:line 1060
      (:if
       (:binary :eq (:apply left$ (:var y$) (:icon 1)) (:scon "n")))
      (:goto 1550))
     (:line 1070 (:print))
     (:line 1080 (:print (:scon "this is the betting layout")))
     (:line 1090 (:print (:scon "  (*=red)"))) (:line 1100 (:print))
     (:line 1110 (:print (:scon " 1*    2     3*")))
     (:line 1120 (:print (:scon " 4     5*    6 ")))
     (:line 1130 (:print (:scon " 7*    8     9*")))
     (:line 1140 (:print (:scon "10    11    12*")))
     (:line 1150 (:print (:scon "---------------")))
     (:line 1160 (:print (:scon "13    14*   15 ")))
     (:line 1170 (:print (:scon "16*   17    18*")))
     (:line 1180 (:print (:scon "19*   20    21*")))
     (:line 1190 (:print (:scon "22    23*   24 ")))
     (:line 1200 (:print (:scon "---------------")))
     (:line 1210 (:print (:scon "25*   26    27*")))
     (:line 1220 (:print (:scon "28    29    30*")))
     (:line 1230 (:print (:scon "31    32*   33 ")))
     (:line 1240 (:print (:scon "34*   35    36*")))
     (:line 1250 (:print (:scon "---------------")))
     (:line 1260 (:print (:scon "    00    0    "))) (:line 1270 (:print))
     (:line 1280 (:print (:scon "types of bets"))) (:line 1290 (:print))
     (:line 1300 (:print (:scon "the numbers 1 to 36 signify a straight bet")))
     (:line 1310 (:print (:scon "on that number.")))
     (:line 1320 (:print (:scon "these pay off 35:1"))) (:line 1330 (:print))
     (:line 1340 (:print (:scon "the 2:1 bets are:")))
     (:line 1350 (:print (:scon " 37) 1-12     40) first column")))
     (:line 1360 (:print (:scon " 38) 13-24    41) second column")))
     (:line 1370 (:print (:scon " 39) 25-36    42) third column")))
     (:line 1380 (:print))
     (:line 1390 (:print (:scon "the even money bets are:")))
     (:line 1400 (:print (:scon " 43) 1-18     46) odd")))
     (:line 1410 (:print (:scon " 44) 19-36    47) red")))
     (:line 1420 (:print (:scon " 45) even     48) black")))
     (:line 1430 (:print))
     (:line 1440 (:print (:scon " 49)0 and 50)00 pay off 35:1")))
     (:line 1450 (:print (:scon " note: 0 and 00 do not count under any")))
     (:line 1460 (:print (:scon "       bets except their own.")))
     (:line 1470 (:print))
     (:line 1480 (:print (:scon "when i ask for each bet, type the number")))
     (:line 1490 (:print (:scon "and the amount, separated by a comma.")))
     (:line 1500
      (:print (:scon "for example: to bet $500 on black, type 48,500")))
     (:line 1510 (:print (:scon "when i ask for a bet.")))
     (:line 1520 (:print))
     (:line 1530
      (:print (:scon "the minimum bet is $5, the maximum is $500.")))
     (:line 1540 (:print)) (:line 1550 (:rem "-program begins here
"))
     (:line 1560 (:rem "-type of bet(number) odds
"))
     (:line 1570 (:rem "  don't need to dimension strings
"))
     (:line 1580
      (:dim
       ((:dimd b (:icon 100)) (:dimd c (:icon 100))
        (:dimd t (:icon 100)) (:dimd x (:icon 38)))))
     (:line 1590 (:dim ((:dimd a (:icon 50)))))
     (:line 1600 (:for i (:icon 1) (:icon 38) nil)
      (:let (:apply x (:var i)) (:icon 0)) (:next i)
      (:rem "  mat x=zer
"))
     (:line 1610 (:let (:var p) (:icon 1000)))
     (:line 1620 (:let (:var d) (:icon 100000)))
     (:line 1630 (:print (:scon "how many bets") :semi))
     (:line 1640 (:input nil ((:var y))))
     (:line 1650
      (:if
       (:lazy-binary :or (:binary :lt (:var y) (:icon 1))
        (:binary :ne (:var y) (:apply int (:var y)))))
      (:goto 1630))
     (:line 1660 (:for i (:icon 1) (:icon 50) nil)
      (:let (:apply a (:var i)) (:icon 0)) (:next i)
      (:rem "  mat a=zer
"))
     (:line 1670 (:for c (:icon 1) (:var y) nil))
     (:line 1680 (:print (:scon "number") :semi (:var c) :semi))
     (:line 1690 (:input nil ((:var x) (:var z))))
     (:line 1700 (:let (:apply b (:var c)) (:var z)))
     (:line 1710 (:let (:apply t (:var c)) (:var x)))
     (:line 1720
      (:if
       (:lazy-binary :or
        (:lazy-binary :or (:binary :lt (:var x) (:icon 1))
         (:binary :gt (:var x) (:icon 50)))
        (:binary :ne (:var x) (:apply int (:var x)))))
      (:goto 1680))
     (:line 1730
      (:if
       (:lazy-binary :or (:binary :lt (:var z) (:icon 1))
        (:binary :ne (:var z) (:apply int (:var z)))))
      (:goto 1680))
     (:line 1740
      (:if
       (:lazy-binary :or (:binary :lt (:var z) (:icon 5))
        (:binary :gt (:var z) (:icon 500))))
      (:goto 1680))
     (:line 1750 (:if (:binary :eq (:apply a (:var x)) (:icon 0)))
      (:goto 1780))
     (:line 1760 (:print (:scon "you made that bet once already,dum-dum")))
     (:line 1770 (:goto 1680))
     (:line 1780 (:let (:apply a (:var x)) (:icon 1)))
     (:line 1790 (:next c)) (:line 1800 (:print (:scon "spinning")))
     (:line 1810 (:print)) (:line 1820 (:print))
     (:line 1830
      (:let (:var s)
       (:apply int (:binary :mul (:apply rnd (:icon 1)) (:icon 100)))))
     (:line 1840
      (:if
       (:lazy-binary :or (:binary :eq (:var s) (:icon 0))
        (:binary :gt (:var s) (:icon 38))))
      (:goto 1830))
     (:line 1850
      (:let (:apply x (:var s))
       (:binary :plus (:apply x (:var s)) (:icon 1))))
     (:line 1860 (:if (:binary :lt (:var s) (:icon 37))) (:goto 1920))
     (:line 1870 (:if (:binary :eq (:var s) (:icon 37))) (:goto 1900))
     (:line 1880 (:print (:scon "00"))) (:line 1890 (:goto 2020))
     (:line 1900 (:print (:scon "0"))) (:line 1910 (:goto 2020))
     (:line 1920 :restore) (:line 1930 (:for i1 (:icon 1) (:icon 18) nil))
     (:line 1940 (:read (:var r)))
     (:line 1950 (:if (:binary :eq (:var r) (:var s))) (:goto 2000))
     (:line 1960 (:next i1))
     (:line 1970 (:let (:var a$) (:scon "black")))
     (:line 1980 (:print (:var s) :semi (:var a$)))
     (:line 1990 (:goto 2020)) (:line 2000 (:let (:var a$) (:scon "red")))
     (:line 2010 (:goto 1980)) (:line 2020 (:print))
     (:line 2030 (:for c (:icon 1) (:var y) nil))
     (:line 2040 (:if (:binary :lt (:apply t (:var c)) (:icon 37)))
      (:goto 2710))
     (:line 2050
      (:on-goto (:binary :minus (:apply t (:var c)) (:icon 36))
       (2090 2190 2220 2250 2300 2350 2400 2470 2500)))
     (:line 2060
      (:on-goto (:binary :minus (:apply t (:var c)) (:icon 45))
       (2530 2560 2630)))
     (:line 2070 (:goto 2710)) (:line 2080 (:stop))
     (:line 2090 (:rem "  1-12(37) 2:1
"))
     (:line 2100 (:if (:binary :le (:var s) (:icon 12))) (:goto 2150))
     (:line 2110
      (:print (:scon "you lose") :semi (:apply b (:var c)) :semi
       (:scon "dollars on bet") :semi (:var c)))
     (:line 2120
      (:let (:var d)
       (:binary :plus (:var d) (:apply b (:var c)))))
     (:line 2130
      (:let (:var p)
       (:binary :minus (:var p) (:apply b (:var c)))))
     (:line 2140 (:goto 2180))
     (:line 2150
      (:print (:scon "you win") :semi
       (:binary :mul (:apply b (:var c)) (:icon 2)) :semi
       (:scon "dollars on bet") (:var c)))
     (:line 2160
      (:let (:var d)
       (:binary :minus (:var d)
        (:binary :mul (:apply b (:var c)) (:icon 2)))))
     (:line 2170
      (:let (:var p)
       (:binary :plus (:var p)
        (:binary :mul (:apply b (:var c)) (:icon 2)))))
     (:line 2180 (:goto 2810)) (:line 2190 (:rem "  13-24(38) 2:1
"))
     (:line 2200
      (:if
       (:lazy-binary :and (:binary :gt (:var s) (:icon 12))
        (:binary :lt (:var s) (:icon 25))))
      (:goto 2150))
     (:line 2210 (:goto 2110)) (:line 2220 (:rem "  25-36(39) 2:1
"))
     (:line 2230
      (:if
       (:lazy-binary :and (:binary :gt (:var s) (:icon 24))
        (:binary :lt (:var s) (:icon 37))))
      (:goto 2150))
     (:line 2240 (:goto 2110)) (:line 2250 (:rem "  first column(40) 2:1
"))
     (:line 2260 (:for i (:icon 1) (:icon 34) (:icon 3)))
     (:line 2270 (:if (:binary :eq (:var s) (:var i))) (:goto 2150))
     (:line 2280 (:next i)) (:line 2290 (:goto 2110))
     (:line 2300 (:rem "  second column(41) 2:1
"))
     (:line 2310 (:for i (:icon 2) (:icon 35) (:icon 3)))
     (:line 2320 (:if (:binary :eq (:var s) (:var i))) (:goto 2150))
     (:line 2330 (:next i)) (:line 2340 (:goto 2110))
     (:line 2350 (:rem "  third column(42) 2:1
"))
     (:line 2360 (:for i (:icon 3) (:icon 36) (:icon 3)))
     (:line 2370 (:if (:binary :eq (:var s) (:var i))) (:goto 2150))
     (:line 2380 (:next i)) (:line 2390 (:goto 2110))
     (:line 2400 (:rem "  1-18(43) 1:1
"))
     (:line 2410 (:if (:binary :lt (:var s) (:icon 19))) (:goto 2430))
     (:line 2420 (:goto 2110))
     (:line 2430
      (:print (:scon "you win") :semi (:apply b (:var c)) :semi
       (:scon "dollars on bet") :semi (:var c)))
     (:line 2440
      (:let (:var d)
       (:binary :minus (:var d) (:apply b (:var c)))))
     (:line 2450
      (:let (:var p)
       (:binary :plus (:var p) (:apply b (:var c)))))
     (:line 2460 (:goto 2810)) (:line 2470 (:rem "  19-36(44) 1:1
"))
     (:line 2480
      (:if
       (:lazy-binary :and (:binary :lt (:var s) (:icon 37))
        (:binary :gt (:var s) (:icon 18))))
      (:goto 2430))
     (:line 2490 (:goto 2110)) (:line 2500 (:rem "  even(45) 1:1
"))
     (:line 2510
      (:if
       (:lazy-binary :and
        (:binary :eq (:binary :div (:var s) (:icon 2))
         (:apply int (:binary :div (:var s) (:icon 2))))
        (:binary :lt (:var s) (:icon 37))))
      (:goto 2430))
     (:line 2520 (:goto 2110)) (:line 2530 (:rem "  odd(46) 1:1
"))
     (:line 2540
      (:if
       (:lazy-binary :and
        (:binary :ne (:binary :div (:var s) (:icon 2))
         (:apply int (:binary :div (:var s) (:icon 2))))
        (:binary :lt (:var s) (:icon 37))))
      (:goto 2430))
     (:line 2550 (:goto 2110)) (:line 2560 (:rem "  red(47) 1:1
"))
     (:line 2570 :restore) (:line 2580 (:for i (:icon 1) (:icon 18) nil))
     (:line 2590 (:read (:var r)))
     (:line 2600 (:if (:binary :eq (:var s) (:var r))) (:goto 2430))
     (:line 2610 (:next i)) (:line 2620 (:goto 2110))
     (:line 2630 (:rem "  black(48) 1:1
")) (:line 2640 :restore)
     (:line 2650 (:for i (:icon 1) (:icon 18) nil))
     (:line 2660 (:read (:var r)))
     (:line 2670 (:if (:binary :eq (:var s) (:var r))) (:goto 2110))
     (:line 2680 (:next i))
     (:line 2690 (:if (:binary :gt (:var s) (:icon 36))) (:goto 2110))
     (:line 2700 (:goto 2430))
     (:line 2710 (:rem "--1to36,0,00(1-36,49,50)35:1
"))
     (:line 2720 (:if (:binary :lt (:apply t (:var c)) (:icon 49)))
      (:goto 2760))
     (:line 2730
      (:if
       (:lazy-binary :and (:binary :eq (:apply t (:var c)) (:icon 49))
        (:binary :eq (:var s) (:icon 37))))
      (:goto 2780))
     (:line 2740
      (:if
       (:lazy-binary :and (:binary :eq (:apply t (:var c)) (:icon 50))
        (:binary :eq (:var s) (:icon 38))))
      (:goto 2780))
     (:line 2750 (:goto 2110))
     (:line 2760 (:if (:binary :eq (:apply t (:var c)) (:var s)))
      (:goto 2780))
     (:line 2770 (:goto 2110))
     (:line 2780
      (:print (:scon "you win") :semi
       (:binary :mul (:apply b (:var c)) (:icon 35)) :semi
       (:scon "dollars on bet") :semi (:var c)))
     (:line 2790
      (:let (:var d)
       (:binary :minus (:var d)
        (:binary :mul (:apply b (:var c)) (:icon 35)))))
     (:line 2800
      (:let (:var p)
       (:binary :plus (:var p)
        (:binary :mul (:apply b (:var c)) (:icon 35)))))
     (:line 2810 (:next c)) (:line 2820 (:print))
     (:line 2830
      (:print (:scon "totals:") :comma (:scon "me") :comma (:scon "you")))
     (:line 2840 (:print (:scon " ") :comma (:var d) :comma (:var p)))
     (:line 2850 (:if (:binary :gt (:var p) (:icon 0))) (:goto 2880))
     (:line 2860 (:print (:scon "oops! you just spent your last dollar!")))
     (:line 2870 (:goto 3190))
     (:line 2880 (:if (:binary :gt (:var d) (:icon 0))) (:goto 2920))
     (:line 2890 (:print (:scon "you broke the house!")))
     (:line 2900 (:let (:var p) (:icon 101000))) (:line 2910 (:goto 2960))
     (:line 2920 (:print (:scon "again") :semi))
     (:line 2930 (:input nil ((:var y$))))
     (:line 2940
      (:if
       (:binary :eq (:apply left$ (:var y$) (:icon 1)) (:scon "y")))
      (:goto 1630))
     (:line 2950
      (:data (:icon 1) (:icon 3) (:icon 5) (:icon 7) (:icon 9) (:icon 12)
       (:icon 14) (:icon 16) (:icon 18) (:icon 19) (:icon 21) (:icon 23)
       (:icon 25) (:icon 27) (:icon 30) (:icon 32) (:icon 34) (:icon 36)))
     (:line 2960 (:if (:binary :lt (:var p) (:icon 1))) (:goto 3190))
     (:line 2970 (:print (:scon "to whom shall i make the check") :semi))
     (:line 2980 (:input nil ((:var b$)))) (:line 2990 (:print))
     (:line 3000 (:for i (:icon 1) (:icon 72) nil)
      (:print (:scon "-") :semi) (:next i) (:rem " print 72 dashes
"))
     (:line 3010
      (:print (:apply tab (:icon 50)) :semi (:scon "check no. ") :semi
       (:apply int (:binary :mul (:apply rnd (:icon 1)) (:icon 100)))))
     (:line 3020 (:print)) (:line 3030 (:gosub 3230))
     (:line 3040 (:print (:apply tab (:icon 40)) :semi (:var m$)))
     (:line 3050 (:print)) (:line 3060 (:print))
     (:line 3070
      (:print (:scon "pay to the order of-----") :semi (:var b$) :semi
       (:scon "-----$ ") :semi))
     (:line 3080 (:print (:var p))) (:line 3090 (:print))
     (:line 3100 (:print))
     (:line 3110
      (:print (:apply tab (:icon 10)) :comma
       (:scon "the memory bank of new york")))
     (:line 3120 (:print))
     (:line 3130
      (:print (:apply tab (:icon 40)) :comma (:scon "the computer")))
     (:line 3140
      (:print (:apply tab (:icon 40)) (:scon "----------x-----")))
     (:line 3150 (:print))
     (:line 3160 (:for i (:icon 1) (:icon 62) nil)
      (:print (:scon "-") :semi) (:next i))
     (:line 3170 (:print (:scon "come back soon!"))) (:line 3180 (:goto 3210))
     (:line 3190 (:print (:scon "thanks for your money.")))
     (:line 3200
      (:print (:scon "i'll use it to buy a solid gold roulette wheel")))
     (:line 3210 (:print)) (:line 3220 (:goto 3420)) (:line 3230 (:rem "
"))
     (:line 3240 (:rem "     this routine returns the current date in m$
"))
     (:line 3250 (:rem "     if you have system functions to handle this
"))
     (:line 3260 (:rem "     they can be used here.  however in this
"))
     (:line 3270 (:rem "     program, we just input the date at the start
"))
     (:line 3280 (:rem "     the game
")) (:line 3290 (:rem "
"))
     (:line 3300 (:rem "     the date is returned in variable m$
"))
     (:line 3310
      (:let (:var m$)
       (:binary :plus (:binary :plus (:var d$) (:scon ", "))
        (:var e$))))
     (:line 3320 (:return)) (:line 3420 (:end)))))



(defvar *russianroulette*
  '(((:line 1
      (:print (:apply tab (:icon 28)) :semi (:scon "russian roulette")))
     (:line 2
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 3 (:print) (:print) (:print))
     (:line 5 (:print (:scon "this is a game of >>>>>>>>>>russian roulette.")))
     (:line 10 (:print) (:print (:scon "here is a revolver.")))
     (:line 20 (:print (:scon "type '1' to spin chamber and pull trigger.")))
     (:line 22 (:print (:scon "type '2' to give up.")))
     (:line 23 (:print (:scon "go") :semi))
     (:line 25 (:let (:var n) (:icon 0)))
     (:line 30 (:input nil ((:var i))))
     (:line 31 (:if (:binary :ne (:var i) (:icon 2))) (:goto 35))
     (:line 32 (:print (:scon "     chicken!!!!!"))) (:line 33 (:goto 72))
     (:line 35 (:let (:var n) (:binary :plus (:var n) (:icon 1))))
     (:line 40 (:if (:binary :gt (:apply rnd (:icon 1)) (:fcon 0.833333)))
      (:goto 70))
     (:line 45 (:if (:binary :gt (:var n) (:icon 10))) (:goto 80))
     (:line 50 (:print (:scon "- click -"))) (:line 60 (:print) (:goto 30))
     (:line 70 (:print (:scon "     bang!!!!!   you're dead!")))
     (:line 71 (:print (:scon "condolences will be sent to your relatives.")))
     (:line 72 (:print) (:print) (:print))
     (:line 75 (:print (:scon "...next victim...")) (:goto 20))
     (:line 80 (:print (:scon "you win!!!!!")))
     (:line 85 (:print (:scon "let someone else blow his brains out.")))
     (:line 90 (:goto 10)) (:line 99 (:end)))))



(defvar *salvo*
  '(((:line 1000 (:print (:apply tab (:icon 33)) :semi (:scon "salvo")))
     (:line 1010
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 1020 (:print) (:print) (:print)) (:line 1030 (:rem "
"))
     (:line 1040
      (:dim
       ((:dimd2 a (:icon 10) (:icon 10))
        (:dimd2 b (:icon 10) (:icon 10)) (:dimd c (:icon 7))
        (:dimd d (:icon 7)) (:dimd e (:icon 12))
        (:dimd f (:icon 12)) (:dimd g (:icon 12))
        (:dimd h (:icon 12)) (:dimd2 k (:icon 10) (:icon 10)))))
     (:line 1050 (:let (:var z8) (:icon 0)))
     (:line 1060 (:for w (:icon 1) (:icon 12) nil))
     (:line 1070 (:let (:apply e (:var w)) (:uminus (:icon 1))))
     (:line 1080 (:let (:apply h (:var w)) (:uminus (:icon 1))))
     (:line 1090 (:next w))
     (:line 1100 (:for x (:icon 1) (:icon 10) nil))
     (:line 1110 (:for y (:icon 1) (:icon 10) nil))
     (:line 1120 (:let (:apply b (:var x) (:var y)) (:icon 0)))
     (:line 1130 (:next y)) (:line 1140 (:next x))
     (:line 1150 (:for x (:icon 1) (:icon 12) nil))
     (:line 1160 (:let (:apply f (:var x)) (:icon 0)))
     (:line 1170 (:let (:apply g (:var x)) (:icon 0)))
     (:line 1180 (:next x))
     (:line 1190 (:for x (:icon 1) (:icon 10) nil))
     (:line 1200 (:for y (:icon 1) (:icon 10) nil))
     (:line 1210 (:let (:apply a (:var x) (:var y)) (:icon 0)))
     (:line 1220 (:next y)) (:line 1230 (:next x))
     (:line 1240 (:for k (:icon 4) (:icon 1) (:uminus (:icon 1))))
     (:line 1250 (:let (:var u6) (:icon 0))) (:line 1260 (:gosub 2910))
     (:line 1270
      (:def fna k
       (:binary :minus
        (:binary :plus
         (:binary :minus
          (:binary :mul (:binary :minus (:icon 5) (:var k)) (:icon 3))
          (:binary :mul (:icon 2)
           (:apply int (:binary :div (:var k) (:icon 4)))))
         (:apply sgn (:binary :minus (:var k) (:icon 1))))
        (:icon 1))))
     (:line 1280
      (:def fnb k
       (:binary :minus
        (:binary :plus (:var k)
         (:apply int (:binary :div (:var k) (:icon 4))))
        (:apply sgn (:binary :minus (:var k) (:icon 1))))))
     (:line 1290
      (:if
       (:binary :eq
        (:binary :plus (:binary :plus (:var v) (:var v2))
         (:binary :mul (:var v) (:var v2)))
        (:icon 0)))
      (:goto 1260))
     (:line 1300
      (:if
       (:binary :gt
        (:binary :plus (:var y)
         (:binary :mul (:var v) (:apply fnb (:var k))))
        (:icon 10)))
      (:goto 1260))
     (:line 1310
      (:if
       (:binary :lt
        (:binary :plus (:var y)
         (:binary :mul (:var v) (:apply fnb (:var k))))
        (:icon 1)))
      (:goto 1260))
     (:line 1320
      (:if
       (:binary :gt
        (:binary :plus (:var x)
         (:binary :mul (:var v2) (:apply fnb (:var k))))
        (:icon 10)))
      (:goto 1260))
     (:line 1330
      (:if
       (:binary :lt
        (:binary :plus (:var x)
         (:binary :mul (:var v2) (:apply fnb (:var k))))
        (:icon 1)))
      (:goto 1260))
     (:line 1340 (:let (:var u6) (:binary :plus (:var u6) (:icon 1))))
     (:line 1350 (:if (:binary :gt (:var u6) (:icon 25))) (:goto 1190))
     (:line 1360 (:for z (:icon 0) (:apply fnb (:var k)) nil))
     (:line 1370
      (:let
       (:apply f
        (:binary :plus (:var z) (:apply fna (:var k))))
       (:binary :plus (:var x) (:binary :mul (:var v2) (:var z)))))
     (:line 1380
      (:let
       (:apply g
        (:binary :plus (:var z) (:apply fna (:var k))))
       (:binary :plus (:var y) (:binary :mul (:var v) (:var z)))))
     (:line 1390 (:next z))
     (:line 1400 (:let (:var u8) (:apply fna (:var k))))
     (:line 1405
      (:if
       (:binary :gt (:var u8)
        (:binary :plus (:var u8) (:apply fnb (:var k)))))
      (:goto 1460))
     (:line 1410
      (:for z2 (:var u8)
       (:binary :plus (:var u8) (:apply fnb (:var k))) nil))
     (:line 1415 (:if (:binary :lt (:var u8) (:icon 2))) (:goto 1450))
     (:line 1420
      (:for z3 (:icon 1) (:binary :minus (:var u8) (:icon 1)) nil))
     (:line 1430
      (:if
       (:binary :lt
        (:apply sqr
         (:binary :plus
          (:exp
           (:binary :minus (:apply f (:var z3))
            (:apply f (:var z2)))
           (:icon 2))
          (:exp
           (:binary :minus (:apply g (:var z3))
            (:apply g (:var z2)))
           (:icon 2))))
        (:fcon 3.59)))
      (:goto 1260))
     (:line 1440 (:next z3)) (:line 1450 (:next z2))
     (:line 1460 (:for z (:icon 0) (:apply fnb (:var k)) nil))
     (:line 1470
      (:let
       (:apply a (:apply f (:binary :plus (:var z) (:var u8)))
        (:apply g (:binary :plus (:var z) (:var u8))))
       (:binary :plus (:fcon 0.5)
        (:binary :mul (:apply sgn (:binary :minus (:var k) (:icon 1)))
         (:binary :minus (:var k) (:fcon 1.5))))))
     (:line 1480 (:next z)) (:line 1490 (:next k))
     (:line 1500 (:print (:scon "enter coordinates for...")))
     (:line 1510 (:print (:scon "battleship")))
     (:line 1520 (:for x (:icon 1) (:icon 5) nil))
     (:line 1530 (:input nil ((:var y) (:var z))))
     (:line 1540 (:let (:apply b (:var y) (:var z)) (:icon 3)))
     (:line 1550 (:next x)) (:line 1560 (:print (:scon "cruiser")))
     (:line 1570 (:for x (:icon 1) (:icon 3) nil))
     (:line 1580 (:input nil ((:var y) (:var z))))
     (:line 1590 (:let (:apply b (:var y) (:var z)) (:icon 2)))
     (:line 1600 (:next x)) (:line 1610 (:print (:scon "destroyer<a>")))
     (:line 1620 (:for x (:icon 1) (:icon 2) nil))
     (:line 1630 (:input nil ((:var y) (:var z))))
     (:line 1640 (:let (:apply b (:var y) (:var z)) (:icon 1)))
     (:line 1650 (:next x)) (:line 1660 (:print (:scon "destroyer<b>")))
     (:line 1670 (:for x (:icon 1) (:icon 2) nil))
     (:line 1680 (:input nil ((:var y) (:var z))))
     (:line 1690 (:let (:apply b (:var y) (:var z)) (:fcon 0.5)))
     (:line 1700 (:next x))
     (:line 1710 (:print (:scon "do you want to start") :semi))
     (:line 1720 (:input nil ((:var j$))))
     (:line 1730
      (:if (:binary :ne (:var j$) (:scon "where are your ships?")))
      (:goto 1890))
     (:line 1740 (:print (:scon "battleship")))
     (:line 1750 (:for z (:icon 1) (:icon 5) nil))
     (:line 1760
      (:print (:apply f (:var z)) :semi (:apply g (:var z))))
     (:line 1770 (:next z)) (:line 1780 (:print (:scon "cruiser")))
     (:line 1790
      (:print (:apply f (:icon 6)) :semi (:apply g (:icon 6))))
     (:line 1800
      (:print (:apply f (:icon 7)) :semi (:apply g (:icon 7))))
     (:line 1810
      (:print (:apply f (:icon 8)) :semi (:apply g (:icon 8))))
     (:line 1820 (:print (:scon "destroyer<a>")))
     (:line 1830
      (:print (:apply f (:icon 9)) :semi (:apply g (:icon 9))))
     (:line 1840
      (:print (:apply f (:icon 10)) :semi (:apply g (:icon 10))))
     (:line 1850 (:print (:scon "destroyer<b>")))
     (:line 1860
      (:print (:apply f (:icon 11)) :semi (:apply g (:icon 11))))
     (:line 1870
      (:print (:apply f (:icon 12)) :semi (:apply g (:icon 12))))
     (:line 1880 (:goto 1710)) (:line 1890 (:let (:var c) (:icon 0)))
     (:line 1900 (:print (:scon "do you want to see my shots") :semi))
     (:line 1910 (:input nil ((:var k$)))) (:line 1920 (:print))
     (:line 1930 (:if (:binary :ne (:var j$) (:scon "yes"))) (:goto 2620))
     (:line 1940 (:rem "*******************start
"))
     (:line 1950 (:if (:binary :ne (:var j$) (:scon "yes"))) (:goto 1990))
     (:line 1960 (:let (:var c) (:binary :plus (:var c) (:icon 1))))
     (:line 1970 (:print))
     (:line 1980 (:print (:scon "turn") :semi (:var c)))
     (:line 1990 (:let (:var a) (:icon 0)))
     (:line 2000 (:for w (:fcon 0.5) (:icon 3) (:fcon 0.5)))
     (:line 2010 (:for x (:icon 1) (:icon 10) nil))
     (:line 2020 (:for y (:icon 1) (:icon 10) nil))
     (:line 2030
      (:if (:binary :eq (:apply b (:var x) (:var y)) (:var w)))
      (:goto 2070))
     (:line 2040 (:next y)) (:line 2050 (:next x))
     (:line 2060 (:goto 2080))
     (:line 2070
      (:let (:var a)
       (:binary :plus (:var a)
        (:apply int (:binary :plus (:var w) (:fcon 0.5))))))
     (:line 2080 (:next w))
     (:line 2090 (:for w (:icon 1) (:icon 7) nil))
     (:line 2100 (:let (:apply c (:var w)) (:icon 0)))
     (:line 2110 (:let (:apply d (:var w)) (:icon 0)))
     (:line 2120 (:let (:apply f (:var w)) (:icon 0)))
     (:line 2130 (:let (:apply g (:var w)) (:icon 0)))
     (:line 2140 (:next w)) (:line 2150 (:let (:var p3) (:icon 0)))
     (:line 2160 (:for x (:icon 1) (:icon 10) nil))
     (:line 2170 (:for y (:icon 1) (:icon 10) nil))
     (:line 2180
      (:if (:binary :gt (:apply a (:var x) (:var y)) (:icon 10)))
      (:goto 2200))
     (:line 2190 (:let (:var p3) (:binary :plus (:var p3) (:icon 1))))
     (:line 2200 (:next y)) (:line 2210 (:next x))
     (:line 2220
      (:print (:scon "you have") :semi (:var a) :semi (:scon "shots.")))
     (:line 2230 (:if (:binary :ge (:var p3) (:var a))) (:goto 2260))
     (:line 2240
      (:print (:scon "you have more shots than there are blank squares.")))
     (:line 2250 (:goto 2890))
     (:line 2260 (:if (:binary :ne (:var a) (:icon 0))) (:goto 2290))
     (:line 2270 (:print (:scon "i have won."))) (:line 2280 (:stop))
     (:line 2290 (:for w (:icon 1) (:var a) nil))
     (:line 2300 (:input nil ((:var x) (:var y))))
     (:line 2310 (:if (:binary :ne (:var x) (:apply int (:var x))))
      (:goto 2370))
     (:line 2320 (:if (:binary :gt (:var x) (:icon 10))) (:goto 2370))
     (:line 2330 (:if (:binary :lt (:var x) (:icon 1))) (:goto 2370))
     (:line 2340 (:if (:binary :ne (:var y) (:apply int (:var y))))
      (:goto 2370))
     (:line 2350 (:if (:binary :gt (:var y) (:icon 10))) (:goto 2370))
     (:line 2360 (:if (:binary :ge (:var y) (:icon 1))) (:goto 2390))
     (:line 2370 (:print (:scon "illegal, enter again.")))
     (:line 2380 (:goto 2300))
     (:line 2390
      (:if (:binary :gt (:apply a (:var x) (:var y)) (:icon 10)))
      (:goto 2440))
     (:line 2400 (:let (:apply c (:var w)) (:var x)))
     (:line 2410 (:let (:apply d (:var w)) (:var y)))
     (:line 2420 (:next w)) (:line 2430 (:goto 2460))
     (:line 2440
      (:print (:scon "you shot there before on turn") :semi
       (:binary :minus (:apply a (:var x) (:var y)) (:icon 10))))
     (:line 2450 (:goto 2300))
     (:line 2460 (:for w (:icon 1) (:var a) nil))
     (:line 2470
      (:if
       (:binary :eq
        (:apply a (:apply c (:var w)) (:apply d (:var w)))
        (:icon 3)))
      (:goto 2540))
     (:line 2480
      (:if
       (:binary :eq
        (:apply a (:apply c (:var w)) (:apply d (:var w)))
        (:icon 2)))
      (:goto 2560))
     (:line 2490
      (:if
       (:binary :eq
        (:apply a (:apply c (:var w)) (:apply d (:var w)))
        (:icon 1)))
      (:goto 2580))
     (:line 2500
      (:if
       (:binary :eq
        (:apply a (:apply c (:var w)) (:apply d (:var w)))
        (:fcon 0.5)))
      (:goto 2600))
     (:line 2510
      (:let
       (:apply a (:apply c (:var w)) (:apply d (:var w)))
       (:binary :plus (:icon 10) (:var c))))
     (:line 2520 (:next w)) (:line 2530 (:goto 2620))
     (:line 2540 (:print (:scon "you hit my battleship.")))
     (:line 2550 (:goto 2510))
     (:line 2560 (:print (:scon "you hit my cruiser.")))
     (:line 2570 (:goto 2510))
     (:line 2580 (:print (:scon "you hit my destroyer<a>.")))
     (:line 2590 (:goto 2510))
     (:line 2600 (:print (:scon "you hit my destroyer<b>.")))
     (:line 2610 (:goto 2510)) (:line 2620 (:let (:var a) (:icon 0)))
     (:line 2630 (:if (:binary :eq (:var j$) (:scon "yes"))) (:goto 2670))
     (:line 2640 (:let (:var c) (:binary :plus (:var c) (:icon 1))))
     (:line 2650 (:print))
     (:line 2660 (:print (:scon "turn") :semi (:var c)))
     (:line 2670 (:let (:var a) (:icon 0)))
     (:line 2680 (:for w (:fcon 0.5) (:icon 3) (:fcon 0.5)))
     (:line 2690 (:for x (:icon 1) (:icon 10) nil))
     (:line 2700 (:for y (:icon 1) (:icon 10) nil))
     (:line 2710
      (:if (:binary :eq (:apply a (:var x) (:var y)) (:var w)))
      (:goto 2750))
     (:line 2720 (:next y)) (:line 2730 (:next x))
     (:line 2740 (:goto 2760))
     (:line 2750
      (:let (:var a)
       (:binary :plus (:var a)
        (:apply int (:binary :plus (:var w) (:fcon 0.5))))))
     (:line 2760 (:next w)) (:line 2770 (:let (:var p3) (:icon 0)))
     (:line 2780 (:for x (:icon 1) (:icon 10) nil))
     (:line 2790 (:for y (:icon 1) (:icon 10) nil))
     (:line 2800
      (:if (:binary :gt (:apply a (:var x) (:var y)) (:icon 10)))
      (:goto 2820))
     (:line 2810 (:let (:var p3) (:binary :plus (:var p3) (:icon 1))))
     (:line 2820 (:next y)) (:line 2830 (:next x))
     (:line 2840
      (:print (:scon "i have") :semi (:var a) :semi (:scon "shots.")))
     (:line 2850 (:if (:binary :gt (:var p3) (:var a))) (:goto 2880))
     (:line 2860 (:print (:scon "i have more shots than blank squares.")))
     (:line 2870 (:goto 2270))
     (:line 2880 (:if (:binary :ne (:var a) (:icon 0))) (:goto 2960))
     (:line 2890 (:print (:scon "you have won."))) (:line 2900 (:stop))
     (:line 2910
      (:let (:var x)
       (:apply int
        (:binary :plus (:binary :mul (:apply rnd (:icon 1)) (:icon 10))
         (:icon 1)))))
     (:line 2920
      (:let (:var y)
       (:apply int
        (:binary :plus (:binary :mul (:apply rnd (:icon 1)) (:icon 10))
         (:icon 1)))))
     (:line 2930
      (:let (:var v)
       (:apply int
        (:binary :minus (:binary :mul (:icon 3) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 2940
      (:let (:var v2)
       (:apply int
        (:binary :minus (:binary :mul (:icon 3) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 2950 (:return)) (:line 2960 (:for w (:icon 1) (:icon 12) nil))
     (:line 2970 (:if (:binary :gt (:apply h (:var w)) (:icon 0)))
      (:goto 3800))
     (:line 2980 (:next w))
     (:line 2990 (:rem "*******************random
"))
     (:line 3000 (:let (:var w) (:icon 0)))
     (:line 3010 (:let (:var r3) (:icon 0))) (:line 3020 (:gosub 2910))
     (:line 3030 :restore) (:line 3040 (:let (:var r2) (:icon 0)))
     (:line 3050 (:let (:var r3) (:binary :plus (:var r3) (:icon 1))))
     (:line 3060 (:if (:binary :gt (:var r3) (:icon 100))) (:goto 3010))
     (:line 3070 (:if (:binary :gt (:var x) (:icon 10))) (:goto 3110))
     (:line 3080 (:if (:binary :gt (:var x) (:icon 0))) (:goto 3120))
     (:line 3090
      (:let (:var x)
       (:binary :plus (:icon 1)
        (:apply int
         (:binary :mul (:apply rnd (:icon 1)) (:fcon 2.5))))))
     (:line 3100 (:goto 3120))
     (:line 3110
      (:let (:var x)
       (:binary :minus (:icon 10)
        (:apply int
         (:binary :mul (:apply rnd (:icon 1)) (:fcon 2.5))))))
     (:line 3120 (:if (:binary :gt (:var y) (:icon 10))) (:goto 3160))
     (:line 3130 (:if (:binary :gt (:var y) (:icon 0))) (:goto 3270))
     (:line 3140
      (:let (:var y)
       (:binary :plus (:icon 1)
        (:apply int
         (:binary :mul (:apply rnd (:icon 1)) (:fcon 2.5))))))
     (:line 3150 (:goto 3270))
     (:line 3160
      (:let (:var y)
       (:binary :minus (:icon 10)
        (:apply int
         (:binary :mul (:apply rnd (:icon 1)) (:fcon 2.5))))))
     (:line 3170 (:goto 3270))
     (:line 3180 (:let (:apply f (:var w)) (:var x)))
     (:line 3190 (:let (:apply g (:var w)) (:var y)))
     (:line 3200 (:if (:binary :eq (:var w) (:var a))) (:goto 3380))
     (:line 3210 (:if (:binary :eq (:var r2) (:icon 6))) (:goto 3030))
     (:line 3220 (:read (:var x1) (:var y1)))
     (:line 3230 (:let (:var r2) (:binary :plus (:var r2) (:icon 1))))
     (:line 3240
      (:data (:icon 1) (:icon 1) (:uminus (:icon 1)) (:icon 1) (:icon 1)
       (:uminus (:icon 3)) (:icon 1) (:icon 1) (:icon 0) (:icon 2)
       (:uminus (:icon 1)) (:icon 1)))
     (:line 3250
      (:let (:var x) (:binary :plus (:var x) (:var x1))))
     (:line 3260
      (:let (:var y) (:binary :plus (:var y) (:var y1))))
     (:line 3270 (:if (:binary :gt (:var x) (:icon 10))) (:goto 3210))
     (:line 3280 (:if (:binary :lt (:var x) (:icon 1))) (:goto 3210))
     (:line 3290 (:if (:binary :gt (:var y) (:icon 10))) (:goto 3210))
     (:line 3300 (:if (:binary :lt (:var y) (:icon 1))) (:goto 3210))
     (:line 3310
      (:if (:binary :gt (:apply b (:var x) (:var y)) (:icon 10)))
      (:goto 3210))
     (:line 3320 (:for q9 (:icon 1) (:var w) nil))
     (:line 3330 (:if (:binary :ne (:apply f (:var q9)) (:var x)))
      (:goto 3350))
     (:line 3340 (:if (:binary :eq (:apply g (:var q9)) (:var y)))
      (:goto 3210))
     (:line 3350 (:next q9))
     (:line 3360 (:let (:var w) (:binary :plus (:var w) (:icon 1))))
     (:line 3370 (:goto 3180))
     (:line 3380 (:if (:binary :ne (:var k$) (:scon "yes"))) (:goto 3420))
     (:line 3390 (:for z5 (:icon 1) (:var a) nil))
     (:line 3400
      (:print (:apply f (:var z5)) :semi (:apply g (:var z5))))
     (:line 3410 (:next z5))
     (:line 3420 (:for w (:icon 1) (:var a) nil))
     (:line 3430
      (:if
       (:binary :eq
        (:apply b (:apply f (:var w)) (:apply g (:var w)))
        (:icon 3)))
      (:goto 3500))
     (:line 3440
      (:if
       (:binary :eq
        (:apply b (:apply f (:var w)) (:apply g (:var w)))
        (:icon 2)))
      (:goto 3520))
     (:line 3450
      (:if
       (:binary :eq
        (:apply b (:apply f (:var w)) (:apply g (:var w)))
        (:icon 1)))
      (:goto 3560))
     (:line 3460
      (:if
       (:binary :eq
        (:apply b (:apply f (:var w)) (:apply g (:var w)))
        (:fcon 0.5)))
      (:goto 3540))
     (:line 3470
      (:let
       (:apply b (:apply f (:var w)) (:apply g (:var w)))
       (:binary :plus (:icon 10) (:var c))))
     (:line 3480 (:next w)) (:line 3490 (:goto 1950))
     (:line 3500 (:print (:scon "i hit your battleship")))
     (:line 3510 (:goto 3570))
     (:line 3520 (:print (:scon "i hit your cruiser")))
     (:line 3530 (:goto 3570))
     (:line 3540 (:print (:scon "i hit your destroyer<b>")))
     (:line 3550 (:goto 3570))
     (:line 3560 (:print (:scon "i hit your destroyer<a>")))
     (:line 3570 (:for q (:icon 1) (:icon 12) nil))
     (:line 3580
      (:if (:binary :ne (:apply e (:var q)) (:uminus (:icon 1))))
      (:goto 3730))
     (:line 3590
      (:let (:apply e (:var q))
       (:binary :plus (:icon 10) (:var c))))
     (:line 3600
      (:let (:apply h (:var q))
       (:apply b (:apply f (:var w)) (:apply g (:var w)))))
     (:line 3610 (:let (:var m3) (:icon 0)))
     (:line 3620 (:for m2 (:icon 1) (:icon 12) nil))
     (:line 3630
      (:if
       (:binary :ne (:apply h (:var m2)) (:apply h (:var q))))
      (:goto 3650))
     (:line 3640 (:let (:var m3) (:binary :plus (:var m3) (:icon 1))))
     (:line 3650 (:next m2))
     (:line 3660
      (:if
       (:binary :ne (:var m3)
        (:binary :plus
         (:binary :plus
          (:apply int
           (:binary :plus (:apply h (:var q)) (:fcon 0.5)))
          (:icon 1))
         (:apply int
          (:binary :div
           (:apply int
            (:binary :plus (:apply h (:var q)) (:fcon 0.5)))
           (:icon 3))))))
      (:goto 3470))
     (:line 3670 (:for m2 (:icon 1) (:icon 12) nil))
     (:line 3680
      (:if
       (:binary :ne (:apply h (:var m2)) (:apply h (:var q))))
      (:goto 3710))
     (:line 3690 (:let (:apply e (:var m2)) (:uminus (:icon 1))))
     (:line 3700 (:let (:apply h (:var m2)) (:uminus (:icon 1))))
     (:line 3710 (:next m2)) (:line 3720 (:goto 3470))
     (:line 3730 (:next q)) (:line 3740 (:print (:scon "program abort:")))
     (:line 3750 (:for q (:icon 1) (:icon 12) nil))
     (:line 3760
      (:print (:scon "e(") :semi (:var q) :semi (:scon ") =") :semi
       (:apply e (:var q))))
     (:line 3770
      (:print (:scon "h(") :semi (:var q) :semi (:scon ") =") :semi
       (:apply h (:var q))))
     (:line 3780 (:next q)) (:line 3790 (:stop))
     (:line 3800 (:rem "************************usingearray
"))
     (:line 3810 (:for r (:icon 1) (:icon 10) nil))
     (:line 3820 (:for s (:icon 1) (:icon 10) nil))
     (:line 3830 (:let (:apply k (:var r) (:var s)) (:icon 0)))
     (:line 3840 (:next s)) (:line 3850 (:next r))
     (:line 3860 (:for u (:icon 1) (:icon 12) nil))
     (:line 3870 (:if (:binary :lt (:apply e (:var u)) (:icon 10)))
      (:goto 4020))
     (:line 3880 (:for r (:icon 1) (:icon 10) nil))
     (:line 3890 (:for s (:icon 1) (:icon 10) nil))
     (:line 3900
      (:if (:binary :lt (:apply b (:var r) (:var s)) (:icon 10)))
      (:goto 3930))
     (:line 3910
      (:let (:apply k (:var r) (:var s))
       (:uminus (:icon 10000000))))
     (:line 3920 (:goto 4000))
     (:line 3930
      (:for m (:apply sgn (:binary :minus (:icon 1) (:var r)))
       (:apply sgn (:binary :minus (:icon 10) (:var r))) nil))
     (:line 3940
      (:for n (:apply sgn (:binary :minus (:icon 1) (:var s)))
       (:apply sgn (:binary :minus (:icon 10) (:var s))) nil))
     (:line 3950
      (:if
       (:binary :eq
        (:binary :plus (:binary :plus (:var n) (:var m))
         (:binary :mul (:var n) (:var m)))
        (:icon 0)))
      (:goto 3980))
     (:line 3960
      (:if
       (:binary :ne
        (:apply b (:binary :plus (:var r) (:var m))
         (:binary :plus (:var s) (:var n)))
        (:apply e (:var u))))
      (:goto 3980))
     (:line 3970
      (:let (:apply k (:var r) (:var s))
       (:binary :minus
        (:binary :plus (:apply k (:var r) (:var s))
         (:apply e (:var u)))
        (:binary :mul (:var s)
         (:apply int
          (:binary :plus (:apply h (:var u)) (:fcon 0.5)))))))
     (:line 3980 (:next n)) (:line 3990 (:next m))
     (:line 4000 (:next s)) (:line 4010 (:next r))
     (:line 4020 (:next u))
     (:line 4030 (:for r (:icon 1) (:var a) nil))
     (:line 4040 (:let (:apply f (:var r)) (:var r)))
     (:line 4050 (:let (:apply g (:var r)) (:var r)))
     (:line 4060 (:next r))
     (:line 4070 (:for r (:icon 1) (:icon 10) nil))
     (:line 4080 (:for s (:icon 1) (:icon 10) nil))
     (:line 4090 (:let (:var q9) (:icon 1)))
     (:line 4100 (:for m (:icon 1) (:var a) nil))
     (:line 4110
      (:if
       (:binary :ge
        (:apply k (:apply f (:var m)) (:apply g (:var m)))
        (:apply k (:apply f (:var q9))
         (:apply g (:var q9)))))
      (:goto 4130))
     (:line 4120 (:let (:var q9) (:var m))) (:line 4130 (:next m))
     (:line 4131 (:if (:binary :gt (:var r) (:var a))) (:goto 4140))
     (:line 4132 (:if (:binary :eq (:var r) (:var s))) (:goto 4210))
     (:line 4140
      (:if
       (:binary :lt (:apply k (:var r) (:var s))
        (:apply k (:apply f (:var q9))
         (:apply g (:var q9)))))
      (:goto 4210))
     (:line 4150 (:for m (:icon 1) (:var a) nil))
     (:line 4160 (:if (:binary :ne (:apply f (:var m)) (:var r)))
      (:goto 4190))
     (:line 4170 (:if (:binary :eq (:apply g (:var m)) (:var s)))
      (:goto 4210))
     (:line 4180 (:next m))
     (:line 4190 (:let (:apply f (:var q9)) (:var r)))
     (:line 4200 (:let (:apply g (:var q9)) (:var s)))
     (:line 4210 (:next s)) (:line 4220 (:next r))
     (:line 4230 (:goto 3380)) (:line 4240 (:end)))))



(defvar *sinewave*
  '(((:line 10 (:print (:apply tab (:icon 30)) :semi (:scon "sine wave")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print) (:print) (:print))
     (:line 40 (:rem " arkable program by david ahl
"))
     (:line 50 (:let (:var b) (:icon 0)))
     (:line 100 (:rem "  start long loop
"))
     (:line 110 (:for t (:icon 0) (:icon 40) (:fcon 0.25)))
     (:line 120
      (:let (:var a)
       (:apply int
        (:binary :plus (:icon 26)
         (:binary :mul (:icon 25) (:apply sin (:var t)))))))
     (:line 130 (:print (:apply tab (:var a)) :semi))
     (:line 140 (:if (:binary :eq (:var b) (:icon 1))) (:goto 180))
     (:line 150 (:print (:scon "creative")))
     (:line 160 (:let (:var b) (:icon 1))) (:line 170 (:goto 200))
     (:line 180 (:print (:scon "computing")))
     (:line 190 (:let (:var b) (:icon 0))) (:line 200 (:next t))
     (:line 999 (:end)))))



(defvar *slalom*
  '(((:line 10 (:print (:apply tab (:icon 33)) :semi (:scon "slalom")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print))
     (:line 310
      (:print (:scon "how many gates does this course have (1 to 25)") :semi))
     (:line 320 (:input nil ((:var v))))
     (:line 330 (:if (:binary :gt (:var v) (:icon 25))) (:goto 360))
     (:line 340 (:if (:binary :lt (:var v) (:icon 1))) (:goto 390))
     (:line 350 (:goto 1440)) (:line 360 (:print (:scon "25 is the limit.")))
     (:line 370 (:let (:var v) (:icon 25))) (:line 380 (:goto 1440))
     (:line 390 (:print (:scon "try again,"))) (:line 400 (:goto 310))
     (:line 410
      (:print (:scon "rate yourself as a skier, (1=worst, 3=best)") :semi))
     (:line 420 (:input nil ((:var a))))
     (:line 430 (:if (:binary :lt (:var a) (:icon 1))) (:goto 460))
     (:line 440 (:if (:binary :gt (:var a) (:icon 3))) (:goto 460))
     (:line 450 (:goto 480)) (:line 460 (:print (:scon "the bounds are 1-3")))
     (:line 470 (:goto 410))
     (:line 480
      (:print (:scon "the starter counts down...5...4...3...2...1...go!")
       :semi))
     (:line 490 (:rem "
")) (:line 500 (:let (:var t) (:icon 0)))
     (:line 510
      (:let (:var s)
       (:apply int
        (:binary :plus
         (:binary :mul (:apply rnd (:icon 1))
          (:binary :minus (:icon 18) (:icon 9)))
         (:icon 9)))))
     (:line 520 (:print)) (:line 525 (:print (:scon "you're off!")))
     (:line 530 (:for o (:icon 1) (:var v) nil))
     (:line 540 (:read (:var q))) (:line 550 (:print))
     (:line 555
      (:print (:scon "here comes gate #") :semi (:apply str$ (:var o))
       :semi (:scon ":")))
     (:line 560 (:print (:var s) :semi (:scon "m.p.h.")))
     (:line 570 (:let (:var s1) (:var s)))
     (:line 580 (:print (:scon "option") :semi))
     (:line 590 (:input nil ((:var o1))))
     (:line 600 (:if (:binary :eq (:var o1) (:icon 0))) (:goto 970))
     (:line 610 (:if (:binary :gt (:var o1) (:icon 8))) (:goto 1420))
     (:line 620 (:if (:binary :lt (:var o1) (:icon 1))) (:goto 1420))
     (:line 630 (:gosub 990))
     (:line 640 (:if (:binary :lt (:var s) (:icon 7))) (:goto 1390))
     (:line 650
      (:let (:var t)
       (:binary :plus (:var t)
        (:binary :plus (:binary :minus (:var q) (:var s)) (:icon 1)))))
     (:line 660 (:if (:binary :gt (:var s) (:var q))) (:goto 1630))
     (:line 670 (:next o))
     (:line 680 (:print)
      (:print (:scon "you took") :semi
       (:binary :plus (:var t) (:apply rnd (:icon 1))) :semi
       (:scon "seconds.")))
     (:line 690 (:let (:var m) (:var t)))
     (:line 700 (:let (:var m) (:binary :div (:var m) (:var v))))
     (:line 710
      (:if
       (:binary :lt (:var m)
        (:binary :minus (:fcon 1.5) (:binary :mul (:var a) (:fcon 0.1)))))
      (:goto 1650))
     (:line 720
      (:if
       (:binary :lt (:var m)
        (:binary :minus (:fcon 2.9) (:binary :mul (:var a) (:fcon 0.1)))))
      (:goto 1680))
     (:line 730
      (:if
       (:binary :lt (:var m)
        (:binary :minus (:fcon 4.4) (:binary :mul (:var a) (:fcon 0.01)))))
      (:goto 1710))
     (:line 740 (:print) (:print (:scon "do you want to race again") :semi))
     (:line 750 (:input nil ((:var b$)))) (:line 760 (:rem "
"))
     (:line 770 (:if (:binary :eq (:var b$) (:scon "no"))) (:goto 1740))
     (:line 780 (:if (:binary :eq (:var b$) (:scon "yes"))) (:goto 480))
     (:line 790 (:print (:scon "please type 'yes' or 'no'")))
     (:line 800 (:goto 740)) (:line 810 (:stop)) (:line 820 (:print))
     (:line 825
      (:print
       (:scon
        "*** slalom: this is the 1976 winter olympic giant slalom.  you are")))
     (:line 830
      (:print
       (:scon "            the american team's only hope of a gold medal.")))
     (:line 840 (:print))
     (:line 845
      (:print
       (:scon
        "     0 -- type this is you want to see how long you've taken.")))
     (:line 850
      (:print (:scon "     1 -- type this if you want to speed up a lot.")))
     (:line 860
      (:print (:scon "     2 -- type this if you want to speed up a little.")))
     (:line 870
      (:print (:scon "     3 -- type this if you want to speed up a teensy.")))
     (:line 880
      (:print
       (:scon
        "     4 -- type this if you want to keep going the same speed.")))
     (:line 890
      (:print (:scon "     5 -- type this if you want to check a teensy.")))
     (:line 900
      (:print (:scon "     6 -- type this if you want to check a little.")))
     (:line 910
      (:print (:scon "     7 -- type this if you want to check a lot.")))
     (:line 920
      (:print
       (:scon
        "     8 -- type this if you want to cheat and try to skip a gate.")))
     (:line 930 (:print))
     (:line 935
      (:print
       (:scon " the place to use these options is when the computer asks:")))
     (:line 940 (:print)) (:line 945 (:print (:scon "option?")))
     (:line 950 (:print))
     (:line 955 (:print (:scon "                good luck!")))
     (:line 957 (:print)) (:line 960 (:goto 1470))
     (:line 970
      (:print (:scon "you've taken") :semi
       (:binary :plus (:var t) (:apply rnd (:icon 1))) :semi
       (:scon "seconds.")))
     (:line 980 (:goto 580))
     (:line 990
      (:on-goto (:var o1) (1130 1010 1170 1080 1190 1100 1150 1210)))
     (:line 1000 (:stop))
     (:line 1010
      (:let (:var s)
       (:binary :plus (:var s)
        (:apply int
         (:binary :plus
          (:binary :mul (:apply rnd (:icon 1))
           (:binary :minus (:icon 5) (:icon 3)))
          (:icon 3))))))
     (:line 1020 (:print (:var s) :semi (:scon "m.p.h.")))
     (:line 1030 (:if (:binary :gt (:var s) (:var q))) (:goto 1290))
     (:line 1040
      (:if (:binary :gt (:var s) (:binary :minus (:var q) (:icon 1))))
      (:goto 1060))
     (:line 1050 (:return)) (:line 1060 (:print (:scon "close one!")))
     (:line 1070 (:return))
     (:line 1080 (:print (:var s) :semi (:scon "m.p.h.")))
     (:line 1090 (:goto 1030))
     (:line 1100
      (:let (:var s)
       (:binary :minus (:var s)
        (:apply int
         (:binary :plus
          (:binary :mul (:apply rnd (:icon 1))
           (:binary :minus (:icon 5) (:icon 3)))
          (:icon 3))))))
     (:line 1110 (:print (:var s) :semi (:scon "m.p.h.")))
     (:line 1120 (:goto 1030))
     (:line 1130
      (:let (:var s)
       (:binary :plus (:var s)
        (:apply int
         (:binary :plus
          (:binary :mul (:apply rnd (:icon 1))
           (:binary :minus (:icon 10) (:icon 5)))
          (:icon 5))))))
     (:line 1140 (:goto 1080))
     (:line 1150
      (:let (:var s)
       (:binary :minus (:var s)
        (:apply int
         (:binary :plus
          (:binary :mul (:apply rnd (:icon 1))
           (:binary :minus (:icon 10) (:icon 5)))
          (:icon 5))))))
     (:line 1160 (:goto 1110))
     (:line 1170
      (:let (:var s)
       (:binary :plus (:var s)
        (:apply int
         (:binary :plus
          (:binary :mul (:apply rnd (:icon 1))
           (:binary :minus (:icon 4) (:icon 1)))
          (:icon 1))))))
     (:line 1180 (:goto 1110))
     (:line 1190
      (:let (:var s)
       (:binary :minus (:var s)
        (:apply int
         (:binary :plus
          (:binary :mul (:apply rnd (:icon 1))
           (:binary :minus (:icon 4) (:icon 1)))
          (:icon 1))))))
     (:line 1200 (:goto 1110)) (:line 1210 (:print (:scon "***cheat")))
     (:line 1220 (:if (:binary :lt (:apply rnd (:icon 1)) (:fcon 0.7)))
      (:goto 1260))
     (:line 1230 (:print (:scon "you made it!")))
     (:line 1240 (:let (:var t) (:binary :plus (:var t) (:fcon 1.5))))
     (:line 1250 (:return))
     (:line 1260 (:print (:scon "an official caught you!")))
     (:line 1270
      (:print (:scon "you took") :semi
       (:binary :plus (:var t) (:apply rnd (:icon 1))) :semi
       (:scon "seconds.")))
     (:line 1280 (:goto 740))
     (:line 1290
      (:if
       (:binary :lt (:apply rnd (:icon 1))
        (:binary :plus
         (:binary :mul (:binary :minus (:var s) (:var q)) (:fcon 0.1))
         (:fcon 0.2))))
      (:goto 1320))
     (:line 1300
      (:print (:scon "you went over the naximum speed and made it!")))
     (:line 1310 (:return))
     (:line 1320 (:print (:scon "you went over the maximum speed and ") :semi))
     (:line 1330 (:if (:binary :lt (:apply rnd (:icon 1)) (:fcon 0.5)))
      (:goto 1370))
     (:line 1340 (:print (:scon "wiped out!")))
     (:line 1350
      (:print (:scon "you took") :semi
       (:binary :plus (:var t) (:apply rnd (:icon 1))) :semi
       (:scon "seconds")))
     (:line 1360 (:goto 740)) (:line 1370 (:print (:scon "snagged a flag!")))
     (:line 1380 (:goto 1350))
     (:line 1390
      (:print
       (:scon "let's be realistic, ok?  let's go back and try again...")))
     (:line 1400 (:let (:var s) (:var s1))) (:line 1410 (:goto 550))
     (:line 1420 (:print (:scon "what?"))) (:line 1430 (:goto 580))
     (:line 1440 (:print))
     (:line 1445
      (:print (:scon "type ") :semi (:apply chr$ (:icon 34)) :semi
       (:scon "ins") :semi (:apply chr$ (:icon 34)) :semi
       (:scon " for instructions")))
     (:line 1450
      (:print (:scon "type ") :semi (:apply chr$ (:icon 34)) :semi
       (:scon "max") :semi (:apply chr$ (:icon 34)) :semi
       (:scon " for approximate maximum speeds")))
     (:line 1460
      (:print (:scon "type ") :semi (:apply chr$ (:icon 34)) :semi
       (:scon "run") :semi (:apply chr$ (:icon 34)) :semi
       (:scon " for the beginning of the race")))
     (:line 1470 (:print (:scon "command--") :semi))
     (:line 1480 (:input nil ((:var a$)))) (:line 1490 (:rem "
"))
     (:line 1500 (:if (:binary :eq (:var a$) (:scon "ins"))) (:goto 820))
     (:line 1510 (:if (:binary :eq (:var a$) (:scon "max"))) (:goto 1550))
     (:line 1520 (:if (:binary :eq (:var a$) (:scon "run"))) (:goto 410))
     (:line 1530
      (:print (:apply chr$ (:icon 34)) :semi (:var a$) :semi
       (:apply chr$ (:icon 34)) :semi
       (:scon " is an illegal command--retry") :semi))
     (:line 1540 (:goto 1480)) (:line 1550 (:print (:scon "gate max")))
     (:line 1560 (:print (:scon " #  m.p.h.")))
     (:line 1570 (:print (:scon "----------")))
     (:line 1580 (:for b (:icon 1) (:var v) nil))
     (:line 1590 (:read (:var q)))
     (:line 1600 (:print (:var b) :semi (:scon "  ") :semi (:var q)))
     (:line 1610 (:next b)) (:line 1620 (:goto 1470))
     (:line 1630 (:let (:var t) (:binary :plus (:var t) (:fcon 0.5))))
     (:line 1640 (:goto 670))
     (:line 1650 (:print (:scon "you won a gold medal!")))
     (:line 1660
      (:let (:apply g (:icon 1))
       (:binary :plus (:apply g (:icon 1)) (:icon 1))))
     (:line 1670 (:goto 1730))
     (:line 1680 (:print (:scon "you won a silver medal")))
     (:line 1690
      (:let (:apply s (:icon 1))
       (:binary :plus (:apply s (:icon 1)) (:icon 1))))
     (:line 1700 (:goto 1730))
     (:line 1710 (:print (:scon "you won a bronze medal")))
     (:line 1720
      (:let (:apply b (:icon 1))
       (:binary :plus (:apply b (:icon 1)) (:icon 1))))
     (:line 1730 (:goto 740))
     (:line 1740 (:print (:scon "thanks for the race")))
     (:line 1750 (:if (:binary :lt (:apply g (:icon 1)) (:icon 1)))
      (:goto 1770))
     (:line 1760
      (:print (:scon "gold medals:") :semi (:apply g (:icon 1))))
     (:line 1770 (:if (:binary :lt (:apply s (:icon 1)) (:icon 1)))
      (:goto 1790))
     (:line 1780
      (:print (:scon "silver medals:") :semi (:apply s (:icon 1))))
     (:line 1790 (:if (:binary :lt (:apply b (:icon 1)) (:icon 1)))
      (:goto 1830))
     (:line 1800
      (:print (:scon "bronze medals:") :semi (:apply b (:icon 1))))
     (:line 1810
      (:data (:icon 14) (:icon 18) (:icon 26) (:icon 29) (:icon 18) (:icon 25)
       (:icon 28) (:icon 32) (:icon 29) (:icon 20) (:icon 29) (:icon 29)
       (:icon 25) (:icon 21) (:icon 26) (:icon 29) (:icon 20) (:icon 21)
       (:icon 20)))
     (:line 1820
      (:data (:icon 18) (:icon 26) (:icon 25) (:icon 33) (:icon 31)
       (:icon 22)))
     (:line 1830 (:end)))))



(defvar *slots*
  '(((:line 10 (:print (:apply tab (:icon 30)) :semi (:scon "slots")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print))
     (:line 100
      (:rem " produced by fred mirabelle and bob harper on jan 29, 1973
"))
     (:line 110 (:rem " it simulates the slot machine.
"))
     (:line 120
      (:print (:scon "you are in the h&m casino,in front of one of our")))
     (:line 130 (:print (:scon "one-arm bandits. bet from $1 to $100.")))
     (:line 140
      (:print
       (:scon "to pull the arm, punch the return key after making your bet.")))
     (:line 150 (:let (:var p) (:icon 0)))
     (:line 160 (:print) (:print (:scon "your bet") :semi))
     (:line 170 (:input nil ((:var m))))
     (:line 180 (:if (:binary :gt (:var m) (:icon 100))) (:goto 860))
     (:line 190 (:if (:binary :lt (:var m) (:icon 1))) (:goto 880))
     (:line 200 (:let (:var m) (:apply int (:var m))))
     (:line 210 (:gosub 1270)) (:line 220 (:print))
     (:line 230
      (:let (:var x)
       (:apply int
        (:binary :plus (:binary :mul (:icon 6) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 240
      (:let (:var y)
       (:apply int
        (:binary :plus (:binary :mul (:icon 6) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 250
      (:let (:var z)
       (:apply int
        (:binary :plus (:binary :mul (:icon 6) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 260 (:print))
     (:line 270 (:if (:binary :eq (:var x) (:icon 1))) (:goto 910))
     (:line 280 (:if (:binary :eq (:var x) (:icon 2))) (:goto 930))
     (:line 290 (:if (:binary :eq (:var x) (:icon 3))) (:goto 950))
     (:line 300 (:if (:binary :eq (:var x) (:icon 4))) (:goto 970))
     (:line 310 (:if (:binary :eq (:var x) (:icon 5))) (:goto 990))
     (:line 320 (:if (:binary :eq (:var x) (:icon 6))) (:goto 1010))
     (:line 330 (:if (:binary :eq (:var y) (:icon 1))) (:goto 1030))
     (:line 340 (:if (:binary :eq (:var y) (:icon 2))) (:goto 1050))
     (:line 350 (:if (:binary :eq (:var y) (:icon 3))) (:goto 1070))
     (:line 360 (:if (:binary :eq (:var y) (:icon 4))) (:goto 1090))
     (:line 370 (:if (:binary :eq (:var y) (:icon 5))) (:goto 1110))
     (:line 380 (:if (:binary :eq (:var y) (:icon 6))) (:goto 1130))
     (:line 390 (:if (:binary :eq (:var z) (:icon 1))) (:goto 1150))
     (:line 400 (:if (:binary :eq (:var z) (:icon 2))) (:goto 1170))
     (:line 410 (:if (:binary :eq (:var z) (:icon 3))) (:goto 1190))
     (:line 420 (:if (:binary :eq (:var z) (:icon 4))) (:goto 1210))
     (:line 430 (:if (:binary :eq (:var z) (:icon 5))) (:goto 1230))
     (:line 440 (:if (:binary :eq (:var z) (:icon 6))) (:goto 1250))
     (:line 450 (:if (:binary :eq (:var x) (:var y))) (:goto 600))
     (:line 460 (:if (:binary :eq (:var x) (:var z))) (:goto 630))
     (:line 470 (:if (:binary :eq (:var y) (:var z))) (:goto 650))
     (:line 480 (:print)) (:line 490 (:print (:scon "you lost.")))
     (:line 500 (:let (:var p) (:binary :minus (:var p) (:var m))))
     (:line 510 (:print (:scon "your standings are $") (:var p)))
     (:line 520 (:print (:scon "again") :semi))
     (:line 530 (:input nil ((:var a$))))
     (:line 540 (:if (:binary :eq (:var a$) (:scon "y"))) (:goto 160))
     (:line 550 (:print))
     (:line 560 (:if (:binary :lt (:var p) (:icon 0))) (:goto 670))
     (:line 570 (:if (:binary :eq (:var p) (:icon 0))) (:goto 690))
     (:line 580 (:if (:binary :gt (:var p) (:icon 0))) (:goto 710))
     (:line 590 (:goto 1350))
     (:line 600 (:if (:binary :eq (:var y) (:var z))) (:goto 730))
     (:line 610 (:if (:binary :eq (:var y) (:icon 1))) (:goto 820))
     (:line 620 (:goto 1341))
     (:line 630 (:if (:binary :eq (:var z) (:icon 1))) (:goto 820))
     (:line 640 (:goto 470))
     (:line 650 (:if (:binary :eq (:var z) (:icon 1))) (:goto 820))
     (:line 660 (:goto 1341))
     (:line 670
      (:print (:scon "pay up!  please leave your money on the terminal.")))
     (:line 680 (:goto 1350))
     (:line 690 (:print (:scon "hey, you broke even.")))
     (:line 700 (:goto 1350))
     (:line 710 (:print (:scon "collect your winnings from the h&m cashier.")))
     (:line 720 (:goto 1350))
     (:line 730 (:if (:binary :eq (:var z) (:icon 1))) (:goto 780))
     (:line 740 (:print) (:print (:scon "**top dollar**")))
     (:line 750 (:print (:scon "you won!")))
     (:line 760
      (:let (:var p)
       (:binary :plus
        (:binary :plus (:binary :mul (:icon 10) (:var m)) (:var m))
        (:var p))))
     (:line 770 (:goto 510))
     (:line 780 (:print) (:print (:scon "***jackpot***")))
     (:line 790 (:print (:scon "you won!")))
     (:line 800
      (:let (:var p)
       (:binary :plus
        (:binary :plus (:binary :mul (:icon 100) (:var m)) (:var m))
        (:var p))))
     (:line 810 (:goto 510))
     (:line 820 (:print) (:print (:scon "*double bar*")))
     (:line 830 (:print (:scon "you won!")))
     (:line 840
      (:let (:var p)
       (:binary :plus
        (:binary :plus (:binary :mul (:icon 5) (:var m)) (:var m))
        (:var p))))
     (:line 850 (:goto 510))
     (:line 860 (:print (:scon "house limits are $100")))
     (:line 870 (:goto 160)) (:line 880 (:print (:scon "minimum bet is $1")))
     (:line 890 (:goto 160)) (:line 900 (:goto 220))
     (:line 910 (:print (:scon "bar") :semi) (:gosub 1310))
     (:line 920 (:goto 330))
     (:line 930 (:print (:scon "bell") :semi) (:gosub 1310))
     (:line 940 (:goto 330))
     (:line 950 (:print (:scon "orange") :semi) (:gosub 1310))
     (:line 960 (:goto 330))
     (:line 970 (:print (:scon "lemon") :semi) (:gosub 1310))
     (:line 980 (:goto 330))
     (:line 990 (:print (:scon "plum") :semi) (:gosub 1310))
     (:line 1000 (:goto 330))
     (:line 1010 (:print (:scon "cherry") :semi) (:gosub 1310))
     (:line 1020 (:goto 330))
     (:line 1030 (:print (:scon " bar") :semi) (:gosub 1310))
     (:line 1040 (:goto 390))
     (:line 1050 (:print (:scon " bell") :semi) (:gosub 1310))
     (:line 1060 (:goto 390))
     (:line 1070 (:print (:scon " orange") :semi) (:gosub 1310))
     (:line 1080 (:goto 390))
     (:line 1090 (:print (:scon " lemon") :semi) (:gosub 1310))
     (:line 1100 (:goto 390))
     (:line 1110 (:print (:scon " plum") :semi) (:gosub 1310))
     (:line 1120 (:goto 390))
     (:line 1130 (:print (:scon " cherry") :semi) (:gosub 1310))
     (:line 1140 (:goto 390)) (:line 1150 (:print (:scon " bar")))
     (:line 1160 (:goto 450)) (:line 1170 (:print (:scon " bell")))
     (:line 1180 (:goto 450)) (:line 1190 (:print (:scon " orange")))
     (:line 1200 (:goto 450)) (:line 1210 (:print (:scon " lemon")))
     (:line 1220 (:goto 450)) (:line 1230 (:print (:scon " plum")))
     (:line 1240 (:goto 450)) (:line 1250 (:print (:scon " cherry")))
     (:line 1260 (:goto 450))
     (:line 1270 (:for q4 (:icon 1) (:icon 10) nil))
     (:line 1280 (:print (:apply chr$ (:icon 7)) :semi))
     (:line 1290 (:next q4)) (:line 1300 (:return))
     (:line 1310 (:for t8 (:icon 1) (:icon 5) nil))
     (:line 1320 (:print (:apply chr$ (:icon 7)) :semi))
     (:line 1330 (:next t8)) (:line 1340 (:return))
     (:line 1341 (:print) (:print (:scon "double!!")))
     (:line 1342 (:print (:scon "you won!")))
     (:line 1343
      (:let (:var p)
       (:binary :plus
        (:binary :plus (:binary :mul (:icon 2) (:var m)) (:var m))
        (:var p))))
     (:line 1344 (:goto 510)) (:line 1350 (:stop)) (:line 9999 (:end)))))



(defvar *splat*
  '(((:line 10 (:print (:apply tab (:icon 33)) :semi (:scon "splat")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 40 (:print) (:print) (:print))
     (:line 50 (:dim ((:dimd a (:icon 42)))))
     (:line 95
      (:print
       (:scon "welcome to 'splat' -- the game that simulates a parachute")))
     (:line 96
      (:print (:scon "jump.  try to open your chute at the last possible")))
     (:line 97 (:print (:scon "moment without going splat.")))
     (:line 118 (:print) (:print) (:let (:var d1) (:icon 0))
      (:let (:var v) (:icon 0)) (:let (:var a) (:icon 0))
      (:let (:var n) (:icon 0)) (:let (:var m) (:icon 0))
      (:let (:var d1)
       (:apply int
        (:binary :plus (:binary :mul (:icon 9001) (:apply rnd (:icon 1)))
         (:icon 1000)))))
     (:line 119
      (:print (:scon "select your own terminal velocity (yes or no)") :semi)
      (:input nil ((:var a1$))))
     (:line 120 (:if (:binary :eq (:var a1$) (:scon "no"))) (:goto 128))
     (:line 121 (:if (:binary :ne (:var a1$) (:scon "yes")))
      (:print (:scon "yes or no") :semi) (:input nil ((:var a1$)))
      (:goto 120))
     (:line 123 (:print (:scon "what terminal velocity (mi/hr)") :semi)
      (:input nil ((:var v1))))
     (:line 125
      (:let (:var v1)
       (:binary :mul (:var v1) (:binary :div (:icon 5280) (:icon 3600))))
      (:let (:var v)
       (:binary :minus
        (:binary :plus (:var v1)
         (:binary :div (:binary :mul (:var v1) (:apply rnd (:icon 1)))
          (:icon 20)))
        (:binary :div (:binary :mul (:var v1) (:apply rnd (:icon 1)))
         (:icon 20))))
      (:goto 135))
     (:line 128
      (:let (:var v1)
       (:apply int
        (:binary :mul (:icon 1000) (:apply rnd (:icon 1))))))
     (:line 130
      (:print (:scon "ok.  terminal velocity =") (:var v1)
       (:scon "mi/hr")))
     (:line 131
      (:let (:var v1)
       (:binary :mul (:var v1) (:binary :div (:icon 5280) (:icon 3600))))
      (:let (:var v)
       (:binary :minus
        (:binary :plus (:var v1)
         (:binary :div (:binary :mul (:var v1) (:apply rnd (:icon 1)))
          (:icon 20)))
        (:binary :div (:binary :mul (:var v1) (:apply rnd (:icon 1)))
         (:icon 20)))))
     (:line 135
      (:print (:scon "want to select acceleration due to gravity (yes or no)")
       :semi))
     (:line 136 (:input nil ((:var b1$))))
     (:line 140 (:if (:binary :eq (:var b1$) (:scon "no"))) (:goto 150))
     (:line 141 (:if (:binary :ne (:var b1$) (:scon "yes")))
      (:print (:scon "yes or no") :semi) (:input nil ((:var b1$)))
      (:goto 140))
     (:line 143 (:print (:scon "what acceleration (ft/sec/sec)") :semi)
      (:input nil ((:var a2))))
     (:line 145
      (:let (:var a)
       (:binary :minus
        (:binary :plus (:var a2)
         (:binary :div (:binary :mul (:var a2) (:apply rnd (:icon 1)))
          (:icon 20)))
        (:binary :div (:binary :mul (:var a2) (:apply rnd (:icon 1)))
         (:icon 20))))
      (:goto 205))
     (:line 150
      (:on-goto
       (:apply int
        (:binary :plus (:icon 1)
         (:binary :mul (:icon 10) (:apply rnd (:icon 1)))))
       (151 152 153 154 155 156 157 158 159 160)))
     (:line 151
      (:print (:scon "fine. you're on mercury. acceleration=12.2 ft/sec/sec."))
      (:goto 161))
     (:line 152
      (:print
       (:scon "all right. you're on venus. acceleration=28.3 ft/sec/sec."))
      (:goto 162))
     (:line 153
      (:print (:scon "then you're on earth. acceleration=32.16 ft/sec/sec."))
      (:goto 163))
     (:line 154
      (:print
       (:scon "fine. you're on the moon. acceleration=5.15 ft/sec/sec."))
      (:goto 164))
     (:line 155
      (:print
       (:scon "all right. you're on mars. acceleration=12.5 ft/sec/sec."))
      (:goto 165))
     (:line 156
      (:print (:scon "then you're on jupiter. acceleration=85.2 ft/sec/sec."))
      (:goto 166))
     (:line 157
      (:print (:scon "fine. you're on saturn. acceleration=37.6 ft/sec/sec."))
      (:goto 167))
     (:line 158
      (:print
       (:scon "all right. you're on uranus. acceleration=33.8 ft/sec/sec."))
      (:goto 168))
     (:line 159
      (:print (:scon "then you're on neptune. acceleration=39.6 ft/sec/sec."))
      (:goto 169))
     (:line 160
      (:print (:scon "fine. you're on the sun. acceleration=896 ft/sec/sec."))
      (:goto 170))
     (:line 161 (:let (:var a2) (:fcon 12.2)) (:goto 145))
     (:line 162 (:let (:var a2) (:fcon 28.3)) (:goto 145))
     (:line 163 (:let (:var a2) (:fcon 32.16)) (:goto 145))
     (:line 164 (:let (:var a2) (:fcon 5.15)) (:goto 145))
     (:line 165 (:let (:var a2) (:fcon 12.5)) (:goto 145))
     (:line 166 (:let (:var a2) (:fcon 85.2)) (:goto 145))
     (:line 167 (:let (:var a2) (:fcon 37.6)) (:goto 145))
     (:line 168 (:let (:var a2) (:fcon 33.8)) (:goto 145))
     (:line 169 (:let (:var a2) (:fcon 39.6)) (:goto 145))
     (:line 170 (:let (:var a2) (:icon 896)) (:goto 145))
     (:line 205 (:print))
     (:line 206
      (:print (:scon "    altitude         =") (:var d1) (:scon "ft")))
     (:line 207
      (:print (:scon "    term. velocity   =") (:var v1)
       (:scon "ft/sec +/-5%")))
     (:line 208
      (:print (:scon "    acceleration     =") (:var a2)
       (:scon "ft/sec/sec +/-5%")))
     (:line 210 (:print (:scon "set the timer for your freefall.")))
     (:line 211 (:print (:scon "how many seconds") :semi)
      (:input nil ((:var t))))
     (:line 215 (:print (:scon "here we go."))) (:line 217 (:print))
     (:line 218
      (:print (:scon "time (sec)") :comma (:scon "dist to fall (ft)")))
     (:line 219
      (:print (:scon "==========") :comma (:scon "=================")))
     (:line 300
      (:for i (:icon 0) (:var t)
       (:binary :div (:var t) (:icon 8))))
     (:line 310
      (:if (:binary :gt (:var i) (:binary :div (:var v) (:var a))))
      (:goto 400))
     (:line 320
      (:let (:var d)
       (:binary :minus (:var d1)
        (:binary :mul (:binary :div (:var a) (:icon 2))
         (:exp (:var i) (:icon 2))))))
     (:line 330 (:if (:binary :le (:var d) (:icon 0))) (:goto 1000))
     (:line 340 (:print (:var i) :comma (:var d)))
     (:line 350 (:next i)) (:line 360 (:goto 500))
     (:line 400
      (:print (:scon "terminal velocity reached at t plus")
       (:binary :div (:var v) (:var a)) (:scon "seconds.")))
     (:line 405
      (:for i (:var i) (:var t)
       (:binary :div (:var t) (:icon 8))))
     (:line 410
      (:let (:var d)
       (:binary :minus (:var d1)
        (:binary :plus
         (:binary :div (:exp (:var v) (:icon 2))
          (:binary :mul (:icon 2) (:var a)))
         (:binary :mul (:var v)
          (:binary :minus (:var i)
           (:binary :div (:var v) (:var a))))))))
     (:line 420 (:if (:binary :le (:var d) (:icon 0))) (:goto 1010))
     (:line 430 (:print (:var i) :comma (:var d)))
     (:line 440 (:next i)) (:line 500 (:print (:scon "chute open")))
     (:line 510 (:let (:var k) (:icon 0)) (:let (:var k1) (:icon 0)))
     (:line 550 (:for j (:icon 0) (:icon 42) nil))
     (:line 555 (:if (:binary :eq (:apply a (:var j)) (:icon 0)))
      (:goto 620))
     (:line 560 (:let (:var k) (:binary :plus (:var k) (:icon 1))))
     (:line 570 (:if (:binary :ge (:var d) (:apply a (:var j))))
      (:goto 600))
     (:line 580 (:let (:var k1) (:binary :plus (:var k1) (:icon 1))))
     (:line 600 (:next j)) (:line 610 (:goto 540))
     (:line 620 (:let (:apply a (:var j)) (:var d)))
     (:line 630 (:if (:binary :gt (:var j) (:icon 2))) (:goto 650))
     (:line 635 (:print (:scon "amazing!!! not bad for your ") :semi))
     (:line 636 (:if (:binary :eq (:var j) (:icon 0)))
      (:print (:scon "1st ") :semi))
     (:line 637 (:if (:binary :eq (:var j) (:icon 1)))
      (:print (:scon "2nd ") :semi))
     (:line 638 (:if (:binary :eq (:var j) (:icon 2)))
      (:print (:scon "3rd ") :semi))
     (:line 639 (:print (:scon "successful jump!!!")) (:goto 2000))
     (:line 650
      (:if
       (:binary :le (:binary :minus (:var k) (:var k1))
        (:binary :mul (:fcon 0.1) (:var k))))
      (:goto 700))
     (:line 660
      (:if
       (:binary :le (:binary :minus (:var k) (:var k1))
        (:binary :mul (:fcon 0.25) (:var k))))
      (:goto 710))
     (:line 670
      (:if
       (:binary :le (:binary :minus (:var k) (:var k1))
        (:binary :mul (:fcon 0.5) (:var k))))
      (:goto 720))
     (:line 680
      (:if
       (:binary :le (:binary :minus (:var k) (:var k1))
        (:binary :mul (:fcon 0.75) (:var k))))
      (:goto 730))
     (:line 690
      (:if
       (:binary :le (:binary :minus (:var k) (:var k1))
        (:binary :mul (:fcon 0.90000004) (:var k))))
      (:goto 740))
     (:line 695 (:goto 750))
     (:line 700
      (:print (:scon "wow!  that's some jumping.  of the") (:var k)
       (:scon "successful jumps")))
     (:line 701
      (:print (:scon "before yours, only")
       (:binary :minus (:var k) (:var k1))
       (:scon "opened their chutes lower than")))
     (:line 702 (:print (:scon "you did."))) (:line 703 (:goto 2000))
     (:line 710
      (:print (:scon "pretty good! ") (:var k)
       (:scon "successful jumps preceded yours and only")))
     (:line 711
      (:print (:binary :minus (:var k) (:var k1))
       (:scon " of them got lower than you did before their chutes")))
     (:line 712 (:print (:scon "opened.")) (:goto 2000))
     (:line 720
      (:print (:scon "not bad.  there have been") (:var k)
       (:scon "successful jumps before yours.")))
     (:line 721
      (:print (:scon "you were beaten out by")
       (:binary :minus (:var k) (:var k1)) (:scon "of them."))
      (:goto 2000))
     (:line 730
      (:print (:scon "conservative, aren't you?  you ranked only")
       (:binary :minus (:var k) (:var k1)) (:scon "in the")))
     (:line 731 (:print (:var k) (:scon "successful jumps before yours."))
      (:goto 2000))
     (:line 740
      (:print
       (:scon "humph!  don't you have any sporting blood?  there were")))
     (:line 741
      (:print (:var k)
       (:scon "successful jumps before yours and you came in") (:var k1)
       (:scon "jumps")))
     (:line 742 (:print (:scon "better than the worst.  shape up!!!"))
      (:goto 2000))
     (:line 750
      (:print (:scon "hey!  you pulled the rip cord much too soon.  ")
       (:var k) (:scon "successful")))
     (:line 751
      (:print (:scon "jumps before yours and you came in number")
       (:binary :minus (:var k) (:var k1)) (:scon "!  get with it!")))
     (:line 752 (:goto 2000))
     (:line 800 (:print (:scon "requiescat in pace.")) (:goto 1950))
     (:line 801
      (:print (:scon "may the angel of heaven lead you into paradise."))
      (:goto 1950))
     (:line 802 (:print (:scon "rest in peace.")) (:goto 1950))
     (:line 803 (:print (:scon "son-of-a-gun.")) (:goto 1950))
     (:line 804 (:print (:scon "#$%&&%!$")) (:goto 1950))
     (:line 805
      (:print (:scon "a kick in the pants is a boost if you're headed right."))
      (:goto 1950))
     (:line 806 (:print (:scon "hmmm. should have picked a shorter time."))
      (:goto 1950))
     (:line 807 (:print (:scon "mutter. mutter. mutter.")) (:goto 1950))
     (:line 808 (:print (:scon "pushing up daisies.")) (:goto 1950))
     (:line 809 (:print (:scon "easy come, easy go.")) (:goto 1950))
     (:line 1000
      (:print
       (:apply sqr
        (:binary :div (:binary :mul (:icon 2) (:var d1)) (:var a)))
       :comma (:scon "splat")))
     (:line 1005
      (:on-goto
       (:apply int
        (:binary :plus (:icon 1)
         (:binary :mul (:icon 10) (:apply rnd (:icon 1)))))
       (800 801 802 803 804 805 806 807 808 809)))
     (:line 1010
      (:print
       (:binary :plus (:binary :div (:var v) (:var a))
        (:binary :div
         (:binary :minus (:var d1)
          (:binary :div (:exp (:var v) (:icon 2))
           (:binary :mul (:icon 2) (:var a))))
         (:var v)))
       :comma (:scon "splat")))
     (:line 1020 (:goto 1005))
     (:line 1950 (:print (:scon "i'll give you another chance.")) (:goto 2000))
     (:line 2000 (:print (:scon "do you want to play again") :semi)
      (:input nil ((:var z$))))
     (:line 2001 (:if (:binary :eq (:var z$) (:scon "yes"))) (:goto 118))
     (:line 2002 (:if (:binary :eq (:var z$) (:scon "no"))) (:goto 2005))
     (:line 2003 (:print (:scon "yes or no")) (:goto 2000))
     (:line 2005 (:print (:scon "please") :semi) (:input nil ((:var z$)))
      (:if (:binary :eq (:var z$) (:scon "yes"))) (:goto 118))
     (:line 2006 (:if (:binary :ne (:var z$) (:scon "no")))
      (:print (:scon "yes or no ") :semi) (:goto 2005))
     (:line 2007 (:print (:scon "ssssssssss.")) (:print) (:goto 2046))
     (:line 2046 (:end)))))



(defvar *stars*
  '(((:line 10 (:print (:apply tab (:icon 34)) :semi (:scon "stars")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print))
     (:line 100
      (:rem " *** stars - people's computer center, menlo park, ca
"))
     (:line 140 (:rem " *** a is limit on number, m is number of guesses
"))
     (:line 150 (:let (:var a) (:icon 100)) (:let (:var m) (:icon 7)))
     (:line 170 (:input "do you want instructions" ((:var a$))))
     (:line 190
      (:if
       (:binary :eq (:apply left$ (:var a$) (:icon 1)) (:scon "n")))
      (:goto 280))
     (:line 200 (:rem " *** instructions on how to play
"))
     (:line 210
      (:print (:scon "i am thinking of a whole number from 1 to") :semi
       (:var a)))
     (:line 220 (:print (:scon "try to guess my number.  after you guess, i")))
     (:line 230 (:print (:scon "will type one or more stars (*).  the more")))
     (:line 240
      (:print (:scon "stars i type, the closer you are to my number.")))
     (:line 250
      (:print (:scon "one star (*) means far away, seven stars (*******)")))
     (:line 260
      (:print (:scon "means really close!  you get") :semi (:var m) :semi
       (:scon "guesses.")))
     (:line 270 (:rem " *** computer thinks of a number
"))
     (:line 280 (:print)) (:line 290 (:print))
     (:line 300
      (:let (:var x)
       (:apply int
        (:binary :plus (:binary :mul (:var a) (:apply rnd (:icon 1)))
         (:icon 1)))))
     (:line 310
      (:print (:scon "ok, i am thinking of a number, start guessing.")))
     (:line 320 (:rem " *** guessing begins, human gets m guesses
"))
     (:line 330 (:for k (:icon 1) (:var m) nil)) (:line 340 (:print))
     (:line 350 (:print (:scon "your guess") :semi))
     (:line 360 (:input nil ((:var g))))
     (:line 370 (:if (:binary :eq (:var g) (:var x))) (:goto 600))
     (:line 380
      (:let (:var d)
       (:apply abs (:binary :minus (:var g) (:var x)))))
     (:line 390 (:if (:binary :ge (:var d) (:icon 64))) (:goto 510))
     (:line 400 (:if (:binary :ge (:var d) (:icon 32))) (:goto 500))
     (:line 410 (:if (:binary :ge (:var d) (:icon 16))) (:goto 490))
     (:line 420 (:if (:binary :ge (:var d) (:icon 8))) (:goto 480))
     (:line 430 (:if (:binary :ge (:var d) (:icon 4))) (:goto 470))
     (:line 440 (:if (:binary :ge (:var d) (:icon 2))) (:goto 460))
     (:line 450 (:print (:scon "*") :semi))
     (:line 460 (:print (:scon "*") :semi))
     (:line 470 (:print (:scon "*") :semi))
     (:line 480 (:print (:scon "*") :semi))
     (:line 490 (:print (:scon "*") :semi))
     (:line 500 (:print (:scon "*") :semi))
     (:line 510 (:print (:scon "*") :semi)) (:line 520 (:print))
     (:line 530 (:next k))
     (:line 540 (:rem " *** did not guess in m guesses
")) (:line 550 (:print))
     (:line 560
      (:print (:scon "sorry, that's") :semi (:var m) :semi
       (:scon "guesses. the number was") :semi (:var x)))
     (:line 580 (:goto 650)) (:line 590 (:rem " *** we have a winner
"))
     (:line 600 (:print) (:for n (:icon 1) (:icon 79) nil))
     (:line 610 (:print (:scon "*") :semi)) (:line 620 (:next n))
     (:line 630 (:print) (:print))
     (:line 640
      (:print (:scon "you got it in") :semi (:var k) :semi
       (:scon "guesses!!!  let's play again...")))
     (:line 650 (:goto 280)) (:line 660 (:end)))))



(defvar *stockmarket*
  '(((:line 10
      (:print (:apply tab (:icon 30)) :semi (:scon "stock market")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print))
     (:line 100 (:rem " stock market simulation     -stock-
"))
     (:line 101 (:rem " revised 8/18/70 (d. pessel, l. braun, c. losik)  
"))
     (:line 102
      (:rem
       " imp vrbls: a-mrkt trnd slp; b5-brkrge fee; c-ttl csh assts;    
"))
     (:line 103
      (:rem " c5-ttl csh assts (temp); c(i)-chng in stk val; d-ttl assts;
"))
     (:line 104
      (:rem " e1,e2-lrg chng misc; i-stck #; i1,i2-stcks w lrg chng; 
"))
     (:line 105
      (:rem
       " n1,n2-lrg chng day cnts; p5-ttl days prchss; p(i)-prtfl cntnts;
"))
     (:line 106
      (:rem " q9-new cycl?; s4-sgn of a; s5-ttl dys sls; s(i)-value/shr; 
"))
     (:line 107 (:rem " t-ttl stck assts; t5-ttl val of trnsctns;
"))
     (:line 108
      (:rem
       " w3-lrg chng; x1-smll chng(<$1); z4,z5,z6-nyse ave.; z(i)-trnsct
"))
     (:line 110
      (:dim
       ((:dimd s (:icon 5)) (:dimd p (:icon 5)) (:dimd z (:icon 5))
        (:dimd c (:icon 5)))))
     (:line 112 (:rem " slope of market trend:a  (same for all stocks) 
"))
     (:line 113 (:let (:var x) (:icon 1)))
     (:line 114
      (:let (:var a)
       (:binary :div
        (:apply int
         (:binary :plus
          (:binary :mul (:binary :div (:apply rnd (:var x)) (:icon 10))
           (:icon 100))
          (:fcon 0.5)))
        (:icon 100))))
     (:line 115 (:let (:var t5) (:icon 0)))
     (:line 116 (:let (:var x9) (:icon 0)))
     (:line 117 (:let (:var n1) (:icon 0)))
     (:line 118 (:let (:var n2) (:icon 0)))
     (:line 119 (:let (:var e1) (:icon 0)))
     (:line 120 (:let (:var e2) (:icon 0)))
     (:line 121 (:rem " introduction 
"))
     (:line 122
      (:print (:scon "do you want the instructions (yes-type 1, no-type 0)")
       :semi))
     (:line 123 (:input nil ((:var z9)))) (:line 124 (:print))
     (:line 125 (:print))
     (:line 126 (:if (:binary :lt (:var z9) (:icon 1))) (:goto 200))
     (:line 130
      (:print
       (:scon "this program plays the stock market.  you will be given")))
     (:line 132
      (:print
       (:scon "$10,000 and may buy or sell stocks.  the stock prices will")))
     (:line 134
      (:print
       (:scon "be generated randomly and therefore this model does not")))
     (:line 135
      (:print
       (:scon "represent exactly what happens on the exchange.  a table")))
     (:line 136
      (:print
       (:scon "of available stocks, their prices, and the number of shares")))
     (:line 137
      (:print
       (:scon "in your portfolio will be printed.  following this, the")))
     (:line 138
      (:print
       (:scon "initials of each stock will be printed with a question")))
     (:line 139
      (:print
       (:scon "mark.  here you indicate a transaction.  to buy a stock")))
     (:line 140
      (:print
       (:scon "type +nnn, to sell a stock type -nnn, where nnn is the")))
     (:line 141
      (:print
       (:scon "number of shares.  a brokerage fee of 1% will be charged")))
     (:line 142
      (:print
       (:scon "on all transactions.  note that if a stock's value drops")))
     (:line 143
      (:print
       (:scon "to zero it may rebound to a positive value again.  you")))
     (:line 144
      (:print
       (:scon "have $10,000 to invest.  use integers for all your inputs.")))
     (:line 145
      (:print
       (:scon "(note:  to get a 'feel' for the market run for at least")))
     (:line 146 (:print (:scon "10 days)")))
     (:line 147 (:print (:scon "-----good luck!-----")))
     (:line 200 (:rem " generation of stock table; input requests  
"))
     (:line 210 (:rem " initial stock values 
"))
     (:line 220 (:let (:apply s (:icon 1)) (:icon 100)))
     (:line 230 (:let (:apply s (:icon 2)) (:icon 85)))
     (:line 240 (:let (:apply s (:icon 3)) (:icon 150)))
     (:line 250 (:let (:apply s (:icon 4)) (:icon 140)))
     (:line 260 (:let (:apply s (:icon 5)) (:icon 110)))
     (:line 265 (:rem " initial t8 - # days for first trend slope (a)
"))
     (:line 266
      (:let (:var t8)
       (:apply int
        (:binary :plus
         (:binary :mul (:fcon 4.99) (:apply rnd (:var x)))
         (:icon 1)))))
     (:line 267 (:rem " randomize sign of first trend slope (a)
"))
     (:line 268 (:if (:binary :gt (:apply rnd (:var x)) (:fcon 0.5)))
      (:goto 270))
     (:line 269 (:let (:var a) (:uminus (:var a))))
     (:line 270 (:rem " randomize initial values 
")) (:line 280 (:gosub 830))
     (:line 285 (:rem " initial portfolio contents 
"))
     (:line 290 (:for i (:icon 1) (:icon 5) nil))
     (:line 300 (:let (:apply p (:var i)) (:icon 0)))
     (:line 305 (:let (:apply z (:var i)) (:icon 0)))
     (:line 310 (:next i)) (:line 320 (:print)) (:line 330 (:print))
     (:line 333 (:rem " initialize cash assets:c 
"))
     (:line 335 (:let (:var c) (:icon 10000)))
     (:line 338 (:rem " print initial portfolio
"))
     (:line 340
      (:print (:scon "stock") :comma (:scon " ") :comma (:scon "initials")
       :comma (:scon "price/share")))
     (:line 350
      (:print (:scon "int. ballistic missiles") :comma (:scon "  ibm") :comma
       (:apply s (:icon 1))))
     (:line 352
      (:print (:scon "red cross of america") :comma (:scon "  rca") :comma
       (:apply s (:icon 2))))
     (:line 354
      (:print (:scon "lichtenstein, bumrap & joke") :comma (:scon "  lbj")
       :comma (:apply s (:icon 3))))
     (:line 356
      (:print (:scon "american bankrupt co.") :comma (:scon "  abc") :comma
       (:apply s (:icon 4))))
     (:line 358
      (:print (:scon "censured books store") :comma (:scon "  cbs") :comma
       (:apply s (:icon 5))))
     (:line 360 (:print))
     (:line 361 (:rem " nyse average:z5; temp. value:z4; net change:z6 
"))
     (:line 363 (:let (:var z4) (:var z5)))
     (:line 364 (:let (:var z5) (:icon 0)))
     (:line 365 (:let (:var t) (:icon 0)))
     (:line 370 (:for i (:icon 1) (:icon 5) nil))
     (:line 375
      (:let (:var z5)
       (:binary :plus (:var z5) (:apply s (:var i)))))
     (:line 380
      (:let (:var t)
       (:binary :plus (:var t)
        (:binary :mul (:apply s (:var i))
         (:apply p (:var i))))))
     (:line 390 (:next i))
     (:line 391
      (:let (:var z5)
       (:binary :div
        (:apply int
         (:binary :plus
          (:binary :mul (:icon 100) (:binary :div (:var z5) (:icon 5)))
          (:fcon 0.5)))
        (:icon 100))))
     (:line 392
      (:let (:var z6)
       (:binary :div
        (:apply int
         (:binary :plus
          (:binary :mul (:binary :minus (:var z5) (:var z4))
           (:icon 100))
          (:fcon 0.5)))
        (:icon 100))))
     (:line 393 (:rem " total assets:d 
"))
     (:line 394 (:let (:var d) (:binary :plus (:var t) (:var c))))
     (:line 395 (:if (:binary :gt (:var x9) (:icon 0))) (:goto 398))
     (:line 396
      (:print (:scon "new york stock exchange average: ") (:var z5)))
     (:line 397 (:goto 399))
     (:line 398
      (:print (:scon "new york stock exchange average: ") (:var z5)
       (:scon "net change") (:var z6)))
     (:line 399 (:print))
     (:line 400
      (:let (:var t)
       (:binary :div
        (:apply int
         (:binary :plus (:binary :mul (:icon 100) (:var t)) (:fcon 0.5)))
        (:icon 100))))
     (:line 401
      (:print (:scon "total stock assets are   $") :semi (:var t)))
     (:line 403
      (:let (:var c)
       (:binary :div
        (:apply int
         (:binary :plus (:binary :mul (:icon 100) (:var c)) (:fcon 0.5)))
        (:icon 100))))
     (:line 405
      (:print (:scon "total cash assets are    $") :semi (:var c)))
     (:line 407
      (:let (:var d)
       (:binary :div
        (:apply int
         (:binary :plus (:binary :mul (:icon 100) (:var d)) (:fcon 0.5)))
        (:icon 100))))
     (:line 408
      (:print (:scon "total assets are         $") :semi (:var d)))
     (:line 410 (:print))
     (:line 411 (:if (:binary :eq (:var x9) (:icon 0))) (:goto 416))
     (:line 412
      (:print (:scon "do you wish to continue (yes-type 1, no-type 0)") :semi))
     (:line 413 (:input nil ((:var q9))))
     (:line 414 (:if (:binary :lt (:var q9) (:icon 1))) (:goto 998))
     (:line 416 (:rem " input transactions 
"))
     (:line 420 (:print (:scon "what is your transaction in")))
     (:line 430 (:print (:scon "ibm") :semi))
     (:line 440 (:input nil ((:apply z (:icon 1)))))
     (:line 450 (:print (:scon "rca") :semi))
     (:line 460 (:input nil ((:apply z (:icon 2)))))
     (:line 470 (:print (:scon "lbj") :semi))
     (:line 480 (:input nil ((:apply z (:icon 3)))))
     (:line 490 (:print (:scon "abc") :semi))
     (:line 500 (:input nil ((:apply z (:icon 4)))))
     (:line 510 (:print (:scon "cbs") :semi))
     (:line 520 (:input nil ((:apply z (:icon 5))))) (:line 525 (:print))
     (:line 530 (:rem " total day's purchases in $:p5
"))
     (:line 540 (:let (:var p5) (:icon 0)))
     (:line 550 (:rem " total day's sales in $:s5
"))
     (:line 560 (:let (:var s5) (:icon 0)))
     (:line 570 (:for i (:icon 1) (:icon 5) nil))
     (:line 575
      (:let (:apply z (:var i))
       (:apply int
        (:binary :plus (:apply z (:var i)) (:fcon 0.5)))))
     (:line 580 (:if (:binary :le (:apply z (:var i)) (:icon 0)))
      (:goto 610))
     (:line 590
      (:let (:var p5)
       (:binary :plus (:var p5)
        (:binary :mul (:apply z (:var i))
         (:apply s (:var i))))))
     (:line 600 (:goto 620))
     (:line 610
      (:let (:var s5)
       (:binary :minus (:var s5)
        (:binary :mul (:apply z (:var i))
         (:apply s (:var i))))))
     (:line 612
      (:if
       (:binary :le (:uminus (:apply z (:var i)))
        (:apply p (:var i))))
      (:goto 620))
     (:line 614 (:print (:scon "you have oversold a stock; try again.")))
     (:line 616 (:goto 420)) (:line 620 (:next i))
     (:line 622 (:rem " total value of transactions:t5 
"))
     (:line 625
      (:let (:var t5) (:binary :plus (:var p5) (:var s5))))
     (:line 630 (:rem " brokerage fee:b5 
"))
     (:line 640
      (:let (:var b5)
       (:binary :div
        (:apply int
         (:binary :plus
          (:binary :mul (:binary :mul (:fcon 0.01) (:var t5)) (:icon 100))
          (:fcon 0.5)))
        (:icon 100))))
     (:line 650 (:rem " cash assets=old cash assets-total purchases
"))
     (:line 652 (:rem " -brokerage fees+total sales:c5 
"))
     (:line 654
      (:let (:var c5)
       (:binary :plus
        (:binary :minus (:binary :minus (:var c) (:var p5))
         (:var b5))
        (:var s5))))
     (:line 656 (:if (:binary :ge (:var c5) (:icon 0))) (:goto 674))
     (:line 658
      (:print (:binary :minus (:scon "you have used $") (:var c5))
       (:scon " more than you have.")))
     (:line 660 (:goto 420)) (:line 674 (:let (:var c) (:var c5)))
     (:line 675 (:rem " calculate new portfolio  
"))
     (:line 680 (:for i (:icon 1) (:icon 5) nil))
     (:line 690
      (:let (:apply p (:var i))
       (:binary :plus (:apply p (:var i))
        (:apply z (:var i)))))
     (:line 700 (:next i))
     (:line 710 (:rem " calculate new stock values 
"))
     (:line 720 (:gosub 830)) (:line 750 (:rem " print portfolio
"))
     (:line 751 (:rem " bell ringing-different on many computers 
"))
     (:line 755 (:print))
     (:line 756
      (:print (:scon "**********     end of day's trading     **********")))
     (:line 757 (:print)) (:line 758 (:print))
     (:line 759 (:if (:binary :lt (:var x9) (:icon 1))) (:goto 769))
     (:line 769
      (:print (:scon "stock") :comma (:scon "price/share") :comma
       (:scon "holdings") :comma (:scon "value") :comma
       (:scon "net price change")))
     (:line 770
      (:print (:scon "ibm") :comma (:apply s (:icon 1)) :comma
       (:apply p (:icon 1)) :comma
       (:binary :mul (:apply s (:icon 1)) (:apply p (:icon 1))) :comma
       (:apply c (:icon 1))))
     (:line 771
      (:print (:scon "rca") :comma (:apply s (:icon 2)) :comma
       (:apply p (:icon 2)) :comma
       (:binary :mul (:apply s (:icon 2)) (:apply p (:icon 2))) :comma
       (:apply c (:icon 2))))
     (:line 772
      (:print (:scon "lbj") :comma (:apply s (:icon 3)) :comma
       (:apply p (:icon 3)) :comma
       (:binary :mul (:apply s (:icon 3)) (:apply p (:icon 3))) :comma
       (:apply c (:icon 3))))
     (:line 773
      (:print (:scon "abc") :comma (:apply s (:icon 4)) :comma
       (:apply p (:icon 4)) :comma
       (:binary :mul (:apply s (:icon 4)) (:apply p (:icon 4))) :comma
       (:apply c (:icon 4))))
     (:line 774
      (:print (:scon "cbs") :comma (:apply s (:icon 5)) :comma
       (:apply p (:icon 5)) :comma
       (:binary :mul (:apply s (:icon 5)) (:apply p (:icon 5))) :comma
       (:apply c (:icon 5))))
     (:line 775 (:let (:var x9) (:icon 1))) (:line 780 (:print))
     (:line 790 (:print)) (:line 810 (:goto 360))
     (:line 829 (:rem " new stock values - subroutine
"))
     (:line 830 (:rem " randomly produce new stock values based on previous
"))
     (:line 831 (:rem " day's values 
"))
     (:line 832 (:rem " n1,n2 are random numbers of days which respectively
"))
     (:line 833
      (:rem " determine when stock i1 will increase 10 pts. and stock
"))
     (:line 834 (:rem " i2 will decrease 10 pts. 
"))
     (:line 840
      (:rem " if n1 days have passed, pick an i1, set e1, determine new n1 
"))
     (:line 841 (:if (:binary :gt (:var n1) (:icon 0))) (:goto 850))
     (:line 845
      (:let (:var i1)
       (:apply int
        (:binary :plus
         (:binary :mul (:fcon 4.99) (:apply rnd (:var x)))
         (:icon 1)))))
     (:line 846
      (:let (:var n1)
       (:apply int
        (:binary :plus
         (:binary :mul (:fcon 4.99) (:apply rnd (:var x)))
         (:icon 1)))))
     (:line 847 (:let (:var e1) (:icon 1)))
     (:line 850
      (:rem " if n2 days have passed, pick an i2, set e2, determine new n2 
"))
     (:line 851 (:if (:binary :gt (:var n2) (:icon 0))) (:goto 860))
     (:line 855
      (:let (:var i2)
       (:apply int
        (:binary :plus
         (:binary :mul (:fcon 4.99) (:apply rnd (:var x)))
         (:icon 1)))))
     (:line 856
      (:let (:var n2)
       (:apply int
        (:binary :plus
         (:binary :mul (:fcon 4.99) (:apply rnd (:var x)))
         (:icon 1)))))
     (:line 857 (:let (:var e2) (:icon 1)))
     (:line 860 (:rem " deduct one day from n1 and n2
"))
     (:line 861 (:let (:var n1) (:binary :minus (:var n1) (:icon 1))))
     (:line 862 (:let (:var n2) (:binary :minus (:var n2) (:icon 1))))
     (:line 890 (:rem " loop through all stocks
"))
     (:line 900 (:for i (:icon 1) (:icon 5) nil))
     (:line 910 (:let (:var x1) (:apply rnd (:var x))))
     (:line 915 (:if (:binary :gt (:var x1) (:fcon 0.25))) (:goto 920))
     (:line 916 (:let (:var x1) (:fcon 0.25))) (:line 917 (:goto 935))
     (:line 920 (:if (:binary :gt (:var x1) (:fcon 0.5))) (:goto 925))
     (:line 921 (:let (:var x1) (:fcon 0.5))) (:line 922 (:goto 935))
     (:line 925 (:if (:binary :gt (:var x1) (:fcon 0.75))) (:goto 930))
     (:line 926 (:let (:var x1) (:fcon 0.75))) (:line 927 (:goto 935))
     (:line 930 (:let (:var x1) (:fcon 0.0)))
     (:line 931 (:rem " big change constant:w3  (set to zero initially)
"))
     (:line 935 (:let (:var w3) (:icon 0)))
     (:line 936 (:if (:binary :lt (:var e1) (:icon 1))) (:goto 945))
     (:line 937
      (:if
       (:binary :ne (:apply int (:binary :plus (:var i1) (:fcon 0.5)))
        (:apply int (:binary :plus (:var i) (:fcon 0.5)))))
      (:goto 945))
     (:line 938 (:rem " add 10 pts. to this stock;  reset e1 
"))
     (:line 939 (:let (:var w3) (:icon 10)))
     (:line 943 (:let (:var e1) (:icon 0)))
     (:line 945 (:if (:binary :lt (:var e2) (:icon 1))) (:goto 955))
     (:line 947
      (:if
       (:binary :ne (:apply int (:binary :plus (:var i2) (:fcon 0.5)))
        (:apply int (:binary :plus (:var i) (:fcon 0.5)))))
      (:goto 955))
     (:line 948 (:rem " subtract 10 pts. from this stock;  reset e2
"))
     (:line 949 (:let (:var w3) (:binary :minus (:var w3) (:icon 10))))
     (:line 953 (:let (:var e2) (:icon 0)))
     (:line 954 (:rem " c(i) is change in stock value
"))
     (:line 955
      (:let (:apply c (:var i))
       (:binary :plus
        (:binary :plus
         (:binary :plus
          (:apply int
           (:binary :mul (:var a) (:apply s (:var i))))
          (:var x1))
         (:apply int
          (:binary :plus
           (:binary :minus (:icon 3)
            (:binary :mul (:icon 6) (:apply rnd (:var x))))
           (:fcon 0.5))))
        (:var w3))))
     (:line 956
      (:let (:apply c (:var i))
       (:binary :div
        (:apply int
         (:binary :plus (:binary :mul (:icon 100) (:apply c (:var i)))
          (:fcon 0.5)))
        (:icon 100))))
     (:line 957
      (:let (:apply s (:var i))
       (:binary :plus (:apply s (:var i))
        (:apply c (:var i)))))
     (:line 960 (:if (:binary :gt (:apply s (:var i)) (:icon 0)))
      (:goto 967))
     (:line 964 (:let (:apply c (:var i)) (:icon 0)))
     (:line 965 (:let (:apply s (:var i)) (:icon 0)))
     (:line 966 (:goto 970))
     (:line 967
      (:let (:apply s (:var i))
       (:binary :div
        (:apply int
         (:binary :plus (:binary :mul (:icon 100) (:apply s (:var i)))
          (:fcon 0.5)))
        (:icon 100))))
     (:line 970 (:next i))
     (:line 972 (:rem " after t8 days randomly change trend sign and slope 
"))
     (:line 973 (:let (:var t8) (:binary :minus (:var t8) (:icon 1))))
     (:line 974 (:if (:binary :lt (:var t8) (:icon 1))) (:goto 985))
     (:line 980 (:return))
     (:line 985
      (:rem " randomly change trend sign and slope (a), and duration 
"))
     (:line 986 (:rem " of trend (t8)
"))
     (:line 990
      (:let (:var t8)
       (:apply int
        (:binary :plus
         (:binary :mul (:fcon 4.99) (:apply rnd (:var x)))
         (:icon 1)))))
     (:line 992
      (:let (:var a)
       (:binary :div
        (:apply int
         (:binary :plus
          (:binary :mul (:binary :div (:apply rnd (:var x)) (:icon 10))
           (:icon 100))
          (:fcon 0.5)))
        (:icon 100))))
     (:line 993 (:let (:var s4) (:apply rnd (:var x))))
     (:line 994 (:if (:binary :le (:var s4) (:fcon 0.5))) (:goto 997))
     (:line 995 (:let (:var a) (:uminus (:var a))))
     (:line 997 (:return)) (:line 998 (:print (:scon "hope you had fun!!")))
     (:line 999 (:end)))))



(defvar *superstartrekins*
  '(((:line 10 (:rem " instructions for \"super startrek\"  mar 5, 1978
"))
     (:line 20 (:for i (:icon 1) (:icon 12) nil) (:print) (:next i))
     (:line 21
      (:print (:apply tab (:icon 10)) :semi
       (:scon "*************************************")))
     (:line 22
      (:print (:apply tab (:icon 10)) :semi
       (:scon "*                                   *")))
     (:line 23
      (:print (:apply tab (:icon 10)) :semi
       (:scon "*                                   *")))
     (:line 30
      (:print (:apply tab (:icon 10)) :semi
       (:scon "*      * * super star trek * *      *")))
     (:line 31
      (:print (:apply tab (:icon 10)) :semi
       (:scon "*                                   *")))
     (:line 32
      (:print (:apply tab (:icon 10)) :semi
       (:scon "*                                   *")))
     (:line 35
      (:print (:apply tab (:icon 10)) :semi
       (:scon "*************************************")))
     (:line 36 (:for i (:icon 1) (:icon 8) nil) (:print) (:next i))
     (:line 40 (:input "do you need instructions (y/n)" ((:var k$)))
      (:if (:binary :eq (:var k$) (:scon "n"))) (:goto 2000))
     (:line 44 (:print))
     (:line 45
      (:rem " print \"turn the tty on-line and hit any key except return\"
"))
     (:line 46 (:rem " if inp(1)=13 then 46
"))
     (:line 50 (:rem " poke 1229,2:poke 1237,3:null 1
"))
     (:line 90 (:print (:scon "      instructions for 'super star trek'")))
     (:line 100 (:print))
     (:line 110
      (:print
       (:scon
        "1. when you see \\command ?\\ printed, enter one of the legal")))
     (:line 120
      (:print
       (:scon "     commands (nav,srs,lrs,pha,tor,she,dam,com, or xxx).")))
     (:line 130
      (:print
       (:scon
        "2. if you should type in an illegal command, you'll get a short")))
     (:line 140
      (:print (:scon "     list of the legal commands printed out.")))
     (:line 150
      (:print
       (:scon "3. some commands require you to enter data (for example, the")))
     (:line 160
      (:print
       (:scon
        "     'nav' command comes back with 'course (1-9) ?'.)  if you")))
     (:line 170
      (:print
       (:scon
        "     type in illegal data (like negative numbers), than command")))
     (:line 180 (:print (:scon "     will be aborted"))) (:line 190 (:print))
     (:line 270
      (:print
       (:scon "     the galaxy is divided into an 8 x 8 quadrant grid,")))
     (:line 280
      (:print
       (:scon
        "and each quadrant is further divided into an 8 x 8 sector grid.")))
     (:line 290 (:print))
     (:line 300
      (:print
       (:scon "     you will be assigned a starting point somewhere in the")))
     (:line 310
      (:print
       (:scon "galaxy to begin a tour of duty as comander of the starship")))
     (:line 320
      (:print
       (:scon
        "\\enterprise\\; your mission: to seek and destroy the fleet of")))
     (:line 330
      (:print
       (:scon "klingon warwhips which are menacing the united federation of")))
     (:line 340 (:print (:scon "planets."))) (:line 360 (:print))
     (:line 370
      (:print
       (:scon
        "     you have the following commands available to you as captain")))
     (:line 380 (:print (:scon "of the starship enterprise:")))
     (:line 385 (:print))
     (:line 390 (:print (:scon "\\nav\\ command = warp engine control --")))
     (:line 400
      (:print (:scon "     course is in a circular numerical      4  3  2")))
     (:line 410
      (:print (:scon "     vector arrangement as shown             . . .")))
     (:line 420
      (:print (:scon "     integer and real values may be           ...")))
     (:line 430
      (:print (:scon "     used.  (thus course 1.5 is half-     5 ---*--- 1")))
     (:line 440
      (:print (:scon "     way between 1 and 2                      ...")))
     (:line 450
      (:print (:scon "                                             . . .")))
     (:line 460
      (:print (:scon "     values may approach 9.0, which         6  7  8")))
     (:line 470 (:print (:scon "     itself is equivalent to 1.0")))
     (:line 480
      (:print (:scon "                                            course")))
     (:line 490 (:print (:scon "     one warp factor is the size of ")))
     (:line 500 (:print (:scon "     one quadtant.  therefore, to get")))
     (:line 510 (:print (:scon "     from quadrant 6,5 to 5,5, you would")))
     (:line 520 (:print (:scon "     use course 3, warp factor 1.")))
     (:line 530 (:print))
     (:line 540 (:print (:scon "\\srs\\ command = short range sensor scan")))
     (:line 550
      (:print (:scon "     shows you a scan of your present quadrant.")))
     (:line 555 (:print))
     (:line 560
      (:print (:scon "     symbology on your sensor screen is as follows:")))
     (:line 570 (:print (:scon "        <*> = your starship's position")))
     (:line 580 (:print (:scon "        +k+ = klingon battle cruiser")))
     (:line 590
      (:print
       (:scon
        "        >!< = federation starbase (refuel/repair/re-arm here!)")))
     (:line 600 (:print (:scon "         *  = star"))) (:line 605 (:print))
     (:line 610
      (:print
       (:scon "     a condensed 'status report' will also be presented.")))
     (:line 620 (:print))
     (:line 640 (:print (:scon "\\lrs\\ command = long range sensor scan")))
     (:line 650
      (:print
       (:scon "     shows conditions in space for one quadrant on each side")))
     (:line 660
      (:print
       (:scon "     of the enterprise (which is in the middle of the scan)")))
     (:line 670
      (:print
       (:scon
        "     the scan is coded in the form \\###\\, where th units digit")))
     (:line 680
      (:print
       (:scon "     is the number of stars, the tens digit is the number of")))
     (:line 690
      (:print
       (:scon "     starbases, and the hundresds digit is the number of")))
     (:line 700 (:print (:scon "     klingons."))) (:line 705 (:print))
     (:line 706
      (:print
       (:scon "     example - 207 = 2 klingons, no starbases, & 7 stars.")))
     (:line 710 (:print))
     (:line 720 (:print (:scon "\\pha\\ command = phaser control.")))
     (:line 730
      (:print
       (:scon "     allows you to destroy the klingon battle cruisers by ")))
     (:line 740
      (:print
       (:scon "     zapping them with suitably large units of energy to")))
     (:line 750
      (:print
       (:scon "     deplete their shield power.  (rember, klingons have")))
     (:line 760 (:print (:scon "     phasers too!)"))) (:line 770 (:print))
     (:line 780 (:print (:scon "\\tor\\ command = photon torpedo control")))
     (:line 790
      (:print
       (:scon
        "     torpedo course is the same as used in warp engine control")))
     (:line 800
      (:print
       (:scon "     if you hit the klingon vessel, he is destroyed and")))
     (:line 810
      (:print
       (:scon
        "     cannot fire back at you.  if you miss, you are subject to")))
     (:line 820
      (:print
       (:scon
        "     his phaser fire.  in either case, you are also subject to ")))
     (:line 825
      (:print
       (:scon "     the phaser fire of all other klingons in the quadrant.")))
     (:line 830 (:print))
     (:line 835
      (:print
       (:scon
        "     the library-computer (\\com\\ command) has an option to ")))
     (:line 840
      (:print (:scon "     compute torpedo trajectory for you (option 2)")))
     (:line 850 (:print))
     (:line 860 (:print (:scon "\\she\\ command = shield control")))
     (:line 870
      (:print
       (:scon
        "     defines the number of energy units to be assigned to the")))
     (:line 880
      (:print
       (:scon
        "     shields.  energy is taken from total ship's energy.  note")))
     (:line 890
      (:print
       (:scon
        "     than the status display total energy includes shield energy")))
     (:line 900 (:print))
     (:line 910 (:print (:scon "\\dam\\ command = dammage control report")))
     (:line 920
      (:print
       (:scon
        "     gives the state of repair of all devices.  where a negative")))
     (:line 930
      (:print
       (:scon "     'state of repair' shows that the device is temporarily")))
     (:line 940 (:print (:scon "     damaged."))) (:line 950 (:print))
     (:line 960 (:print (:scon "\\com\\ command = library-computer")))
     (:line 970
      (:print (:scon "     the library-computer contains six options:")))
     (:line 980 (:print (:scon "     option 0 = cumulative galactic record")))
     (:line 990
      (:print
       (:scon
        "        this option showes computer memory of the results of all")))
     (:line 1000
      (:print (:scon "        previous short and long range sensor scans")))
     (:line 1010 (:print (:scon "     option 1 = status report")))
     (:line 1020
      (:print
       (:scon "        this option shows the number of klingons, stardates,")))
     (:line 1030
      (:print (:scon "        and starbases remaining in the game.")))
     (:line 1040 (:print (:scon "     option 2 = photon torpedo data")))
     (:line 1050
      (:print
       (:scon
        "        which gives directions and distance from the enterprise")))
     (:line 1060 (:print (:scon "        to all klingons in your quadrant")))
     (:line 1070 (:print (:scon "     option 3 = starbase nav data")))
     (:line 1080
      (:print
       (:scon "        this option gives direction and distance to any ")))
     (:line 1090 (:print (:scon "        starbase within your quadrant")))
     (:line 1100
      (:print (:scon "     option 4 = direction/distance calculator")))
     (:line 1110
      (:print
       (:scon "        this option allows you to enter coordinates for")))
     (:line 1120 (:print (:scon "        direction/distance calculations")))
     (:line 1130 (:print (:scon "     option 5 = galactic /region name/ map")))
     (:line 1140
      (:print
       (:scon "        this option prints the names of the sixteen major ")))
     (:line 1150
      (:print (:scon "        galactic regions referred to in the game.")))
     (:line 1990 (:rem " poke 1229,0:poke 1237,1:null 0
"))
     (:line 2000 (:rem " print:print:print
"))
     (:line 2010
      (:rem
       " print \"turn cassette player on and hit any key except return\"
"))
     (:line 2020 (:rem " if inp(1)=13 then 2020
"))
     (:line 2030 (:rem " print
"))
     (:line 2040 (:rem " print \"turn cassette player off and \"
"))
     (:line 2050 (:rem " print \"type 'run' when computer prints 'ok'\"
")))))



(defvar *synonym*
  '(((:line 2 (:print (:apply tab (:icon 33)) :semi (:scon "synonym")))
     (:line 4
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 6 (:print) (:print) (:print))
     (:line 10
      (:dim
       ((:dimd r$ (:icon 5)) (:dimd w$ (:icon 10))
        (:dimd l (:icon 30)) (:dimd r (:icon 30)))))
     (:line 20 (:let (:apply r$ (:icon 1)) (:scon "right"))
      (:let (:apply r$ (:icon 2)) (:scon "correct"))
      (:let (:apply r$ (:icon 3)) (:scon "fine"))
      (:let (:apply r$ (:icon 4)) (:scon "good!")))
     (:line 30 (:let (:apply r$ (:icon 5)) (:scon "check")))
     (:line 70 (:let (:var c) (:icon 0)))
     (:line 90
      (:print (:scon "a synonym of a word means another word in the english")))
     (:line 100
      (:print (:scon "language which has the same or very nearly the same")
       :semi))
     (:line 110 (:print (:scon " meaning.")))
     (:line 130 (:print (:scon "i choose a word -- you type a synonym.")))
     (:line 140
      (:print (:scon "if you can't think of a synonym, type the word 'help'")))
     (:line 145 (:print (:scon "and i will tell you a synonym.")) (:print))
     (:line 150 :restore
      (:let (:var c) (:binary :plus (:var c) (:icon 1)))
      (:read (:var n)))
     (:line 160 (:if (:binary :gt (:var c) (:var n))) (:goto 420))
     (:line 170
      (:let (:var n1)
       (:apply int
        (:binary :plus (:binary :mul (:apply rnd (:icon 1)) (:var n))
         (:icon 1)))))
     (:line 174 (:if (:binary :eq (:apply r (:var n1)) (:icon 1)))
      (:goto 170))
     (:line 176 (:let (:apply r (:var n1)) (:icon 1)))
     (:line 180 (:for i (:icon 1) (:var n1) nil))
     (:line 190 (:read (:var n2)))
     (:line 200 (:for j (:icon 1) (:var n2) nil))
     (:line 210 (:read (:apply w$ (:var j)))) (:line 220 (:next j))
     (:line 230 (:next i))
     (:line 232 (:for j (:icon 1) (:var n2) nil)
      (:let (:apply l (:var j)) (:var j)) (:next j))
     (:line 235 (:let (:apply l (:icon 0)) (:var n2))
      (:let (:var g) (:icon 1)) (:print))
     (:line 237
      (:let (:apply l (:var g))
       (:apply l (:apply l (:icon 0))))
      (:let (:apply l (:icon 0)) (:binary :minus (:var n2) (:icon 1)))
      (:print))
     (:line 240
      (:print (:scon "     what is a synonym of ") :semi
       (:apply w$ (:var g)) :semi)
      (:input nil ((:var a$))))
     (:line 250 (:if (:binary :eq (:var a$) (:scon "help"))) (:goto 340))
     (:line 260 (:for k (:icon 1) (:var n2) nil))
     (:line 270 (:if (:binary :eq (:var g) (:var k))) (:goto 290))
     (:line 280 (:if (:binary :eq (:var a$) (:apply w$ (:var k))))
      (:goto 320))
     (:line 290 (:next k))
     (:line 300 (:print (:scon "     try again.")) (:goto 240))
     (:line 320
      (:print
       (:apply r$
        (:apply int
         (:binary :plus (:binary :mul (:apply rnd (:icon 1)) (:icon 5))
          (:icon 1)))))
      (:goto 150))
     (:line 340
      (:let (:var g1)
       (:apply int
        (:binary :plus
         (:binary :mul (:apply rnd (:icon 1)) (:apply l (:icon 0)))
         (:icon 1)))))
     (:line 360
      (:print (:scon "**** a synonym of ") :semi (:apply w$ (:var g))
       :semi (:scon " is ") :semi (:apply w$ (:apply l (:var g1)))
       :semi (:scon "."))
      (:print))
     (:line 370
      (:let (:apply l (:var g1))
       (:apply l (:apply l (:icon 0))))
      (:let (:apply l (:icon 0))
       (:binary :minus (:apply l (:icon 0)) (:icon 1)))
      (:goto 240))
     (:line 420 (:print) (:print (:scon "synonym drill completed."))
      (:goto 999))
     (:line 500 (:data (:icon 10)))
     (:line 510
      (:data (:icon 5) (:scon "first") (:scon "start") (:scon "beginning")
       (:scon "onset") (:scon "initial")))
     (:line 520
      (:data (:icon 5) (:scon "similar") (:scon "alike") (:scon "same")
       (:scon "like") (:scon "resembling")))
     (:line 530
      (:data (:icon 5) (:scon "model") (:scon "pattern") (:scon "prototype")
       (:scon "standard") (:scon "criterion")))
     (:line 540
      (:data (:icon 5) (:scon "small") (:scon "insignificant") (:scon "little")
       (:scon "tiny") (:scon "minute")))
     (:line 550
      (:data (:icon 6) (:scon "stop") (:scon "halt") (:scon "stay")
       (:scon "arrest") (:scon "check") (:scon "standstill")))
     (:line 560
      (:data (:icon 6) (:scon "house") (:scon "dwelling") (:scon "residence")
       (:scon "domicile") (:scon "lodging")))
     (:line 565 (:data (:scon "habitation")))
     (:line 570
      (:data (:icon 7) (:scon "pit") (:scon "hole") (:scon "hollow")
       (:scon "well") (:scon "gulf") (:scon "chasm") (:scon "abyss")))
     (:line 580
      (:data (:icon 7) (:scon "push") (:scon "shove") (:scon "thrust")
       (:scon "prod") (:scon "poke") (:scon "butt") (:scon "press")))
     (:line 590
      (:data (:icon 6) (:scon "red") (:scon "rouge") (:scon "scarlet")
       (:scon "crimson") (:scon "flame") (:scon "ruby")))
     (:line 600
      (:data (:icon 7) (:scon "pain") (:scon "suffering") (:scon "hurt")
       (:scon "misery") (:scon "distress") (:scon "ache")))
     (:line 605 (:data (:scon "discomfort"))) (:line 999 (:end)))))



(defvar *target*
  '(((:line 10 (:print (:apply tab (:icon 33)) :semi (:scon "target")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print))
     (:line 100 (:let (:var r) (:icon 1))
      (:let (:var r1) (:fcon 57.296)) (:let (:var p) (:fcon 3.14159)))
     (:line 110
      (:print
       (:scon "you are the weapons officer on the starship enterprise")))
     (:line 120
      (:print (:scon "and this is a test to see how accurate a shot you")))
     (:line 130
      (:print (:scon "are in a three-dimensional range.  you will be told")))
     (:line 140
      (:print (:scon "the radian offset for the x and z axes, the location")))
     (:line 150
      (:print
       (:scon "of the target in three dimensional rectangular coordinates,")))
     (:line 160
      (:print (:scon "the approximate number of degrees from the x and z")))
     (:line 170
      (:print (:scon "axes, and the approximate distance to the target.")))
     (:line 180
      (:print
       (:scon "you will then proceeed to shoot at the target until it is")))
     (:line 190 (:print (:scon "destroyed!")) (:print)
      (:print (:scon "good luck!!")) (:print) (:print))
     (:line 220
      (:let (:var a)
       (:binary :mul (:binary :mul (:apply rnd (:icon 1)) (:icon 2))
        (:var p)))
      (:let (:var b)
       (:binary :mul (:binary :mul (:apply rnd (:icon 1)) (:icon 2))
        (:var p)))
      (:let (:var q)
       (:apply int (:binary :mul (:var a) (:var r1))))
      (:let (:var w)
       (:apply int (:binary :mul (:var b) (:var r1)))))
     (:line 260
      (:print (:scon "radians from x axis =") :semi (:var a) :semi
       (:scon "   from z axis =") :semi (:var b)))
     (:line 280
      (:let (:var p1)
       (:binary :plus (:binary :mul (:icon 100000) (:apply rnd (:icon 1)))
        (:apply rnd (:icon 1))))
      (:let (:var x)
       (:binary :mul
        (:binary :mul (:apply sin (:var b))
         (:apply cos (:var a)))
        (:var p1)))
      (:let (:var y)
       (:binary :mul
        (:binary :mul (:apply sin (:var b))
         (:apply sin (:var a)))
        (:var p1))))
     (:line 290
      (:let (:var z)
       (:binary :mul (:apply cos (:var b)) (:var p1))))
     (:line 340
      (:print (:scon "target sighted: approximate coordinates:  x=") :semi
       (:var x) :semi (:scon "  y=") :semi (:var y) :semi
       (:scon "  z=") :semi (:var z)))
     (:line 345 (:let (:var r) (:binary :plus (:var r) (:icon 1)))
      (:if (:binary :gt (:var r) (:icon 5))) (:goto 390))
     (:line 350 (:on-goto (:var r) (355 360 365 370 375)))
     (:line 355
      (:let (:var p3)
       (:binary :mul
        (:apply int (:binary :mul (:var p1) (:fcon 0.049999997)))
        (:icon 20)))
      (:goto 390))
     (:line 360
      (:let (:var p3)
       (:binary :mul (:apply int (:binary :mul (:var p1) (:fcon 0.1)))
        (:icon 10)))
      (:goto 390))
     (:line 365
      (:let (:var p3)
       (:binary :mul (:apply int (:binary :mul (:var p1) (:fcon 0.5)))
        (:icon 2)))
      (:goto 390))
     (:line 370 (:let (:var p3) (:apply int (:var p1)))
      (:goto 390))
     (:line 375 (:let (:var p3) (:var p1)))
     (:line 390
      (:print (:scon "     estimated distance:") :semi (:var p3)))
     (:line 400 (:print)
      (:print
       (:scon "input angle deviation from x, deviation from z, distance")
       :semi))
     (:line 405 (:input nil ((:var a1) (:var b1) (:var p2))))
     (:line 410 (:print) (:if (:binary :lt (:var p2) (:icon 20)))
      (:print (:scon "you blew yourself up!!")) (:goto 580))
     (:line 420 (:let (:var a1) (:binary :div (:var a1) (:var r1)))
      (:let (:var b1) (:binary :div (:var b1) (:var r1)))
      (:print (:scon "radians from x axis =") :semi (:var a1) :semi
       (:scon "  ") :semi))
     (:line 425 (:print (:scon "from z axis =") :semi (:var b1)))
     (:line 480
      (:let (:var x1)
       (:binary :mul
        (:binary :mul (:var p2) (:apply sin (:var b1)))
        (:apply cos (:var a1))))
      (:let (:var y1)
       (:binary :mul
        (:binary :mul (:var p2) (:apply sin (:var b1)))
        (:apply sin (:var a1))))
      (:let (:var z1)
       (:binary :mul (:var p2) (:apply cos (:var b1)))))
     (:line 510
      (:let (:var d)
       (:exp
        (:binary :plus
         (:binary :plus
          (:exp (:binary :minus (:var x1) (:var x)) (:icon 2))
          (:exp (:binary :minus (:var y1) (:var y)) (:icon 2)))
         (:exp (:binary :minus (:var z1) (:var z)) (:icon 2)))
        (:binary :div (:icon 1) (:icon 2)))))
     (:line 520 (:if (:binary :gt (:var d) (:icon 20))) (:goto 670))
     (:line 530 (:print)
      (:print (:scon " * * * hit * * *   target is non-functional")) (:print))
     (:line 550
      (:print (:scon "distance of explosion from target was") :semi
       (:var d) :semi (:scon "kilometers.")))
     (:line 570 (:print)
      (:print (:scon "mission accomplished in ") :semi (:var r) :semi
       (:scon " shots.")))
     (:line 580 (:let (:var r) (:icon 0))
      (:for i (:icon 1) (:icon 5) nil) (:print) (:next i)
      (:print (:scon "next target...")) (:print))
     (:line 590 (:goto 220))
     (:line 670
      (:let (:var x2) (:binary :minus (:var x1) (:var x)))
      (:let (:var y2) (:binary :minus (:var y1) (:var y)))
      (:let (:var z2) (:binary :minus (:var z1) (:var z)))
      (:if (:binary :lt (:var x2) (:icon 0))) (:goto 730))
     (:line 710
      (:print (:scon "shot in front of target") :semi (:var x2) :semi
       (:scon "kilometers."))
      (:goto 740))
     (:line 730
      (:print (:scon "shot behind target") :semi (:uminus (:var x2)) :semi
       (:scon "kilometers.")))
     (:line 740 (:if (:binary :lt (:var y2) (:icon 0))) (:goto 770))
     (:line 750
      (:print (:scon "shot to left of target") :semi (:var y2) :semi
       (:scon "kilometers."))
      (:goto 780))
     (:line 770
      (:print (:scon "shot to right of target") :semi (:uminus (:var y2))
       :semi (:scon "kilometers.")))
     (:line 780 (:if (:binary :lt (:var z2) (:icon 0))) (:goto 810))
     (:line 790
      (:print (:scon "shot above target") :semi (:var z2) :semi
       (:scon "kilometers."))
      (:goto 820))
     (:line 810
      (:print (:scon "shot below target") :semi (:uminus (:var z2)) :semi
       (:scon "kilometers.")))
     (:line 820
      (:print (:scon "approx position of explosion:  x=") :semi (:var x1)
       :semi (:scon "   y=") :semi (:var y1) :semi (:scon "   z=") :semi
       (:var z1)))
     (:line 830
      (:print (:scon "     distance from target =") :semi (:var d))
      (:print) (:print) (:print) (:goto 345))
     (:line 999 (:end)))))



(defvar *test*
  '(((:line 100 (:print (:apply tab (:icon 33)) :semi (:scon "qubic"))
      (:print))
     (:line 110
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 120 (:print) (:print) (:print))
     (:line 210 (:print (:scon "do you want instructions") :semi))
     (:line 220 (:input nil ((:var c$))))
     (:line 230
      (:if
       (:binary :eq (:apply left$ (:var c$) (:icon 1)) (:scon "n")))
      (:goto 315))
     (:line 240
      (:if
       (:binary :eq (:apply left$ (:var c$) (:icon 1)) (:scon "y")))
      (:goto 265))
     (:line 250
      (:print (:scon "incorrect answer.  please type 'yes' or 'no'") :semi))
     (:line 260 (:goto 220)) (:line 265 (:print))
     (:line 270
      (:print (:scon "the game is tic-tac-toe in a 4 x 4 x 4 cube.")))
     (:line 280
      (:print (:scon "each move is indicated by a 3 digit number, with each")))
     (:line 290
      (:print
       (:scon "digit between 1 and 4 inclusive.  the digits indicate the")))
     (:line 300
      (:print (:scon "level, row, and column, respectively, of the occupied")))
     (:line 305 (:print (:scon "place.  "))) (:line 306 (:print))
     (:line 307
      (:print
       (:scon "to print the playing board, type 0 (zero) as your move.")))
     (:line 308
      (:print
       (:scon "the program will print the board with your moves indi-")))
     (:line 309
      (:print
       (:scon "cated with a (y), the machine's moves with an (m), and")))
     (:line 310
      (:print (:scon "unused squares with a ( ).  output is on paper.")))
     (:line 311 (:print))
     (:line 312
      (:print (:scon "to stop the program run, type 1 as your move.")))
     (:line 313 (:print) (:print))
     (:line 315
      (:dim
       ((:dimd x (:icon 64)) (:dimd l (:icon 76))
        (:dimd2 m (:icon 76) (:icon 4)) (:dimd y (:icon 16)))))
     (:line 320 (:for i (:icon 1) (:icon 16) nil))
     (:line 330 (:read (:apply y (:var i)))) (:line 340 (:next i))
     (:line 350 (:for i (:icon 1) (:icon 76) nil))
     (:line 360 (:for j (:icon 1) (:icon 4) nil))
     (:line 370 (:read (:apply m (:var i) (:var j))))
     (:line 380 (:next j)) (:line 390 (:next i))
     (:line 400 (:for i (:icon 1) (:icon 64) nil))
     (:line 410 (:let (:apply x (:var i)) (:icon 0)))
     (:line 420 (:next i)) (:line 430 (:let (:var z) (:icon 1)))
     (:line 440 (:print (:scon "do you want to move first") :semi))
     (:line 450 (:input nil ((:var s$))))
     (:line 460
      (:if
       (:binary :eq (:apply left$ (:var s$) (:icon 1)) (:scon "n")))
      (:goto 630))
     (:line 470
      (:if
       (:binary :eq (:apply left$ (:var s$) (:icon 1)) (:scon "y")))
      (:goto 500))
     (:line 480
      (:print (:scon "incorrect answer.  please type 'yes' or 'no'.") :semi))
     (:line 490 (:goto 450)) (:line 500 (:print (:scon " ")))
     (:line 510 (:print (:scon "your move") :semi))
     (:line 520 (:input nil ((:var j1))))
     (:line 521 (:if (:binary :eq (:var j1) (:icon 1))) (:goto 2770))
     (:line 522 (:if (:binary :ne (:var j1) (:icon 0))) (:goto 525))
     (:line 523 (:gosub 2550)) (:line 524 (:goto 500))
     (:line 525 (:if (:binary :lt (:var j1) (:icon 111))) (:goto 2750))
     (:line 526 (:if (:binary :gt (:var j1) (:icon 444))) (:goto 2750))
     (:line 530 (:gosub 2500))
     (:line 540
      (:let (:var k1)
       (:apply int (:binary :div (:var j1) (:icon 100)))))
     (:line 550
      (:let (:var j2)
       (:binary :minus (:var j1)
        (:binary :mul (:var k1) (:icon 100)))))
     (:line 560
      (:let (:var k2)
       (:apply int (:binary :div (:var j2) (:icon 10)))))
     (:line 570
      (:let (:var k3)
       (:binary :minus
        (:binary :minus (:var j1) (:binary :mul (:var k1) (:icon 100)))
        (:binary :mul (:var k2) (:icon 10)))))
     (:line 580
      (:let (:var m)
       (:binary :minus
        (:binary :plus
         (:binary :plus (:binary :mul (:icon 16) (:var k1))
          (:binary :mul (:icon 4) (:var k2)))
         (:var k3))
        (:icon 20))))
     (:line 590 (:if (:binary :eq (:apply x (:var m)) (:icon 0)))
      (:goto 620))
     (:line 600 (:print (:scon "that square is used, try again.")))
     (:line 610 (:goto 500))
     (:line 620 (:let (:apply x (:var m)) (:icon 1)))
     (:line 630 (:gosub 1640)) (:line 640 (:let (:var j) (:icon 1)))
     (:line 650 (:let (:var i) (:icon 1)))
     (:line 660 (:if (:binary :eq (:var j) (:icon 1))) (:goto 720))
     (:line 670 (:if (:binary :eq (:var j) (:icon 2))) (:goto 790))
     (:line 680 (:if (:binary :eq (:var j) (:icon 3))) (:goto 930))
     (:line 690 (:let (:var i) (:binary :plus (:var i) (:icon 1)))
      (:if (:binary :le (:var i) (:icon 76))) (:goto 660))
     (:line 700 (:let (:var j) (:binary :plus (:var j) (:icon 1)))
      (:if (:binary :le (:var j) (:icon 3))) (:goto 650))
     (:line 710 (:goto 1300))
     (:line 720 (:if (:binary :ne (:apply l (:var i)) (:icon 4)))
      (:goto 690))
     (:line 730 (:print (:scon "you win as follows") :semi))
     (:line 740 (:for j (:icon 1) (:icon 4) nil))
     (:line 750 (:let (:var m) (:apply m (:var i) (:var j))))
     (:line 760 (:gosub 1570)) (:line 770 (:next j))
     (:line 780 (:goto 1490))
     (:line 790 (:if (:binary :ne (:apply l (:var i)) (:icon 15)))
      (:goto 690))
     (:line 800 (:for j (:icon 1) (:icon 4) nil))
     (:line 810 (:let (:var m) (:apply m (:var i) (:var j))))
     (:line 820 (:if (:binary :ne (:apply x (:var m)) (:icon 0)))
      (:goto 860))
     (:line 830 (:let (:apply x (:var m)) (:icon 5)))
     (:line 840 (:print (:scon "machine moves to") :semi))
     (:line 850 (:gosub 1570)) (:line 860 (:next j))
     (:line 870 (:print (:scon ", and wins as follows")))
     (:line 880 (:for j (:icon 1) (:icon 4) nil))
     (:line 890 (:let (:var m) (:apply m (:var i) (:var j))))
     (:line 900 (:gosub 1570)) (:line 910 (:next j))
     (:line 920 (:goto 1490))
     (:line 930 (:if (:binary :ne (:apply l (:var i)) (:icon 3)))
      (:goto 690))
     (:line 940 (:print (:scon "nice try. machine moves to") :semi))
     (:line 950 (:for j (:icon 1) (:icon 4) nil))
     (:line 960 (:let (:var m) (:apply m (:var i) (:var j))))
     (:line 970 (:if (:binary :ne (:apply x (:var m)) (:icon 0)))
      (:goto 1010))
     (:line 980 (:let (:apply x (:var m)) (:icon 5)))
     (:line 990 (:gosub 1570)) (:line 1000 (:goto 500))
     (:line 1010 (:next j)) (:line 1020 (:goto 1300))
     (:line 1030 (:let (:var i) (:icon 1)))
     (:line 1040
      (:let (:apply l (:var i))
       (:binary :plus
        (:binary :plus
         (:binary :plus (:apply x (:apply m (:var i) (:icon 1)))
          (:apply x (:apply m (:var i) (:icon 2))))
         (:apply x (:apply m (:var i) (:icon 3))))
        (:apply x (:apply m (:var i) (:icon 4))))))
     (:line 1050 (:let (:var l) (:apply l (:var i))))
     (:line 1060 (:if (:binary :lt (:var l) (:icon 2))) (:goto 1130))
     (:line 1070 (:if (:binary :ge (:var l) (:icon 3))) (:goto 1130))
     (:line 1080 (:if (:binary :gt (:var l) (:icon 2))) (:goto 2230))
     (:line 1090 (:for j (:icon 1) (:icon 4) nil))
     (:line 1100
      (:if
       (:binary :ne (:apply x (:apply m (:var i) (:var j)))
        (:icon 0)))
      (:goto 1120))
     (:line 1110
      (:let (:apply x (:apply m (:var i) (:var j)))
       (:binary :div (:icon 1) (:icon 8))))
     (:line 1120 (:next j))
     (:line 1130 (:let (:var i) (:binary :plus (:var i) (:icon 1)))
      (:if (:binary :le (:var i) (:icon 76))) (:goto 1040))
     (:line 1140 (:gosub 1640)) (:line 1150 (:let (:var i) (:icon 1)))
     (:line 1160
      (:if
       (:binary :eq (:apply l (:var i))
        (:binary :div (:icon 1) (:icon 2))))
      (:goto 2360))
     (:line 1170
      (:if
       (:binary :eq (:apply l (:var i))
        (:binary :plus (:icon 1) (:binary :div (:icon 3) (:icon 8)))))
      (:goto 2360))
     (:line 1180 (:let (:var i) (:binary :plus (:var i) (:icon 1)))
      (:if (:binary :le (:var i) (:icon 76))) (:goto 1160))
     (:line 1190 (:goto 1830)) (:line 1200 (:let (:var z) (:icon 1)))
     (:line 1210
      (:if (:binary :eq (:apply x (:apply y (:var z))) (:icon 0)))
      (:goto 1250))
     (:line 1220 (:let (:var z) (:binary :plus (:var z) (:icon 1))))
     (:line 1230 (:if (:binary :ne (:var z) (:icon 17))) (:goto 1210))
     (:line 1240 (:goto 1720))
     (:line 1250 (:let (:var m) (:apply y (:var z))))
     (:line 1260 (:let (:apply x (:var m)) (:icon 5)))
     (:line 1270 (:print (:scon "machine moves to") :semi))
     (:line 1280 (:gosub 1570)) (:line 1290 (:goto 500))
     (:line 1300 (:let (:var x) (:var x)))
     (:line 1310 (:let (:var i) (:icon 1)))
     (:line 1320
      (:let (:apply l (:var i))
       (:binary :plus
        (:binary :plus
         (:binary :plus (:apply x (:apply m (:var i) (:icon 1)))
          (:apply x (:apply m (:var i) (:icon 2))))
         (:apply x (:apply m (:var i) (:icon 3))))
        (:apply x (:apply m (:var i) (:icon 4))))))
     (:line 1330 (:let (:var l) (:apply l (:var i))))
     (:line 1340 (:if (:binary :lt (:var l) (:icon 10))) (:goto 1410))
     (:line 1350 (:if (:binary :ge (:var l) (:icon 11))) (:goto 1410))
     (:line 1360 (:if (:binary :gt (:var l) (:icon 10))) (:goto 2230))
     (:line 1370 (:for j (:icon 1) (:icon 4) nil))
     (:line 1380
      (:if
       (:binary :ne (:apply x (:apply m (:var i) (:var j)))
        (:icon 0)))
      (:goto 1400))
     (:line 1390
      (:let (:apply x (:apply m (:var i) (:var j)))
       (:binary :div (:icon 1) (:icon 8))))
     (:line 1400 (:next j))
     (:line 1410 (:let (:var i) (:binary :plus (:var i) (:icon 1)))
      (:if (:binary :le (:var i) (:icon 76))) (:goto 1320))
     (:line 1420 (:gosub 1640)) (:line 1430 (:let (:var i) (:icon 1)))
     (:line 1440 (:if (:binary :eq (:apply l (:var i)) (:fcon 0.5)))
      (:goto 2360))
     (:line 1450
      (:if
       (:binary :eq (:apply l (:var i))
        (:binary :plus (:icon 5) (:binary :div (:icon 3) (:icon 8)))))
      (:goto 2360))
     (:line 1460 (:let (:var i) (:binary :plus (:var i) (:icon 1)))
      (:if (:binary :le (:var i) (:icon 76))) (:goto 1440))
     (:line 1470 (:gosub 2500)) (:line 1480 (:goto 1030))
     (:line 1490 (:print (:scon " ")))
     (:line 1500 (:print (:scon "do you want to try another game") :semi))
     (:line 1510 (:input nil ((:var x$))))
     (:line 1520
      (:if
       (:binary :eq (:apply left$ (:var x$) (:icon 1)) (:scon "y")))
      (:goto 400))
     (:line 1530
      (:if
       (:binary :eq (:apply left$ (:var x$) (:icon 1)) (:scon "n")))
      (:goto 1560))
     (:line 1540
      (:print (:scon "incorrect answer. please type 'yes' or 'no'") :semi))
     (:line 1550 (:goto 1510)) (:line 1560 (:stop) (:run (:scon "menu")))
     (:line 1570
      (:let (:var k1)
       (:binary :plus
        (:apply int
         (:binary :div (:binary :minus (:var m) (:icon 1)) (:icon 16)))
        (:icon 1))))
     (:line 1580
      (:let (:var j2)
       (:binary :minus (:var m)
        (:binary :mul (:icon 16) (:binary :minus (:var k1) (:icon 1))))))
     (:line 1590
      (:let (:var k2)
       (:binary :plus
        (:apply int
         (:binary :div (:binary :minus (:var j2) (:icon 1)) (:icon 4)))
        (:icon 1))))
     (:line 1600
      (:let (:var k3)
       (:binary :minus
        (:binary :minus (:var m)
         (:binary :mul (:binary :minus (:var k1) (:icon 1)) (:icon 16)))
        (:binary :mul (:binary :minus (:var k2) (:icon 1)) (:icon 4)))))
     (:line 1610
      (:let (:var m)
       (:binary :plus
        (:binary :plus (:binary :mul (:var k1) (:icon 100))
         (:binary :mul (:var k2) (:icon 10)))
        (:var k3))))
     (:line 1620 (:print (:var m) :semi)) (:line 1630 (:return))
     (:line 1640 (:for s (:icon 1) (:icon 76) nil))
     (:line 1650 (:let (:var j1) (:apply m (:var s) (:icon 1))))
     (:line 1660 (:let (:var j2) (:apply m (:var s) (:icon 2))))
     (:line 1670 (:let (:var j3) (:apply m (:var s) (:icon 3))))
     (:line 1680 (:let (:var j4) (:apply m (:var s) (:icon 4))))
     (:line 1690
      (:let (:apply l (:var s))
       (:binary :plus
        (:binary :plus
         (:binary :plus (:apply x (:var j1))
          (:apply x (:var j2)))
         (:apply x (:var j3)))
        (:apply x (:var j4)))))
     (:line 1700 (:next s)) (:line 1710 (:return))
     (:line 1720 (:for i (:icon 1) (:icon 64) nil))
     (:line 1730 (:if (:binary :ne (:apply x (:var i)) (:icon 0)))
      (:goto 1800))
     (:line 1740 (:let (:apply x (:var i)) (:icon 5)))
     (:line 1750 (:let (:var m) (:var i)))
     (:line 1760 (:print (:scon "machine likes") :semi))
     (:line 1770 (:gosub 1570)) (:line 1780 (:print (:scon " ")))
     (:line 1790 (:goto 500)) (:line 1800 (:next i))
     (:line 1810 (:print (:scon "the game is a draw.")))
     (:line 1820 (:goto 1490))
     (:line 1830 (:for k (:icon 1) (:icon 18) nil))
     (:line 1840 (:let (:var p) (:icon 0)))
     (:line 1850
      (:for i
       (:binary :minus (:binary :mul (:icon 4) (:var k)) (:icon 3))
       (:binary :mul (:icon 4) (:var k)) nil))
     (:line 1860 (:for j (:icon 1) (:icon 4) nil))
     (:line 1870
      (:let (:var p)
       (:binary :plus (:var p)
        (:apply x (:apply m (:var i) (:var j))))))
     (:line 1880 (:next j)) (:line 1890 (:next i))
     (:line 1900 (:if (:binary :lt (:var p) (:icon 4))) (:goto 1940))
     (:line 1910 (:if (:binary :lt (:var p) (:icon 5))) (:goto 1970))
     (:line 1920 (:if (:binary :lt (:var p) (:icon 9))) (:goto 1940))
     (:line 1930 (:if (:binary :lt (:var p) (:icon 10))) (:goto 1970))
     (:line 1940 (:next k)) (:line 1950 (:gosub 2500))
     (:line 1960 (:goto 1200))
     (:line 1970 (:let (:var s) (:binary :div (:icon 1) (:icon 8))))
     (:line 1980
      (:for i
       (:binary :minus (:binary :mul (:icon 4) (:var k)) (:icon 3))
       (:binary :mul (:icon 4) (:var k)) nil))
     (:line 1990 (:goto 2370)) (:line 2000 (:next i))
     (:line 2010 (:let (:var s) (:icon 0))) (:line 2020 (:goto 1980))
     (:line 2030
      (:data (:icon 1) (:icon 49) (:icon 52) (:icon 4) (:icon 13) (:icon 61)
       (:icon 64) (:icon 16) (:icon 22) (:icon 39) (:icon 23) (:icon 38)
       (:icon 26) (:icon 42) (:icon 27) (:icon 43)))
     (:line 2040
      (:data (:icon 1) (:icon 2) (:icon 3) (:icon 4) (:icon 5) (:icon 6)
       (:icon 7) (:icon 8) (:icon 9) (:icon 10) (:icon 11) (:icon 12)
       (:icon 13) (:icon 14) (:icon 15) (:icon 16) (:icon 17) (:icon 18)
       (:icon 19) (:icon 20)))
     (:line 2050
      (:data (:icon 21) (:icon 22) (:icon 23) (:icon 24) (:icon 25) (:icon 26)
       (:icon 27) (:icon 28) (:icon 29) (:icon 30) (:icon 31) (:icon 32)
       (:icon 33) (:icon 34) (:icon 35) (:icon 36) (:icon 37) (:icon 38)))
     (:line 2060
      (:data (:icon 39) (:icon 40) (:icon 41) (:icon 42) (:icon 43) (:icon 44)
       (:icon 45) (:icon 46) (:icon 47) (:icon 48) (:icon 49) (:icon 50)
       (:icon 51) (:icon 52) (:icon 53) (:icon 54) (:icon 55) (:icon 56)))
     (:line 2070
      (:data (:icon 57) (:icon 58) (:icon 59) (:icon 60) (:icon 61) (:icon 62)
       (:icon 63) (:icon 64)))
     (:line 2080
      (:data (:icon 1) (:icon 17) (:icon 33) (:icon 49) (:icon 5) (:icon 21)
       (:icon 37) (:icon 53) (:icon 9) (:icon 25) (:icon 41) (:icon 57)
       (:icon 13) (:icon 29) (:icon 45) (:icon 61)))
     (:line 2090
      (:data (:icon 2) (:icon 18) (:icon 34) (:icon 50) (:icon 6) (:icon 22)
       (:icon 38) (:icon 54) (:icon 10) (:icon 26) (:icon 42) (:icon 58)
       (:icon 14) (:icon 30) (:icon 46) (:icon 62)))
     (:line 2100
      (:data (:icon 3) (:icon 19) (:icon 35) (:icon 51) (:icon 7) (:icon 23)
       (:icon 39) (:icon 55) (:icon 11) (:icon 27) (:icon 43) (:icon 59)
       (:icon 15) (:icon 31) (:icon 47) (:icon 63)))
     (:line 2110
      (:data (:icon 4) (:icon 20) (:icon 36) (:icon 52) (:icon 8) (:icon 24)
       (:icon 40) (:icon 56) (:icon 12) (:icon 28) (:icon 44) (:icon 60)
       (:icon 16) (:icon 32) (:icon 48) (:icon 64)))
     (:line 2120
      (:data (:icon 1) (:icon 5) (:icon 9) (:icon 13) (:icon 17) (:icon 21)
       (:icon 25) (:icon 29) (:icon 33) (:icon 37) (:icon 41) (:icon 45)
       (:icon 49) (:icon 53) (:icon 57) (:icon 61)))
     (:line 2130
      (:data (:icon 2) (:icon 6) (:icon 10) (:icon 14) (:icon 18) (:icon 22)
       (:icon 26) (:icon 30) (:icon 34) (:icon 38) (:icon 42) (:icon 46)
       (:icon 50) (:icon 54) (:icon 58) (:icon 62)))
     (:line 2140
      (:data (:icon 3) (:icon 7) (:icon 11) (:icon 15) (:icon 19) (:icon 23)
       (:icon 27) (:icon 31) (:icon 35) (:icon 39) (:icon 43) (:icon 47)
       (:icon 51) (:icon 55) (:icon 59) (:icon 63)))
     (:line 2150
      (:data (:icon 4) (:icon 8) (:icon 12) (:icon 16) (:icon 20) (:icon 24)
       (:icon 28) (:icon 32) (:icon 36) (:icon 40) (:icon 44) (:icon 48)
       (:icon 52) (:icon 56) (:icon 60) (:icon 64)))
     (:line 2160
      (:data (:icon 1) (:icon 6) (:icon 11) (:icon 16) (:icon 17) (:icon 22)
       (:icon 27) (:icon 32) (:icon 33) (:icon 38) (:icon 43) (:icon 48)
       (:icon 49) (:icon 54) (:icon 59) (:icon 64)))
     (:line 2170
      (:data (:icon 13) (:icon 10) (:icon 7) (:icon 4) (:icon 29) (:icon 26)
       (:icon 23) (:icon 20) (:icon 45) (:icon 42) (:icon 39) (:icon 36)
       (:icon 61) (:icon 58) (:icon 55) (:icon 52)))
     (:line 2180
      (:data (:icon 1) (:icon 21) (:icon 41) (:icon 61) (:icon 2) (:icon 22)
       (:icon 42) (:icon 62) (:icon 3) (:icon 23) (:icon 43) (:icon 63)
       (:icon 4) (:icon 24) (:icon 44) (:icon 64)))
     (:line 2190
      (:data (:icon 49) (:icon 37) (:icon 25) (:icon 13) (:icon 50) (:icon 38)
       (:icon 26) (:icon 14) (:icon 51) (:icon 39) (:icon 27) (:icon 15)
       (:icon 52) (:icon 40) (:icon 28) (:icon 16)))
     (:line 2200
      (:data (:icon 1) (:icon 18) (:icon 35) (:icon 52) (:icon 5) (:icon 22)
       (:icon 39) (:icon 56) (:icon 9) (:icon 26) (:icon 43) (:icon 60)
       (:icon 13) (:icon 30) (:icon 47) (:icon 64)))
     (:line 2210
      (:data (:icon 49) (:icon 34) (:icon 19) (:icon 4) (:icon 53) (:icon 38)
       (:icon 23) (:icon 8) (:icon 57) (:icon 42) (:icon 27) (:icon 12)
       (:icon 61) (:icon 46) (:icon 31) (:icon 16)))
     (:line 2220
      (:data (:icon 1) (:icon 22) (:icon 43) (:icon 64) (:icon 16) (:icon 27)
       (:icon 38) (:icon 49) (:icon 4) (:icon 23) (:icon 42) (:icon 61)
       (:icon 13) (:icon 26) (:icon 39) (:icon 52)))
     (:line 2230 (:for j (:icon 1) (:icon 4) nil))
     (:line 2240
      (:if
       (:binary :ne (:apply x (:apply m (:var i) (:var j)))
        (:binary :div (:icon 1) (:icon 8))))
      (:goto 2330))
     (:line 2250
      (:let (:apply x (:apply m (:var i) (:var j))) (:icon 5)))
     (:line 2260 (:if (:binary :lt (:apply l (:var i)) (:icon 5)))
      (:goto 2290))
     (:line 2270
      (:print (:scon "let's see you get out of this:  machine moves to")
       :semi))
     (:line 2280 (:goto 2300))
     (:line 2290
      (:print (:scon "you fox.  just in the nick of time, machine moves to")
       :semi))
     (:line 2300 (:let (:var m) (:apply m (:var i) (:var j))))
     (:line 2310 (:gosub 1570)) (:line 2320 (:goto 500))
     (:line 2330 (:next j))
     (:line 2340 (:print (:scon "machine concedes this game.")))
     (:line 2350 (:goto 1490))
     (:line 2360 (:let (:var s) (:binary :div (:icon 1) (:icon 8))))
     (:line 2370
      (:if
       (:binary :gt
        (:binary :minus (:var i)
         (:binary :mul (:apply int (:binary :div (:var i) (:icon 4)))
          (:icon 4)))
        (:icon 1)))
      (:goto 2400))
     (:line 2380 (:let (:var a) (:icon 1))) (:line 2390 (:goto 2410))
     (:line 2400 (:let (:var a) (:icon 2)))
     (:line 2410
      (:for j (:var a) (:binary :minus (:icon 5) (:var a))
       (:binary :minus (:icon 5) (:binary :mul (:icon 2) (:var a)))))
     (:line 2420
      (:if
       (:binary :eq (:apply x (:apply m (:var i) (:var j)))
        (:var s)))
      (:goto 2450))
     (:line 2430 (:next j)) (:line 2440 (:goto 2000))
     (:line 2450
      (:let (:apply x (:apply m (:var i) (:var j))) (:icon 5)))
     (:line 2460 (:let (:var m) (:apply m (:var i) (:var j))))
     (:line 2470 (:print (:scon "machine takes") :semi))
     (:line 2480 (:gosub 1570)) (:line 2490 (:goto 500))
     (:line 2500 (:for i (:icon 1) (:icon 64) nil))
     (:line 2510
      (:if
       (:binary :ne (:apply x (:var i))
        (:binary :div (:icon 1) (:icon 8))))
      (:goto 2530))
     (:line 2520 (:let (:apply x (:var i)) (:icon 0)))
     (:line 2530 (:next i)) (:line 2540 (:return))
     (:line 2550 (:for xx (:icon 1) (:icon 9) nil) (:print) (:next)
      (:for i (:icon 1) (:icon 4) nil))
     (:line 2560 (:for j (:icon 1) (:icon 4) nil))
     (:line 2562 (:for i1 (:icon 1) (:var j) nil))
     (:line 2564 (:print (:scon "   ") :semi)) (:line 2566 (:next i1))
     (:line 2570 (:for k (:icon 1) (:icon 4) nil))
     (:line 2600
      (:let (:var q)
       (:binary :minus
        (:binary :plus
         (:binary :plus (:binary :mul (:icon 16) (:var i))
          (:binary :mul (:icon 4) (:var j)))
         (:var k))
        (:icon 20))))
     (:line 2610 (:if (:binary :ne (:apply x (:var q)) (:var o)))
      (:goto 2630))
     (:line 2620 (:print (:scon "( )      ") :semi))
     (:line 2630 (:if (:binary :ne (:apply x (:var q)) (:icon 5)))
      (:goto 2650))
     (:line 2640 (:print (:scon "(m)      ") :semi))
     (:line 2650 (:if (:binary :ne (:apply x (:var q)) (:icon 1)))
      (:goto 2660))
     (:line 2655 (:print (:scon "(y)      ") :semi))
     (:line 2660
      (:if
       (:binary :ne (:apply x (:var q))
        (:binary :div (:icon 1) (:icon 8))))
      (:goto 2670))
     (:line 2665 (:print (:scon "( )      ") :semi)) (:line 2670 (:next k))
     (:line 2680 (:print)) (:line 2690 (:print)) (:line 2700 (:next j))
     (:line 2710 (:print)) (:line 2720 (:print)) (:line 2730 (:next i))
     (:line 2735 (:rem " print chr$(12)
")) (:line 2740 (:return))
     (:line 2750 (:print (:scon "incorrect move, retype it--") :semi))
     (:line 2760 (:goto 520)) (:line 2770 (:end)))))



(defvar *tictactoe1*
  '(((:line 10
      (:print (:apply tab (:icon 30)) :semi (:scon "tic tac toe")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print)) (:line 50 (:rem "
"))
     (:line 100 (:rem "   this program plays tic tac toe
"))
     (:line 110 (:rem "   the machine goes first
"))
     (:line 120 (:print (:scon "the game board is numbered:")) (:print))
     (:line 130 (:print (:scon "1  2  3")) (:print (:scon "8  9  4"))
      (:print (:scon "7  6  5")))
     (:line 140 (:print)) (:line 150 (:rem "
")) (:line 160 (:rem "
"))
     (:line 170 (:rem "
"))
     (:line 180
      (:def fnm x
       (:binary :minus (:var x)
        (:binary :mul (:icon 8)
         (:apply int
          (:binary :div (:binary :minus (:var x) (:icon 1)) (:icon 8)))))))
     (:line 190 (:rem "
")) (:line 200 (:rem "  main program
"))
     (:line 210 (:print)) (:line 220 (:print))
     (:line 230 (:let (:var a) (:icon 9)))
     (:line 240 (:let (:var m) (:var a))) (:line 250 (:gosub 650))
     (:line 260 (:let (:var p) (:var m)))
     (:line 270
      (:let (:var b)
       (:apply fnm (:binary :plus (:var p) (:icon 1)))))
     (:line 280 (:let (:var m) (:var b))) (:line 290 (:gosub 650))
     (:line 300 (:let (:var q) (:var m)))
     (:line 310
      (:if
       (:binary :eq (:var q)
        (:apply fnm (:binary :plus (:var b) (:icon 4)))))
      (:goto 360))
     (:line 320
      (:let (:var c)
       (:apply fnm (:binary :plus (:var b) (:icon 4)))))
     (:line 330 (:let (:var m) (:var c))) (:line 340 (:gosub 700))
     (:line 350 (:goto 730))
     (:line 360
      (:let (:var c)
       (:apply fnm (:binary :plus (:var b) (:icon 2)))))
     (:line 370 (:let (:var m) (:var c))) (:line 380 (:gosub 650))
     (:line 390 (:let (:var r) (:var m)))
     (:line 400
      (:if
       (:binary :eq (:var r)
        (:apply fnm (:binary :plus (:var c) (:icon 4)))))
      (:goto 450))
     (:line 410
      (:let (:var d)
       (:apply fnm (:binary :plus (:var c) (:icon 4)))))
     (:line 420 (:let (:var m) (:var d))) (:line 430 (:gosub 700))
     (:line 440 (:goto 730))
     (:line 450
      (:if
       (:binary :ne (:binary :div (:var p) (:icon 2))
        (:apply int (:binary :div (:var p) (:icon 2)))))
      (:goto 500))
     (:line 460
      (:let (:var d)
       (:apply fnm (:binary :plus (:var c) (:icon 7)))))
     (:line 470 (:let (:var m) (:var d))) (:line 480 (:gosub 700))
     (:line 490 (:goto 730))
     (:line 500
      (:let (:var d)
       (:apply fnm (:binary :plus (:var c) (:icon 3)))))
     (:line 510 (:let (:var m) (:var d))) (:line 520 (:gosub 650))
     (:line 530 (:let (:var s) (:var m)))
     (:line 540
      (:if
       (:binary :eq (:var s)
        (:apply fnm (:binary :plus (:var d) (:icon 4)))))
      (:goto 590))
     (:line 550
      (:let (:var e)
       (:apply fnm (:binary :plus (:var d) (:icon 4)))))
     (:line 560 (:let (:var m) (:var e))) (:line 570 (:gosub 700))
     (:line 580 (:rem "
"))
     (:line 590
      (:let (:var e)
       (:apply fnm (:binary :plus (:var d) (:icon 6)))))
     (:line 600 (:let (:var m) (:var e))) (:line 610 (:gosub 700))
     (:line 620 (:print (:scon "the game is a draw."))) (:line 630 (:goto 210))
     (:line 640 (:rem "
")) (:line 650 (:gosub 700))
     (:line 660 (:print (:scon "your move") :semi))
     (:line 670 (:input nil ((:var m)))) (:line 680 (:return))
     (:line 700 (:print (:scon "computer moves") :semi (:var m)))
     (:line 710 (:return)) (:line 720 (:rem "
"))
     (:line 730 (:print (:scon "and wins ********"))) (:line 740 (:goto 210))
     (:line 750 (:end)))))



(defvar *tictactoe2*
  '(((:line 2 (:print (:apply tab (:icon 30)) :semi (:scon "tic-tac-toe")))
     (:line 4
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 6 (:print) (:print) (:print))
     (:line 8 (:print (:scon "the board is numbered:")))
     (:line 10 (:print (:scon " 1  2  3")))
     (:line 12 (:print (:scon " 4  5  6")))
     (:line 14 (:print (:scon " 7  8  9")))
     (:line 16 (:print) (:print) (:print))
     (:line 20 (:dim ((:dimd s (:icon 9)))))
     (:line 50 (:input "do you want 'x' or 'o'" ((:var c$))))
     (:line 55 (:if (:binary :eq (:var c$) (:scon "x"))) (:goto 475))
     (:line 60 (:let (:var p$) (:scon "o"))
      (:let (:var q$) (:scon "x")))
     (:line 100 (:let (:var g) (:uminus (:icon 1)))
      (:let (:var h) (:icon 1))
      (:if (:binary :ne (:apply s (:icon 5)) (:icon 0))) (:goto 103))
     (:line 102 (:let (:apply s (:icon 5)) (:uminus (:icon 1)))
      (:goto 195))
     (:line 103 (:if (:binary :ne (:apply s (:icon 5)) (:icon 1)))
      (:goto 106))
     (:line 104 (:if (:binary :ne (:apply s (:icon 1)) (:icon 0)))
      (:goto 110))
     (:line 105 (:let (:apply s (:icon 1)) (:uminus (:icon 1)))
      (:goto 195))
     (:line 106
      (:if
       (:lazy-binary :and (:binary :eq (:apply s (:icon 2)) (:icon 1))
        (:binary :eq (:apply s (:icon 1)) (:icon 0))))
      (:goto 181))
     (:line 107
      (:if
       (:lazy-binary :and (:binary :eq (:apply s (:icon 4)) (:icon 1))
        (:binary :eq (:apply s (:icon 1)) (:icon 0))))
      (:goto 181))
     (:line 108
      (:if
       (:lazy-binary :and (:binary :eq (:apply s (:icon 6)) (:icon 1))
        (:binary :eq (:apply s (:icon 9)) (:icon 0))))
      (:goto 189))
     (:line 109
      (:if
       (:lazy-binary :and (:binary :eq (:apply s (:icon 8)) (:icon 1))
        (:binary :eq (:apply s (:icon 9)) (:icon 0))))
      (:goto 189))
     (:line 110 (:if (:binary :eq (:var g) (:icon 1))) (:goto 112))
     (:line 111 (:goto 118))
     (:line 112
      (:let (:var j)
       (:binary :plus
        (:binary :mul (:icon 3)
         (:apply int
          (:binary :div (:binary :minus (:var m) (:icon 1)) (:icon 3))))
        (:icon 1))))
     (:line 113
      (:if
       (:binary :eq
        (:binary :plus
         (:binary :mul (:icon 3)
          (:apply int
           (:binary :div (:binary :minus (:var m) (:icon 1)) (:icon 3))))
         (:icon 1))
        (:var m)))
      (:let (:var k) (:icon 1)))
     (:line 114
      (:if
       (:binary :eq
        (:binary :plus
         (:binary :mul (:icon 3)
          (:apply int
           (:binary :div (:binary :minus (:var m) (:icon 1)) (:icon 3))))
         (:icon 2))
        (:var m)))
      (:let (:var k) (:icon 2)))
     (:line 115
      (:if
       (:binary :eq
        (:binary :plus
         (:binary :mul (:icon 3)
          (:apply int
           (:binary :div (:binary :minus (:var m) (:icon 1)) (:icon 3))))
         (:icon 3))
        (:var m)))
      (:let (:var k) (:icon 3)))
     (:line 116 (:goto 120))
     (:line 118 (:for j (:icon 1) (:icon 7) (:icon 3))
      (:for k (:icon 1) (:icon 3) nil))
     (:line 120 (:if (:binary :ne (:apply s (:var j)) (:var g)))
      (:goto 130))
     (:line 122
      (:if
       (:binary :ne (:apply s (:binary :plus (:var j) (:icon 2)))
        (:var g)))
      (:goto 135))
     (:line 126
      (:if
       (:binary :ne (:apply s (:binary :plus (:var j) (:icon 1)))
        (:icon 0)))
      (:goto 150))
     (:line 128
      (:let (:apply s (:binary :plus (:var j) (:icon 1)))
       (:uminus (:icon 1)))
      (:goto 195))
     (:line 130 (:if (:binary :eq (:apply s (:var j)) (:var h)))
      (:goto 150))
     (:line 131
      (:if
       (:binary :ne (:apply s (:binary :plus (:var j) (:icon 2)))
        (:var g)))
      (:goto 150))
     (:line 132
      (:if
       (:binary :ne (:apply s (:binary :plus (:var j) (:icon 1)))
        (:var g)))
      (:goto 150))
     (:line 133 (:let (:apply s (:var j)) (:uminus (:icon 1)))
      (:goto 195))
     (:line 135
      (:if
       (:binary :ne (:apply s (:binary :plus (:var j) (:icon 2)))
        (:icon 0)))
      (:goto 150))
     (:line 136
      (:if
       (:binary :ne (:apply s (:binary :plus (:var j) (:icon 1)))
        (:var g)))
      (:goto 150))
     (:line 138
      (:let (:apply s (:binary :plus (:var j) (:icon 2)))
       (:uminus (:icon 1)))
      (:goto 195))
     (:line 150 (:if (:binary :ne (:apply s (:var k)) (:var g)))
      (:goto 160))
     (:line 152
      (:if
       (:binary :ne (:apply s (:binary :plus (:var k) (:icon 6)))
        (:var g)))
      (:goto 165))
     (:line 156
      (:if
       (:binary :ne (:apply s (:binary :plus (:var k) (:icon 3)))
        (:icon 0)))
      (:goto 170))
     (:line 158
      (:let (:apply s (:binary :plus (:var k) (:icon 3)))
       (:uminus (:icon 1)))
      (:goto 195))
     (:line 160 (:if (:binary :eq (:apply s (:var k)) (:var h)))
      (:goto 170))
     (:line 161
      (:if
       (:binary :ne (:apply s (:binary :plus (:var k) (:icon 6)))
        (:var g)))
      (:goto 170))
     (:line 162
      (:if
       (:binary :ne (:apply s (:binary :plus (:var k) (:icon 3)))
        (:var g)))
      (:goto 170))
     (:line 163 (:let (:apply s (:var k)) (:uminus (:icon 1)))
      (:goto 195))
     (:line 165
      (:if
       (:binary :ne (:apply s (:binary :plus (:var k) (:icon 6)))
        (:icon 0)))
      (:goto 170))
     (:line 166
      (:if
       (:binary :ne (:apply s (:binary :plus (:var k) (:icon 3)))
        (:var g)))
      (:goto 170))
     (:line 168
      (:let (:apply s (:binary :plus (:var k) (:icon 6)))
       (:uminus (:icon 1)))
      (:goto 195))
     (:line 170 (:goto 450))
     (:line 171
      (:if
       (:lazy-binary :and (:binary :eq (:apply s (:icon 3)) (:var g))
        (:binary :eq (:apply s (:icon 7)) (:icon 0))))
      (:goto 187))
     (:line 172
      (:if
       (:lazy-binary :and (:binary :eq (:apply s (:icon 9)) (:var g))
        (:binary :eq (:apply s (:icon 1)) (:icon 0))))
      (:goto 181))
     (:line 173
      (:if
       (:lazy-binary :and (:binary :eq (:apply s (:icon 7)) (:var g))
        (:binary :eq (:apply s (:icon 3)) (:icon 0))))
      (:goto 183))
     (:line 174
      (:if
       (:lazy-binary :and (:binary :eq (:apply s (:icon 9)) (:icon 0))
        (:binary :eq (:apply s (:icon 1)) (:var g))))
      (:goto 189))
     (:line 175 (:if (:binary :eq (:var g) (:uminus (:icon 1))))
      (:let (:var g) (:icon 1)) (:let (:var h) (:uminus (:icon 1)))
      (:goto 110))
     (:line 176
      (:if
       (:lazy-binary :and (:binary :eq (:apply s (:icon 9)) (:icon 1))
        (:binary :eq (:apply s (:icon 3)) (:icon 0))))
      (:goto 182))
     (:line 177 (:for i (:icon 2) (:icon 9) nil)
      (:if (:binary :ne (:apply s (:var i)) (:icon 0))) (:goto 179))
     (:line 178 (:let (:apply s (:var i)) (:uminus (:icon 1)))
      (:goto 195))
     (:line 179 (:next i))
     (:line 181 (:let (:apply s (:icon 1)) (:uminus (:icon 1)))
      (:goto 195))
     (:line 182 (:if (:binary :eq (:apply s (:icon 1)) (:icon 1)))
      (:goto 177))
     (:line 183 (:let (:apply s (:icon 3)) (:uminus (:icon 1)))
      (:goto 195))
     (:line 187 (:let (:apply s (:icon 7)) (:uminus (:icon 1)))
      (:goto 195))
     (:line 189 (:let (:apply s (:icon 9)) (:uminus (:icon 1))))
     (:line 195 (:print) (:print (:scon "the computer moves to...")))
     (:line 202 (:gosub 1000)) (:line 205 (:goto 500))
     (:line 450 (:if (:binary :eq (:var g) (:icon 1))) (:goto 465))
     (:line 455
      (:if
       (:lazy-binary :and (:binary :eq (:var j) (:icon 7))
        (:binary :eq (:var k) (:icon 3))))
      (:goto 465))
     (:line 460 (:next k j))
     (:line 465 (:if (:binary :eq (:apply s (:icon 5)) (:var g)))
      (:goto 171))
     (:line 467 (:goto 175))
     (:line 475 (:let (:var p$) (:scon "x"))
      (:let (:var q$) (:scon "o")))
     (:line 500 (:print) (:input "where do you move" ((:var m))))
     (:line 502 (:if (:binary :eq (:var m) (:icon 0)))
      (:print (:scon "thanks for the game.")) (:goto 2000))
     (:line 503 (:if (:binary :gt (:var m) (:icon 9))) (:goto 506))
     (:line 505 (:if (:binary :eq (:apply s (:var m)) (:icon 0)))
      (:goto 510))
     (:line 506 (:print (:scon "that square is occupied.")) (:print) (:print)
      (:goto 500))
     (:line 510 (:let (:var g) (:icon 1))
      (:let (:apply s (:var m)) (:icon 1)))
     (:line 520 (:gosub 1000)) (:line 530 (:goto 100))
     (:line 1000 (:print) (:for i (:icon 1) (:icon 9) nil)
      (:print (:scon " ") :semi)
      (:if (:binary :ne (:apply s (:var i)) (:uminus (:icon 1))))
      (:goto 1014))
     (:line 1012 (:print (:var q$) (:scon " ") :semi) (:goto 1020))
     (:line 1014 (:if (:binary :ne (:apply s (:var i)) (:icon 0)))
      (:goto 1018))
     (:line 1016 (:print (:scon "  ") :semi) (:goto 1020))
     (:line 1018 (:print (:var p$) (:scon " ") :semi))
     (:line 1020
      (:if
       (:lazy-binary :and (:binary :ne (:var i) (:icon 3))
        (:binary :ne (:var i) (:icon 6))))
      (:goto 1050))
     (:line 1030 (:print) (:print (:scon "---+---+---")))
     (:line 1040 (:goto 1080))
     (:line 1050 (:if (:binary :eq (:var i) (:icon 9))) (:goto 1080))
     (:line 1060 (:print (:scon "!") :semi))
     (:line 1080 (:next i) (:print) (:print) (:print))
     (:line 1095 (:for i (:icon 1) (:icon 7) (:icon 3)))
     (:line 1100
      (:if
       (:binary :ne (:apply s (:var i))
        (:apply s (:binary :plus (:var i) (:icon 1)))))
      (:goto 1115))
     (:line 1105
      (:if
       (:binary :ne (:apply s (:var i))
        (:apply s (:binary :plus (:var i) (:icon 2)))))
      (:goto 1115))
     (:line 1110
      (:if (:binary :eq (:apply s (:var i)) (:uminus (:icon 1))))
      (:goto 1350))
     (:line 1112 (:if (:binary :eq (:apply s (:var i)) (:icon 1)))
      (:goto 1200))
     (:line 1115 (:next i) (:for i (:icon 1) (:icon 3) nil)
      (:if
       (:binary :ne (:apply s (:var i))
        (:apply s (:binary :plus (:var i) (:icon 3)))))
      (:goto 1150))
     (:line 1130
      (:if
       (:binary :ne (:apply s (:var i))
        (:apply s (:binary :plus (:var i) (:icon 6)))))
      (:goto 1150))
     (:line 1135
      (:if (:binary :eq (:apply s (:var i)) (:uminus (:icon 1))))
      (:goto 1350))
     (:line 1137 (:if (:binary :eq (:apply s (:var i)) (:icon 1)))
      (:goto 1200))
     (:line 1150 (:next i) (:for i (:icon 1) (:icon 9) nil)
      (:if (:binary :eq (:apply s (:var i)) (:icon 0))) (:goto 1155))
     (:line 1152 (:next i) (:goto 1400))
     (:line 1155 (:if (:binary :ne (:apply s (:icon 5)) (:var g)))
      (:goto 1170))
     (:line 1160
      (:if
       (:lazy-binary :and (:binary :eq (:apply s (:icon 1)) (:var g))
        (:binary :eq (:apply s (:icon 9)) (:var g))))
      (:goto 1180))
     (:line 1165
      (:if
       (:lazy-binary :and (:binary :eq (:apply s (:icon 3)) (:var g))
        (:binary :eq (:apply s (:icon 7)) (:var g))))
      (:goto 1180))
     (:line 1170 (:return))
     (:line 1180 (:if (:binary :eq (:var g) (:uminus (:icon 1))))
      (:goto 1350))
     (:line 1200 (:print (:scon "you beat me!! good game.")) (:goto 2000))
     (:line 1350 (:print (:scon "i win, turkey!!!")) (:goto 2000))
     (:line 1400 (:print (:scon "it's a draw. thank you.")))
     (:line 2000 (:end)))))



(defvar *tower*
  '(((:line 10 (:print (:apply tab (:icon 33)) :semi (:scon "towers")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print)) (:line 90 (:print))
     (:line 100 (:rem "*** initialize
"))
     (:line 110 (:dim ((:dimd2 t (:icon 7) (:icon 3)))))
     (:line 120 (:let (:var e) (:icon 0)))
     (:line 130 (:for d (:icon 1) (:icon 7) nil))
     (:line 140 (:for n (:icon 1) (:icon 3) nil))
     (:line 150 (:let (:apply t (:var d) (:var n)) (:icon 0)))
     (:line 160 (:next n)) (:line 170 (:next d))
     (:line 180 (:print (:scon "towers of hanoi puzzle.")) (:print))
     (:line 200
      (:print
       (:scon "you must transfer the disks from the left to the right")))
     (:line 205
      (:print
       (:scon "tower, one at a time, never putting a larger disk on a")))
     (:line 210 (:print (:scon "smaller disk.")) (:print))
     (:line 215
      (:input "how many disks do you want to move (7 is max)" ((:var s))))
     (:line 220 (:print)) (:line 230 (:let (:var m) (:icon 0)))
     (:line 240 (:for q (:icon 1) (:icon 7) nil))
     (:line 250 (:if (:binary :eq (:var q) (:var s))) (:goto 350))
     (:line 260 (:next q))
     (:line 270 (:let (:var e) (:binary :plus (:var e) (:icon 1))))
     (:line 280 (:if (:binary :gt (:var e) (:icon 2))) (:goto 310))
     (:line 290 (:print (:scon "sorry, but i can't do that job for you."))
      (:goto 215))
     (:line 310
      (:print
       (:scon "all right, wise guy, if you can't play the game right, i'll")))
     (:line 320 (:print (:scon "just take my puzzle and go home.  so long."))
      (:stop))
     (:line 340 (:rem " *** store disks from smallest to largest
"))
     (:line 350
      (:print
       (:scon "in this program, we shall refer to disks by numerical code.")))
     (:line 355
      (:print (:scon "3 will represent the smallest disk, 5 the next size,")))
     (:line 360
      (:print
       (:scon "7 the next, and so on, up to 15.  if you do the puzzle with")))
     (:line 365
      (:print
       (:scon "2 disks, their code names would be 13 and 15.  with 3 disks")))
     (:line 370
      (:print
       (:scon "the code names would be 11, 13 and 15, etc.  the needles")))
     (:line 375
      (:print (:scon "are numbered from left to right, 1 to 3.  we will")))
     (:line 380
      (:print
       (:scon "start with the disks on needle 1, and attempt to move them")))
     (:line 385 (:print (:scon "to needle 3.")))
     (:line 390 (:print) (:print (:scon "good luck!")) (:print))
     (:line 400 (:let (:var y) (:icon 7)) (:let (:var d) (:icon 15)))
     (:line 420 (:for x (:var s) (:icon 1) (:uminus (:icon 1))))
     (:line 430 (:let (:apply t (:var y) (:icon 1)) (:var d))
      (:let (:var d) (:binary :minus (:var d) (:icon 2)))
      (:let (:var y) (:binary :minus (:var y) (:icon 1))))
     (:line 460 (:next x)) (:line 470 (:gosub 1230))
     (:line 480 (:print (:scon "which disk would you like to move") :semi)
      (:let (:var e) (:icon 0)))
     (:line 500 (:input nil ((:var d))))
     (:line 510
      (:if
       (:binary :eq
        (:binary :mul
         (:binary :mul
          (:binary :mul
           (:binary :mul
            (:binary :mul
             (:binary :mul (:binary :minus (:var d) (:icon 3))
              (:binary :minus (:var d) (:icon 5)))
             (:binary :minus (:var d) (:icon 7)))
            (:binary :minus (:var d) (:icon 9)))
           (:binary :minus (:var d) (:icon 11)))
          (:binary :minus (:var d) (:icon 13)))
         (:binary :minus (:var d) (:icon 15)))
        (:icon 0)))
      (:goto 580))
     (:line 520
      (:print
       (:scon "illegal entry... you may only type 3,5,7,9,11,13, or 15.")))
     (:line 530 (:let (:var e) (:binary :plus (:var e) (:icon 1)))
      (:if (:binary :gt (:var e) (:icon 1))) (:goto 560))
     (:line 550 (:goto 500))
     (:line 560
      (:print (:scon "stop wasting my time.  go bother someone else."))
      (:stop))
     (:line 580 (:rem " *** check if requested disk is below another
"))
     (:line 590 (:for r (:icon 1) (:icon 7) nil))
     (:line 600 (:for c (:icon 1) (:icon 3) nil))
     (:line 610
      (:if (:binary :eq (:apply t (:var r) (:var c)) (:var d)))
      (:goto 640))
     (:line 620 (:next c) (:next r))
     (:line 640 (:for q (:var r) (:icon 1) (:uminus (:icon 1))))
     (:line 645
      (:if (:binary :eq (:apply t (:var q) (:var c)) (:icon 0)))
      (:goto 660))
     (:line 650
      (:if (:binary :lt (:apply t (:var q) (:var c)) (:var d)))
      (:goto 680))
     (:line 660 (:next q)) (:line 670 (:goto 700))
     (:line 680
      (:print (:scon "that disk is below another one.  make another choice.")))
     (:line 690 (:goto 480)) (:line 700 (:let (:var e) (:icon 0)))
     (:line 705 (:input "place disk on which needle" ((:var n))))
     (:line 730
      (:if
       (:binary :eq
        (:binary :mul
         (:binary :mul (:binary :minus (:var n) (:icon 1))
          (:binary :minus (:var n) (:icon 2)))
         (:binary :minus (:var n) (:icon 3)))
        (:icon 0)))
      (:goto 800))
     (:line 735 (:let (:var e) (:binary :plus (:var e) (:icon 1))))
     (:line 740 (:if (:binary :gt (:var e) (:icon 1))) (:goto 780))
     (:line 750
      (:print
       (:scon "i'll assume you hit the wrong key this time.  but watch it,")))
     (:line 760 (:print (:scon "i only allow one mistake.")) (:goto 705))
     (:line 780
      (:print (:scon "i tried to warn you, but you wouldn't listen.")))
     (:line 790 (:print (:scon "bye bye, big shot.")) (:stop))
     (:line 800 (:for r (:icon 1) (:icon 7) nil))
     (:line 810
      (:if (:binary :ne (:apply t (:var r) (:var n)) (:icon 0)))
      (:goto 840))
     (:line 820 (:next r)) (:line 830 (:goto 880))
     (:line 835 (:rem " *** check if disk to be placed on a larger one
"))
     (:line 840
      (:if (:binary :lt (:var d) (:apply t (:var r) (:var n))))
      (:goto 880))
     (:line 850
      (:print
       (:scon "you can't place a larger disk on top of a smaller one,")))
     (:line 860 (:print (:scon "it might crush it!"))
      (:print (:scon "now then, ") :semi) (:goto 480))
     (:line 875 (:rem " *** move relocated disk
"))
     (:line 880 (:for v (:icon 1) (:icon 7) nil)
      (:for w (:icon 1) (:icon 3) nil))
     (:line 900
      (:if (:binary :eq (:apply t (:var v) (:var w)) (:var d)))
      (:goto 930))
     (:line 910 (:next w) (:next v))
     (:line 925 (:rem " *** locate empty space on needle n
"))
     (:line 930 (:for u (:icon 1) (:icon 7) nil))
     (:line 940
      (:if (:binary :ne (:apply t (:var u) (:var n)) (:icon 0)))
      (:goto 970))
     (:line 950 (:next u))
     (:line 960 (:let (:var u) (:icon 7)) (:goto 980))
     (:line 965 (:rem " *** move disk and set old location to 0
"))
     (:line 970 (:let (:var u) (:binary :minus (:var u) (:icon 1))))
     (:line 980
      (:let (:apply t (:var u) (:var n))
       (:apply t (:var v) (:var w)))
      (:let (:apply t (:var v) (:var w)) (:icon 0)))
     (:line 995 (:rem " *** print out current status
"))
     (:line 1000 (:gosub 1230)) (:line 1018 (:rem " *** check if done
"))
     (:line 1020 (:let (:var m) (:binary :plus (:var m) (:icon 1))))
     (:line 1030 (:for r (:icon 1) (:icon 7) nil)
      (:for c (:icon 1) (:icon 2) nil))
     (:line 1050
      (:if (:binary :ne (:apply t (:var r) (:var c)) (:icon 0)))
      (:goto 1090))
     (:line 1060 (:next c) (:next r)) (:line 1080 (:goto 1120))
     (:line 1090 (:if (:binary :le (:var m) (:icon 128))) (:goto 480))
     (:line 1100
      (:print
       (:scon "sorry, but i have orders to stop if you make more than")))
     (:line 1110 (:print (:scon "128 moves.")) (:stop))
     (:line 1120
      (:if
       (:binary :ne (:var m)
        (:binary :minus (:exp (:icon 2) (:var s)) (:icon 1))))
      (:goto 1140))
     (:line 1130 (:print) (:print (:scon "congratulations!!")) (:print))
     (:line 1140
      (:print (:scon "you have performed the task in") :semi (:var m) :semi
       (:scon "moves.")))
     (:line 1150 (:print) (:print (:scon "try again (yes or no)") :semi)
      (:input nil ((:var a$))))
     (:line 1160 (:if (:binary :eq (:var a$) (:scon "no"))) (:goto 1390))
     (:line 1170 (:if (:binary :eq (:var a$) (:scon "yes"))) (:goto 90))
     (:line 1180 (:print) (:print (:scon "'yes' or 'no' please") :semi)
      (:input nil ((:var a$))) (:goto 1160))
     (:line 1230 (:rem " *** print subroutine
"))
     (:line 1240 (:for k (:icon 1) (:icon 7) nil))
     (:line 1250 (:let (:var z) (:icon 10)))
     (:line 1260 (:for j (:icon 1) (:icon 3) nil))
     (:line 1270
      (:if (:binary :eq (:apply t (:var k) (:var j)) (:icon 0)))
      (:goto 1330))
     (:line 1280
      (:print
       (:apply tab
        (:binary :minus (:var z)
         (:apply int
          (:binary :div (:apply t (:var k) (:var j)) (:icon 2)))))
       :semi))
     (:line 1290
      (:for v (:icon 1) (:apply t (:var k) (:var j)) nil))
     (:line 1300 (:print (:scon "*") :semi)) (:line 1310 (:next v))
     (:line 1320 (:goto 1340))
     (:line 1330
      (:print (:apply tab (:var z)) :semi (:scon "*") :semi))
     (:line 1340 (:let (:var z) (:binary :plus (:var z) (:icon 21))))
     (:line 1350 (:next j)) (:line 1360 (:print))
     (:line 1370 (:next k)) (:line 1380 (:return))
     (:line 1390 (:print) (:print (:scon "thanks for the game!")) (:print)
      (:end)))))



(defvar *train*
  '(((:line 1 (:print (:apply tab (:icon 33)) :semi (:scon "train")))
     (:line 2
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 3 (:print) (:print) (:print))
     (:line 4 (:print (:scon "time - speed distance exercise")) (:print))
     (:line 10
      (:let (:var c)
       (:binary :plus
        (:apply int (:binary :mul (:icon 25) (:apply rnd (:icon 1))))
        (:icon 40))))
     (:line 15
      (:let (:var d)
       (:binary :plus
        (:apply int (:binary :mul (:icon 15) (:apply rnd (:icon 1))))
        (:icon 5))))
     (:line 20
      (:let (:var t)
       (:binary :plus
        (:apply int (:binary :mul (:icon 19) (:apply rnd (:icon 1))))
        (:icon 20))))
     (:line 25
      (:print (:scon " a car traveling") :semi (:var c) :semi
       (:scon "mph can make a certain trip in")))
     (:line 30
      (:print (:var d) :semi (:scon "hours less than a train traveling at")
       :semi (:var t) :semi (:scon "mph.")))
     (:line 35 (:print (:scon "how long does the trip take by car") :semi))
     (:line 40 (:input nil ((:var a))))
     (:line 45
      (:let (:var v)
       (:binary :div (:binary :mul (:var d) (:var t))
        (:binary :minus (:var c) (:var t)))))
     (:line 50
      (:let (:var e)
       (:apply int
        (:binary :plus
         (:apply abs
          (:binary :div
           (:binary :mul (:binary :minus (:var v) (:var a))
            (:icon 100))
           (:var a)))
         (:fcon 0.5)))))
     (:line 55 (:if (:binary :gt (:var e) (:icon 5))) (:goto 70))
     (:line 60
      (:print (:scon "good! answer within") :semi (:var e) :semi
       (:scon "percent.")))
     (:line 65 (:goto 80))
     (:line 70
      (:print (:scon "sorry.  you were off by") :semi (:var e) :semi
       (:scon "percent.")))
     (:line 80
      (:print (:scon "correct answer is") :semi (:var v) :semi
       (:scon "hours.")))
     (:line 90 (:print))
     (:line 95 (:print (:scon "another problem (yes or no)") :semi))
     (:line 100 (:input nil ((:var a$)))) (:line 105 (:print))
     (:line 110 (:if (:binary :eq (:var a$) (:scon "yes"))) (:goto 10))
     (:line 999 (:end)))))



(defvar *trap*
  '(((:line 1 (:print (:apply tab (:icon 34)) :semi (:scon "trap")))
     (:line 2
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 3 (:print) (:print) (:print))
     (:line 10 (:let (:var g) (:icon 6)))
     (:line 20 (:let (:var n) (:icon 100))) (:line 30 (:rem "-trap
"))
     (:line 40 (:rem "-steve ullman, 8-1-72
"))
     (:line 50 (:print (:scon "instructions") :semi))
     (:line 60 (:input nil ((:var z$))))
     (:line 70
      (:if
       (:binary :ne (:apply left$ (:var z$) (:icon 1)) (:scon "y")))
      (:goto 180))
     (:line 80
      (:print (:scon "i am thinking of a number between 1 and") :semi
       (:var n)))
     (:line 90 (:print (:scon "try to guess my number. on each guess,")))
     (:line 100 (:print (:scon "you are to enter 2 numbers, trying to trap")))
     (:line 110 (:print (:scon "my number between the two numbers. i will")))
     (:line 120
      (:print (:scon "tell you if you have trapped my number, if my")))
     (:line 130
      (:print (:scon "number is larger than your two numbers, or if")))
     (:line 140 (:print (:scon "my number is smaller than your two numbers.")))
     (:line 150
      (:print (:scon "if you want to guess one single number, type")))
     (:line 160 (:print (:scon "your guess for both your trap numbers.")))
     (:line 170
      (:print (:scon "you get") :semi (:var g) :semi
       (:scon "guesses to get my number.")))
     (:line 180
      (:let (:var x)
       (:binary :plus
        (:apply int (:binary :mul (:var n) (:apply rnd (:icon 1))))
        (:icon 1))))
     (:line 190 (:for q (:icon 1) (:var g) nil)) (:line 200 (:print))
     (:line 210 (:print (:scon "guess #") :semi (:var q) :semi))
     (:line 220 (:input nil ((:var a) (:var b))))
     (:line 230
      (:if
       (:lazy-binary :and (:binary :eq (:var a) (:var b))
        (:binary :eq (:var x) (:var a))))
      (:goto 400))
     (:line 240 (:if (:binary :le (:var a) (:var b))) (:goto 260))
     (:line 250 (:gosub 360))
     (:line 260
      (:if
       (:lazy-binary :and (:binary :le (:var a) (:var x))
        (:binary :le (:var x) (:var b))))
      (:goto 320))
     (:line 270 (:if (:binary :lt (:var x) (:var a))) (:goto 300))
     (:line 280 (:print (:scon "my number is larger than your trap numbers.")))
     (:line 290 (:goto 330))
     (:line 300
      (:print (:scon "my number is smaller than your trap numbers.")))
     (:line 310 (:goto 330))
     (:line 320 (:print (:scon "you have trapped my number.")))
     (:line 330 (:next q))
     (:line 340
      (:print (:scon "sorry, that's") :semi (:var g) :semi
       (:scon "guesses. the number was") :semi (:var x)))
     (:line 345 (:print)) (:line 350 (:goto 410))
     (:line 360 (:let (:var r) (:var a)))
     (:line 370 (:let (:var a) (:var b)))
     (:line 380 (:let (:var b) (:var r))) (:line 390 (:return))
     (:line 400 (:print (:scon "you got it!!!"))) (:line 410 (:print))
     (:line 420 (:print (:scon "try again."))) (:line 430 (:print))
     (:line 440 (:goto 180)) (:line 450 (:end)))))



(defvar *war*
  '(((:line 10 (:print (:apply tab (:icon 33)) :semi (:scon "war")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print))
     (:line 100
      (:print
       (:scon "this is the card game of war.  each card is given by suit-#")))
     (:line 110 (:print (:scon "as s-7 for spade 7.  ") :semi))
     (:line 120 (:print (:scon "do you want directions") :semi))
     (:line 130 (:input nil ((:var b$))))
     (:line 140 (:if (:binary :eq (:var b$) (:scon "no"))) (:goto 210))
     (:line 150 (:if (:binary :eq (:var b$) (:scon "yes"))) (:goto 180))
     (:line 160 (:print (:scon "yes or no, please.  ") :semi))
     (:line 170 (:goto 120))
     (:line 180
      (:print
       (:scon "the computer gives you and it a 'card'.  the higher card")))
     (:line 190
      (:print
       (:scon "(numerically) wins.  the game ends when you choose not to")))
     (:line 200
      (:print (:scon "continue or when you have finished the pack.")))
     (:line 210 (:print)) (:line 220 (:print))
     (:line 230 (:dim ((:dimd a$ (:icon 52)) (:dimd l (:icon 54)))))
     (:line 240 (:for i (:icon 1) (:icon 52) nil))
     (:line 250 (:read (:apply a$ (:var i)))) (:line 260 (:next i))
     (:line 270 (:rem "
")) (:line 280 (:for j (:icon 1) (:icon 52) nil))
     (:line 290
      (:let (:apply l (:var j))
       (:binary :plus
        (:apply int (:binary :mul (:icon 52) (:apply rnd (:icon 1))))
        (:icon 1))))
     (:line 295 (:if (:binary :eq (:var j) (:icon 1))) (:goto 350))
     (:line 300
      (:for k (:icon 1) (:binary :minus (:var j) (:icon 1)) nil))
     (:line 310
      (:if
       (:binary :ne (:apply l (:var k)) (:apply l (:var j))))
      (:goto 340))
     (:line 320 (:rem "
")) (:line 330 (:goto 290)) (:line 340 (:next k))
     (:line 350 (:next j))
     (:line 360 (:let (:var p) (:binary :plus (:var p) (:icon 1))))
     (:line 370 (:let (:var m1) (:apply l (:var p))))
     (:line 380 (:let (:var p) (:binary :plus (:var p) (:icon 1))))
     (:line 390 (:let (:var m2) (:apply l (:var p))))
     (:line 400 (:print))
     (:line 420
      (:print (:scon "you: ") :semi (:apply a$ (:var m1)) :comma
       (:scon "computer: ") :semi (:apply a$ (:var m2))))
     (:line 430
      (:let (:var n1)
       (:apply int
        (:binary :div (:binary :minus (:var m1) (:fcon 0.5)) (:icon 4)))))
     (:line 440
      (:let (:var n2)
       (:apply int
        (:binary :div (:binary :minus (:var m2) (:fcon 0.5)) (:icon 4)))))
     (:line 450 (:if (:binary :ge (:var n1) (:var n2))) (:goto 490))
     (:line 460 (:let (:var a1) (:binary :plus (:var a1) (:icon 1))))
     (:line 470
      (:print (:scon "the computer wins!!! you have") :semi (:var b1) :semi
       (:scon "and the computer has") :semi (:var a1)))
     (:line 480 (:goto 540))
     (:line 490 (:if (:binary :eq (:var n1) (:var n2))) (:goto 530))
     (:line 500 (:let (:var b1) (:binary :plus (:var b1) (:icon 1))))
     (:line 510
      (:print (:scon "you win. you have") :semi (:var b1) :semi
       (:scon "and the computer has") :semi (:var a1)))
     (:line 520 (:goto 540))
     (:line 530 (:print (:scon "tie.  no score change.")))
     (:line 540
      (:if
       (:binary :eq (:apply l (:binary :plus (:var p) (:icon 1)))
        (:icon 0)))
      (:goto 610))
     (:line 550 (:print (:scon "do you want to continue") :semi))
     (:line 560 (:input nil ((:var v$))))
     (:line 570 (:if (:binary :eq (:var v$) (:scon "yes"))) (:goto 360))
     (:line 580 (:if (:binary :eq (:var v$) (:scon "no"))) (:goto 650))
     (:line 590 (:print (:scon "yes or no, please.  ") :semi))
     (:line 600 (:goto 540)) (:line 610 (:print)) (:line 620 (:print))
     (:line 630
      (:print (:scon "we have run out of cards.  final score:  you: ") :semi
       (:var b1) :semi))
     (:line 640 (:print (:scon "  the computer: ") :semi (:var a1))
      (:print))
     (:line 650 (:print (:scon "thanks for playing.  it was fun.")))
     (:line 655 (:print))
     (:line 660
      (:data (:scon "s-2") (:scon "h-2") (:scon "c-2") (:scon "d-2")
       (:scon "s-3") (:scon "h-3") (:scon "c-3") (:scon "d-3")))
     (:line 670
      (:data (:scon "s-4") (:scon "h-4") (:scon "c-4") (:scon "d-4")
       (:scon "s-5") (:scon "h-5") (:scon "c-5") (:scon "d-5")))
     (:line 680
      (:data (:scon "s-6") (:scon "h-6") (:scon "c-6") (:scon "d-6")
       (:scon "s-7") (:scon "h-7") (:scon "c-7") (:scon "d-7")))
     (:line 690
      (:data (:scon "s-8") (:scon "h-8") (:scon "c-8") (:scon "d-8")
       (:scon "s-9") (:scon "h-9") (:scon "c-9") (:scon "d-9")))
     (:line 700
      (:data (:scon "s-10") (:scon "h-10") (:scon "c-10") (:scon "d-10")
       (:scon "s-j") (:scon "h-j") (:scon "c-j") (:scon "d-j")))
     (:line 710
      (:data (:scon "s-q") (:scon "h-q") (:scon "c-q") (:scon "d-q")
       (:scon "s-k") (:scon "h-k") (:scon "c-k") (:scon "d-k")))
     (:line 720
      (:data (:scon "s-a") (:scon "h-a") (:scon "c-a") (:scon "d-a")))
     (:line 999 (:end)))))



(defvar *weekday*
  '(((:line 10 (:print (:apply tab (:icon 32)) :semi (:scon "weekday")))
     (:line 20
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 30 (:print) (:print) (:print))
     (:line 100 (:print (:scon "weekday is a computer demonstration that")))
     (:line 110
      (:print (:scon "gives facts about a date of interest to you.")))
     (:line 120 (:print))
     (:line 130
      (:print (:scon "enter today's date in the form: 3,24,1979  ") :semi))
     (:line 140 (:input nil ((:var m1) (:var d1) (:var y1))))
     (:line 150 (:rem " this program determines the day of the week
"))
     (:line 160 (:rem "  for a date after 1582
"))
     (:line 170
      (:def fna a
       (:apply int (:binary :div (:var a) (:icon 4)))))
     (:line 180 (:dim ((:dimd t (:icon 12)))))
     (:line 190
      (:def fnb a
       (:apply int (:binary :div (:var a) (:icon 7)))))
     (:line 200 (:rem " space output and read in initial values for months.
"))
     (:line 210 (:for i (:icon 1) (:icon 12) nil))
     (:line 220 (:read (:apply t (:var i)))) (:line 230 (:next i))
     (:line 240
      (:print (:scon "enter day of birth (or other day of interest)") :semi))
     (:line 250 (:input nil ((:var m) (:var d) (:var y))))
     (:line 260 (:print))
     (:line 270
      (:let (:var i1)
       (:apply int
        (:binary :div (:binary :minus (:var y) (:icon 1500))
         (:icon 100)))))
     (:line 280 (:rem " test for date before current calendar.
"))
     (:line 290
      (:if (:binary :lt (:binary :minus (:var y) (:icon 1582)) (:icon 0)))
      (:goto 1300))
     (:line 300
      (:let (:var a)
       (:binary :plus (:binary :mul (:var i1) (:icon 5))
        (:binary :div (:binary :plus (:var i1) (:icon 3)) (:icon 4)))))
     (:line 310
      (:let (:var i2)
       (:apply int
        (:binary :minus (:var a)
         (:binary :mul (:apply fnb (:var a)) (:icon 7))))))
     (:line 320
      (:let (:var y2)
       (:apply int (:binary :div (:var y) (:icon 100)))))
     (:line 330
      (:let (:var y3)
       (:apply int
        (:binary :minus (:var y)
         (:binary :mul (:var y2) (:icon 100))))))
     (:line 340
      (:let (:var a)
       (:binary :plus
        (:binary :plus
         (:binary :plus
          (:binary :plus (:binary :div (:var y3) (:icon 4)) (:var y3))
          (:var d))
         (:apply t (:var m)))
        (:var i2))))
     (:line 350
      (:let (:var b)
       (:binary :plus
        (:apply int
         (:binary :minus (:var a)
          (:binary :mul (:apply fnb (:var a)) (:icon 7))))
        (:icon 1))))
     (:line 360 (:if (:binary :gt (:var m) (:icon 2))) (:goto 470))
     (:line 370 (:if (:binary :eq (:var y3) (:icon 0))) (:goto 440))
     (:line 380
      (:let (:var t1)
       (:apply int
        (:binary :minus (:var y)
         (:binary :mul (:apply fna (:var y)) (:icon 4))))))
     (:line 390 (:if (:binary :ne (:var t1) (:icon 0))) (:goto 470))
     (:line 400 (:if (:binary :ne (:var b) (:icon 0))) (:goto 420))
     (:line 410 (:let (:var b) (:icon 6)))
     (:line 420 (:let (:var b) (:binary :minus (:var b) (:icon 1))))
     (:line 430 (:goto 470))
     (:line 440 (:let (:var a) (:binary :minus (:var i1) (:icon 1))))
     (:line 450
      (:let (:var t1)
       (:apply int
        (:binary :minus (:var a)
         (:binary :mul (:apply fna (:var a)) (:icon 4))))))
     (:line 460 (:if (:binary :eq (:var t1) (:icon 0))) (:goto 400))
     (:line 470 (:if (:binary :ne (:var b) (:icon 0))) (:goto 490))
     (:line 480 (:let (:var b) (:icon 7)))
     (:line 490
      (:if
       (:binary :lt
        (:binary :plus
         (:binary :mul
          (:binary :plus (:binary :mul (:var y1) (:icon 12)) (:var m1))
          (:icon 31))
         (:var d1))
        (:binary :plus
         (:binary :mul
          (:binary :plus (:binary :mul (:var y) (:icon 12)) (:var m))
          (:icon 31))
         (:var d))))
      (:goto 550))
     (:line 500
      (:if
       (:binary :eq
        (:binary :plus
         (:binary :mul
          (:binary :plus (:binary :mul (:var y1) (:icon 12)) (:var m1))
          (:icon 31))
         (:var d1))
        (:binary :plus
         (:binary :mul
          (:binary :plus (:binary :mul (:var y) (:icon 12)) (:var m))
          (:icon 31))
         (:var d))))
      (:goto 530))
     (:line 510
      (:print (:var m) :semi (:scon "/") :semi (:var d) :semi
       (:scon "/") :semi (:var y) :semi (:scon " was a ") :semi))
     (:line 520 (:goto 570))
     (:line 530
      (:print (:var m) :semi (:scon "/") :semi (:var d) :semi
       (:scon "/") :semi (:var y) :semi (:scon " is a ") :semi))
     (:line 540 (:goto 570))
     (:line 550
      (:print (:var m) :semi (:scon "/") :semi (:var d) :semi
       (:scon "/") :semi (:var y) :semi (:scon " will be a ") :semi))
     (:line 560 (:rem " print the day of the week the date falls on.
"))
     (:line 570 (:if (:binary :ne (:var b) (:icon 1))) (:goto 590))
     (:line 580 (:print (:scon "sunday.")))
     (:line 590 (:if (:binary :ne (:var b) (:icon 2))) (:goto 610))
     (:line 600 (:print (:scon "monday.")))
     (:line 610 (:if (:binary :ne (:var b) (:icon 3))) (:goto 630))
     (:line 620 (:print (:scon "tuesday.")))
     (:line 630 (:if (:binary :ne (:var b) (:icon 4))) (:goto 650))
     (:line 640 (:print (:scon "wednesday.")))
     (:line 650 (:if (:binary :ne (:var b) (:icon 5))) (:goto 670))
     (:line 660 (:print (:scon "thursday.")))
     (:line 670 (:if (:binary :ne (:var b) (:icon 6))) (:goto 690))
     (:line 680 (:goto 1250))
     (:line 690 (:if (:binary :ne (:var b) (:icon 7))) (:goto 710))
     (:line 700 (:print (:scon "saturday.")))
     (:line 710
      (:if
       (:binary :eq
        (:binary :plus
         (:binary :mul
          (:binary :plus (:binary :mul (:var y1) (:icon 12)) (:var m1))
          (:icon 31))
         (:var d1))
        (:binary :plus
         (:binary :mul
          (:binary :plus (:binary :mul (:var y) (:icon 12)) (:var m))
          (:icon 31))
         (:var d))))
      (:goto 1120))
     (:line 720
      (:let (:var i5) (:binary :minus (:var y1) (:var y))))
     (:line 730 (:print))
     (:line 740
      (:let (:var i6) (:binary :minus (:var m1) (:var m))))
     (:line 750
      (:let (:var i7) (:binary :minus (:var d1) (:var d))))
     (:line 760 (:if (:binary :ge (:var i7) (:icon 0))) (:goto 790))
     (:line 770 (:let (:var i6) (:binary :minus (:var i6) (:icon 1))))
     (:line 780 (:let (:var i7) (:binary :plus (:var i7) (:icon 30))))
     (:line 790 (:if (:binary :ge (:var i6) (:icon 0))) (:goto 820))
     (:line 800 (:let (:var i5) (:binary :minus (:var i5) (:icon 1))))
     (:line 810 (:let (:var i6) (:binary :plus (:var i6) (:icon 12))))
     (:line 820 (:if (:binary :lt (:var i5) (:icon 0))) (:goto 1310))
     (:line 830 (:if (:binary :ne (:var i7) (:icon 0))) (:goto 850))
     (:line 835 (:if (:binary :ne (:var i6) (:icon 0))) (:goto 850))
     (:line 840 (:print (:scon "***happy birthday***")))
     (:line 850
      (:print (:scon " ") :comma (:scon " ") :comma (:scon "years") :comma
       (:scon "months") :comma (:scon "days")))
     (:line 855
      (:print (:scon " ") :comma (:scon " ") :comma (:scon "-----") :comma
       (:scon "------") :comma (:scon "----")))
     (:line 860
      (:print (:scon "your age (if birthdate) ") :comma (:var i5) :comma
       (:var i6) :comma (:var i7)))
     (:line 870
      (:let (:var a8)
       (:binary :plus
        (:binary :plus
         (:binary :plus (:binary :mul (:var i5) (:icon 365))
          (:binary :mul (:var i6) (:icon 30)))
         (:var i7))
        (:apply int (:binary :div (:var i6) (:icon 2))))))
     (:line 880 (:let (:var k5) (:var i5)))
     (:line 890 (:let (:var k6) (:var i6)))
     (:line 900 (:let (:var k7) (:var i7)))
     (:line 910 (:rem " calculate retirement date.
"))
     (:line 920 (:let (:var e) (:binary :plus (:var y) (:icon 65))))
     (:line 930 (:rem " calculate time spent in the following functions.
"))
     (:line 940 (:let (:var f) (:fcon 0.35)))
     (:line 950 (:print (:scon "you have slept ") :comma))
     (:line 960 (:gosub 1370)) (:line 970 (:let (:var f) (:fcon 0.17)))
     (:line 980 (:print (:scon "you have eaten ") :comma))
     (:line 990 (:gosub 1370))
     (:line 1000 (:let (:var f) (:fcon 0.22999999)))
     (:line 1010 (:if (:binary :gt (:var k5) (:icon 3))) (:goto 1040))
     (:line 1020 (:print (:scon "you have played") :comma))
     (:line 1030 (:goto 1080))
     (:line 1040 (:if (:binary :gt (:var k5) (:icon 9))) (:goto 1070))
     (:line 1050 (:print (:scon "you have played/studied") :comma))
     (:line 1060 (:goto 1080))
     (:line 1070 (:print (:scon "you have worked/played") :comma))
     (:line 1080 (:gosub 1370)) (:line 1085 (:goto 1530))
     (:line 1090
      (:print (:scon "you have relaxed ") :comma (:var k5) :comma
       (:var k6) :comma (:var k7)))
     (:line 1100 (:print))
     (:line 1110
      (:print (:apply tab (:icon 16)) :semi
       (:scon "***  you may retire in") :semi (:var e) :semi
       (:scon " ***")))
     (:line 1120 (:print)) (:line 1140 (:print)) (:line 1200 (:print))
     (:line 1210 (:print)) (:line 1220 (:print)) (:line 1230 (:print))
     (:line 1240 (:end))
     (:line 1250 (:if (:binary :eq (:var d) (:icon 13))) (:goto 1280))
     (:line 1260 (:print (:scon "friday."))) (:line 1270 (:goto 710))
     (:line 1280 (:print (:scon "friday the thirteenth---beware!")))
     (:line 1290 (:goto 710))
     (:line 1300
      (:print (:scon "not prepared to give day of week prior to mdlxxxii. ")))
     (:line 1310 (:goto 1140))
     (:line 1320
      (:rem " table of values for the months to be used in calculations.
"))
     (:line 1330
      (:data (:icon 0) (:icon 3) (:icon 3) (:icon 6) (:icon 1) (:icon 4)
       (:icon 6) (:icon 2) (:icon 5) (:icon 0) (:icon 3) (:icon 5)))
     (:line 1340 (:rem " this is the current date used in the calculations.
"))
     (:line 1350 (:rem " this is the date to be calculated on.
"))
     (:line 1360 (:rem " calculate time in years, months, and days
"))
     (:line 1370
      (:let (:var k1)
       (:apply int (:binary :mul (:var f) (:var a8)))))
     (:line 1380
      (:let (:var i5)
       (:apply int (:binary :div (:var k1) (:icon 365)))))
     (:line 1390
      (:let (:var k1)
       (:binary :minus (:var k1)
        (:binary :mul (:var i5) (:icon 365)))))
     (:line 1400
      (:let (:var i6)
       (:apply int (:binary :div (:var k1) (:icon 30)))))
     (:line 1410
      (:let (:var i7)
       (:binary :minus (:var k1) (:binary :mul (:var i6) (:icon 30)))))
     (:line 1420
      (:let (:var k5) (:binary :minus (:var k5) (:var i5))))
     (:line 1430
      (:let (:var k6) (:binary :minus (:var k6) (:var i6))))
     (:line 1440
      (:let (:var k7) (:binary :minus (:var k7) (:var i7))))
     (:line 1450 (:if (:binary :ge (:var k7) (:icon 0))) (:goto 1480))
     (:line 1460 (:let (:var k7) (:binary :plus (:var k7) (:icon 30))))
     (:line 1470 (:let (:var k6) (:binary :minus (:var k6) (:icon 1))))
     (:line 1480 (:if (:binary :gt (:var k6) (:icon 0))) (:goto 1510))
     (:line 1490 (:let (:var k6) (:binary :plus (:var k6) (:icon 12))))
     (:line 1500 (:let (:var k5) (:binary :minus (:var k5) (:icon 1))))
     (:line 1510
      (:print (:var i5) :comma (:var i6) :comma (:var i7)))
     (:line 1520 (:return))
     (:line 1530 (:if (:binary :eq (:var k6) (:icon 12))) (:goto 1550))
     (:line 1540 (:goto 1090))
     (:line 1550 (:let (:var k5) (:binary :plus (:var k5) (:icon 1))))
     (:line 1560 (:let (:var k6) (:icon 0))) (:line 1570 (:goto 1090))
     (:line 1580 (:rem "
")) (:line 1590 (:end)))))



(defvar *word*
  '(((:line 2 (:print (:apply tab (:icon 33)) :semi (:scon "word")))
     (:line 3
      (:print (:apply tab (:icon 15)) :semi
       (:scon "creative computing  morristown, new jersey")))
     (:line 4 (:print) (:print) (:print))
     (:line 5
      (:dim
       ((:dimd s (:icon 7)) (:dimd a (:icon 7)) (:dimd l (:icon 7))
        (:dimd d (:icon 7)) (:dimd p (:icon 7)))))
     (:line 10
      (:print
       (:scon "i am thinking of a word -- you guess it.  i will give you")))
     (:line 15 (:print (:scon "clues to help you get it.  good luck!!"))
      (:print) (:print))
     (:line 20 (:rem "
"))
     (:line 30 (:print) (:print)
      (:print (:scon "you are starting a new game...")))
     (:line 35 :restore) (:line 40 (:read (:var n)))
     (:line 50
      (:let (:var c)
       (:apply int
        (:binary :plus (:binary :mul (:apply rnd (:icon 1)) (:var n))
         (:icon 1)))))
     (:line 60 (:for i (:icon 1) (:var c) nil))
     (:line 70 (:read (:var s$))) (:line 80 (:next i))
     (:line 90 (:let (:var g) (:icon 0)))
     (:line 95 (:let (:apply s (:icon 0)) (:apply len (:var s$))))
     (:line 100 (:for i (:icon 1) (:apply len (:var s$)) nil)
      (:let (:apply s (:var i))
       (:apply asc (:apply mid$ (:var s$) (:var i) (:icon 1))))
      (:next i))
     (:line 110 (:for i (:icon 1) (:icon 5) nil))
     (:line 120 (:let (:apply a (:var i)) (:icon 45)))
     (:line 130 (:next i)) (:line 140 (:for j (:icon 1) (:icon 5) nil))
     (:line 144 (:let (:apply p (:var j)) (:icon 0)))
     (:line 146 (:next j))
     (:line 150 (:print (:scon "guess a five letter word") :semi))
     (:line 160 (:input nil ((:var l$))))
     (:line 170 (:let (:var g) (:binary :plus (:var g) (:icon 1))))
     (:line 172 (:if (:binary :eq (:var s$) (:var g$))) (:goto 500))
     (:line 173 (:for i (:icon 1) (:icon 7) nil)
      (:let (:apply p (:var i)) (:icon 0)) (:next i))
     (:line 175 (:let (:apply l (:icon 0)) (:apply len (:var l$))))
     (:line 180 (:for i (:icon 1) (:apply len (:var l$)) nil)
      (:let (:apply l (:var i))
       (:apply asc (:apply mid$ (:var l$) (:var i) (:icon 1))))
      (:next i))
     (:line 190 (:if (:binary :eq (:apply l (:icon 1)) (:icon 63)))
      (:goto 300))
     (:line 200 (:if (:binary :ne (:apply l (:icon 0)) (:icon 5)))
      (:goto 400))
     (:line 205 (:let (:var m) (:icon 0)) (:let (:var q) (:icon 1)))
     (:line 210 (:for i (:icon 1) (:icon 5) nil))
     (:line 220 (:for j (:icon 1) (:icon 5) nil))
     (:line 230
      (:if
       (:binary :ne (:apply s (:var i)) (:apply l (:var j))))
      (:goto 260))
     (:line 231 (:let (:apply p (:var q)) (:apply l (:var j))))
     (:line 232 (:let (:var q) (:binary :plus (:var q) (:icon 1))))
     (:line 233 (:if (:binary :ne (:var i) (:var j))) (:goto 250))
     (:line 240 (:let (:apply a (:var j)) (:apply l (:var j))))
     (:line 250 (:let (:var m) (:binary :plus (:var m) (:icon 1))))
     (:line 260 (:next j)) (:line 265 (:next i))
     (:line 270 (:let (:apply a (:icon 0)) (:icon 5)))
     (:line 272 (:let (:apply p (:icon 0)) (:var m)))
     (:line 275 (:let (:var a$) (:scon ""))
      (:for i (:icon 1) (:apply a (:icon 0)) nil)
      (:let (:var a$)
       (:binary :plus (:var a$)
        (:apply chr$ (:apply a (:var i)))))
      (:next i))
     (:line 277 (:let (:var p$) (:scon ""))
      (:for i (:icon 1) (:apply p (:icon 0)) nil)
      (:let (:var p$)
       (:binary :plus (:var p$)
        (:apply chr$ (:apply p (:var i)))))
      (:next i))
     (:line 280
      (:print (:scon "there were") :semi (:var m) :semi
       (:scon "matches and the common letters were...") :semi (:var p$)))
     (:line 285
      (:print (:scon "from the exact letter matches, you know................")
       :semi (:var a$)))
     (:line 286 (:if (:binary :eq (:var a$) (:var s$))) (:goto 500))
     (:line 287 (:if (:binary :gt (:var m) (:icon 1))) (:goto 289))
     (:line 288 (:print)
      (:print (:scon "if you give up, type '?' for your next guess.")))
     (:line 289 (:print)) (:line 290 (:goto 150))
     (:line 300 (:let (:var s$) (:scon ""))
      (:for i (:icon 1) (:icon 7) nil)
      (:let (:var s$)
       (:binary :plus (:var s$)
        (:apply chr$ (:apply s (:var i)))))
      (:next i))
     (:line 310 (:print (:scon "the secret word is ") :semi (:var s$))
      (:print))
     (:line 320 (:goto 30))
     (:line 400
      (:print (:scon "you must guess a 5 letter word.  start again.")))
     (:line 410 (:print)
      (:let (:var g) (:binary :minus (:var g) (:icon 1))) (:goto 150))
     (:line 500
      (:print (:scon "you have guessed the word.  it took") :semi (:var g)
       :semi (:scon "guesses!"))
      (:print))
     (:line 510 (:input "want to play again" ((:var q$))))
     (:line 520 (:if (:binary :eq (:var q$) (:scon "yes"))) (:goto 30))
     (:line 530
      (:data (:icon 12) (:scon "dinky") (:scon "smoke") (:scon "water")
       (:scon "grass") (:scon "train") (:scon "might") (:scon "first")))
     (:line 540
      (:data (:scon "candy") (:scon "champ") (:scon "would") (:scon "clump")
       (:scon "dopey")))
     (:line 999 (:end)))))
     
(defvar *banana*
 '(((:line 1 (:goto 3))
  (:line 2 (:print (:icon 5)))
  (:line 3 (:print (:icon 42))))))

(defvar *apple*
  '(((:line 195 (:let (:var c) (:icon 42)))
     (:line 1 (:print (:scon "...") (:var c) (:scon "...")))
     (:line 110 (:dim ((:dimd2 w (:icon 1) (:icon 1)))))
     (:line 100 (:let (:apply w (:icon 0) (:icon 0)) (:var c)))
     (:line 2 (:print (:scon "arr -> ") (:apply w (:icon 0) (:icon 0)))))))



;      (:let (:apply w (:var x) (:icon 1)) (:var c))
 ;     (:let (:var c) (:binary :plus (:var c) (:icon 1))))
