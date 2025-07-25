{
    hardware.uinput.enable = true;
    services.kanata.enable = true;
    # services.kanata.keyboards.egoist.configFile =
    #     "/home/gasacchi/.config/kanata/egoist.kbd";
    services.kanata.keyboards.egoist.config =
        ''
;; gsc 16 keyboard layout

;; source
(defsrc
        '     ;     l               f     d     s
  ]     [     p     o               r     e     w     q
                    f10             f6
)

;; Main Alpha layer

(defalias
  ;; left side
  u (tap-hold    100     200    u    lctrl)
  o (tap-hold    100     200    o    lalt)
  y (tap-hold    100     200    y    lmet)
  
  i (tap-hold    100     200    i    (layer-while-held number))
  e (tap-hold    100     200    e    (layer-while-held secondary-symbol))
  a (tap-hold    100     200    a    (layer-while-held main-symbol))
  h (tap-hold    100     200    h    (layer-while-held system))
  
  ;; right side
  c (tap-hold    100     200    c    lmet)
  d (tap-hold    100     200    d    lalt)
  l (tap-hold    100     200    l    lctrl)
  
  s (tap-hold    100     200    s    (layer-while-held system))
  t (tap-hold    100     200    t    (layer-while-held main-symbol))
  r (tap-hold    100     200    r    (layer-while-held secondary-symbol))
  n (tap-hold    100     200    n    (layer-while-held number))
  
  
  ;; bottom
  ;; lmod           (tap-hold 100 200 spc lmet)
 
  rmod           (layer-switch secondary-alpha)
)
      

(deflayer main-alpha
        @u    @o    @y              @c    @d    @l
  @i    @e    @a    @h              @s    @t    @r    @n
                    spc             @rmod
)



;; second alpha Layer
(defalias
  ;; left side
  , (tap-hold       100 200
      (multi        (macro ,)                 (layer-switch main-alpha))
      lctrl)

  . (tap-hold       100 200 
      (tap-dance    200 
                    ((multi .                 (layer-switch main-alpha))
                     (multi (macro . .)       (layer-switch main-alpha))
                     (multi (macro . . .)     (layer-switch main-alpha))))
       lalt)

  f (tap-hold       100 200 
      (tap-dance    200 
                    ((multi f                 (layer-switch main-alpha))
                     (multi (macro f f)       (layer-switch main-alpha))))
       lmet)

  q (tap-dance      200 
                    ((multi q                 (layer-switch main-alpha))
                     (multi (macro q q)       (layer-switch main-alpha))))
  z (tap-dance      200 
                    ((multi z                 (layer-switch main-alpha))
                     (multi (macro z z)       (layer-switch main-alpha))))
  x (tap-dance      200 
                    ((multi x                 (layer-switch main-alpha))
                     (multi (macro x x)       (layer-switch main-alpha))))
  p (tap-dance      200 
                    ((multi p                 (layer-switch main-alpha))
                     (multi (macro p p)       (layer-switch main-alpha))))

				
  ;; right side
  w (tap-hold       100 200 
      (tap-dance    200 
                    ((multi w                 (layer-switch main-alpha))
                     (multi (macro w w)       (layer-switch main-alpha))))
       lmet)

  k (tap-hold       100 200 
      (tap-dance    200 
                    ((multi k                 (layer-switch main-alpha))
                     (multi (macro k k)       (layer-switch main-alpha))))
       lalt)

  j (tap-hold       100 200 
      (tap-dance    200 
                    ((multi j                 (layer-switch main-alpha))
                     (multi (macro j j)       (layer-switch main-alpha))))
       lctrl)
       
  g (tap-dance      200 
                    ((multi g                 (layer-switch main-alpha))
                     (multi (macro g g)       (layer-switch main-alpha))))
  m (tap-dance      200 
                    ((multi m                 (layer-switch main-alpha))
                     (multi (macro m m)       (layer-switch main-alpha))))
  v (tap-dance      200 
                    ((multi v                 (layer-switch main-alpha))
                     (multi (macro v v)       (layer-switch main-alpha))))
  b (tap-dance      200 
                    ((multi b                 (layer-switch main-alpha))
                     (multi (macro b b)       (layer-switch main-alpha))))
                     
  ;; bottom
  lmod0             (layer-switch main-alpha-uppercase)
  rmod0             (layer-switch secondary-alpha-uppercase)
)


(deflayer secondary-alpha
        @,    @.    @f              @w    @k    @j
  @q    @z    @x    @p              @g    @m    @v    @b
                    @lmod0          @rmod0
)


;; main alpha uppercase
(defalias
  ;; left side
  U (multi (macro S-u)                 (layer-switch main-alpha))
  O (multi (macro S-o)                 (layer-switch main-alpha))
  Y (multi (macro S-y)                 (layer-switch main-alpha))
  
  I (multi (macro S-i)                 (layer-switch main-alpha))
  E (multi (macro S-e)                 (layer-switch main-alpha))
  A (multi (macro S-a)                 (layer-switch main-alpha))
  H (multi (macro S-h)                 (layer-switch main-alpha))

				
  ;; right side
  C (multi (macro S-c)                 (layer-switch main-alpha))
  D (multi (macro S-d)                 (layer-switch main-alpha))
  L (multi (macro S-l)                 (layer-switch main-alpha))
       
  S (multi (macro S-s)                 (layer-switch main-alpha))
  T (multi (macro S-t)                 (layer-switch main-alpha))
  R (multi (macro S-r)                 (layer-switch main-alpha))
  N (multi (macro S-n)                 (layer-switch main-alpha))
)
(deflayer main-alpha-uppercase
        @U    @O    @Y              @C    @D    @L
  @I    @E    @A    @H              @S    @T    @R    @N
                    XX              XX
)


;; secondary alpha uppercase
(defalias
  ;; left side
  F (multi (macro S-f)                 (layer-switch main-alpha))
  
  Q (multi (macro S-q)                 (layer-switch main-alpha))
  Z (multi (macro S-z)                 (layer-switch main-alpha))
  X (multi (macro S-x)                 (layer-switch main-alpha))
  P (multi (macro S-p)                 (layer-switch main-alpha))
				
  ;; right side
  W (multi (macro S-w)                 (layer-switch main-alpha))
  K (multi (macro S-k)                 (layer-switch main-alpha))
  J (multi (macro S-j)                 (layer-switch main-alpha))
  
  G (multi (macro S-g)                 (layer-switch main-alpha))
  M (multi (macro S-m)                 (layer-switch main-alpha))
  V (multi (macro S-v)                 (layer-switch main-alpha))
  B (multi (macro S-b)                 (layer-switch main-alpha))                    
)


(deflayer secondary-alpha-uppercase
        @,    @.    @F              @W    @K    @J
  @Q    @Z    @X    @P              @G    @M    @V    @B
                    XX              XX
)

;; Number Layer
(defalias
  zr 0
  100       (tap-hold    100     200
              (macro     @zr     @zr)                    f11)
  1000      (tap-hold    100     200
              (macro     @zr     @zr     @zr)            f12)
 
  0         (tap-hold    100     200     0               f10)
  1         (tap-hold    100     200     1               f1)
  2         (tap-hold    100     200     2               f2)
  3         (tap-hold    100     200     3               f3)
  4         (tap-hold    100     200     4               f4)
  5         (tap-hold    100     200     5               f5)
  6         (tap-hold    100     200     6               f6)
  7         (tap-hold    100     200     7               f7)
  8         (tap-hold    100     200     8               f8)
  9         (tap-hold    100     200     9               f9)
  
  und       (macro S--)
)


(deflayer number
        -     @0    @und            @4    @5    @6
  @100  @1    @2    @3              @7    @8    @9    @1000
                    =               .
)

;; Symbol

;; use macro for fix tap-hold bug behavior
(defalias
  pct  (macro S-5)
  hsh  (macro S-3)
  dlr  (macro S-4)
  exc  (macro S-1)
  tld  (macro S-`)
  dqt  (macro S-')
  at   (macro S-2)
  bar  (macro S-\)
  and  (macro S-7)
  
  
  <    (macro S-,)
  >    (macro S-.)
  }    (macro S-])
  {    (macro S-[)
  qst  (macro S-/)
  crt  (macro S-6)
  cln  (macro S-;)
  rpn  (macro S-0)
  lpn  (macro S-9)
  
  astk (macro S-8)
  pls  (macro S-=)
)


(deflayer main-symbol
         -    @<    @>              @}    @{    @exc
  @tld   @cln [     ]               @rpn  @lpn  @und  @and
                    =               ;
)
                       
(deflayer secondary-symbol
         @pct @astk @pls            @hsh  @dlr  @qst
  @crt   `    @dqt  '               @bar  @at   /     \
                    =               ;
)
                       
;; System Layer
(defalias
  tab   (tap-hold 100 200 tab lshft)
  home  (tap-dance 200 (home pgup))
  end   (tap-dance 200 (end  pgdn))
)

(deflayer system
         lctrl @tab   S-tab         C-bspc up   bspc
  @home  @end  lalt   esc           lft    down rght  ret
                      caps          XX
)
        '';
}
