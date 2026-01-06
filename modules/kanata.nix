{
    hardware.uinput.enable = true;
    services.kanata.enable = true;
    # services.kanata.keyboards.egoist.configFile =
    #     "/home/gasacchi/.config/kanata/egoist.kbd";

    services.kanata.keyboards.egoist.config = ''
;; Egoist 16-keys Layout

;; Source
(defsrc
        '     ;     l               f     d     s
  ]     [     p     o               r     e     w     q
                    f10             f6
)


;; Alpha-1 Layer
(defalias

  ;; top-left side
  u (tap-hold 100 200 u lctrl)
  o (tap-hold 100 200 o lalt)
  y (tap-hold 100 200 y lmet)
  
  ;; bottom-left side
  i (tap-hold 100 200 i (layer-while-held num))
  e (tap-hold 100 200 e (layer-while-held sym-2))
  a (tap-hold 100 200 a (layer-while-held sym-1))
  h (tap-hold 100 200 h (layer-while-held sys))
  
  ;; top-right side
  c (tap-hold 100 200 c lmet)
  d (tap-hold 100 200 d lalt)
  l (tap-hold 100 200 l lctrl)
  
  ;; bottom-right side
  s (tap-hold 100 200 s (layer-while-held sys))
  t (tap-hold 100 200 t (layer-while-held sym-1))
  r (tap-hold 100 200 r (layer-while-held sym-2))
  n (tap-hold 100 200 n (layer-while-held num))
  
  
  ;; bottom mod
  rmod (layer-switch alpha-2)
)
      

(deflayer alpha-1
        @u    @o    @y              @c    @d    @l
  @i    @e    @a    @h              @s    @t    @r    @n
                    spc             @rmod
)


;; Alpha-2 Layer
(defalias
  ;; top-left side
  , (tap-hold 100 200
      (multi , (layer-switch alpha-1))
      lctrl)
  . (tap-hold 100 200
      (multi . (layer-switch alpha-1))
      lalt)
  f (tap-hold 100 200
      (multi f (layer-switch alpha-1))
      lmet)

  ;; bottom-left side
  q (multi q (layer-switch alpha-1))
  z (multi z (layer-switch alpha-1))
  x (multi x (layer-switch alpha-1))
  p (multi p (layer-switch alpha-1))
				
  ;; top-right side
  w (tap-hold 100 200
      (multi w (layer-switch alpha-1))
      lmet)
  k (tap-hold 100 200
      (multi k (layer-switch alpha-1))
      lalt)
  j (tap-hold 100 200
      (multi j (layer-switch alpha-1))
      lctrl)

  ;; bottom-right side
  g (multi g (layer-switch alpha-1))
  m (multi m (layer-switch alpha-1))
  v (multi v (layer-switch alpha-1))
  b (multi b (layer-switch alpha-1))

  ;; bottom mod
  lmod0 (layer-switch alpha-1-upper)
  rmod0 (layer-switch alpha-2-upper)
)


(deflayer alpha-2
        @,    @.    @f              @w    @k    @j
  @q    @z    @x    @p              @g    @m    @v    @b
                    @lmod0          @rmod0
)

;; Alpha-1 Uppercase Layer
(defalias
  ;; top-left side
  U (multi (macro S-u) (layer-switch alpha-1))
  O (multi (macro S-o) (layer-switch alpha-1))
  Y (multi (macro S-y) (layer-switch alpha-1))
  
  ;; bottom-left side
  I (multi (macro S-i) (layer-switch alpha-1))
  E (multi (macro S-e) (layer-switch alpha-1))
  A (multi (macro S-a) (layer-switch alpha-1))
  H (multi (macro S-h) (layer-switch alpha-1))
				
  ;; top-right side
  C (multi (macro S-c) (layer-switch alpha-1))
  D (multi (macro S-d) (layer-switch alpha-1))
  L (multi (macro S-l) (layer-switch alpha-1))
       
  ;; bottom-right side
  S (multi (macro S-s) (layer-switch alpha-1))
  T (multi (macro S-t) (layer-switch alpha-1))
  R (multi (macro S-r) (layer-switch alpha-1))
  N (multi (macro S-n) (layer-switch alpha-1))

  ;; bottom mod
  lmod1 (layer-switch alpha-1)
  rmod1 (layer-switch alpha-1)
)


(deflayer alpha-1-upper
        @U    @O    @Y              @C    @D    @L
  @I    @E    @A    @H              @S    @T    @R    @N
                    @lmod1          @rmod1
)


;; Alpha-2 Uppercase Layer
(defalias
  ;; top-left side
  F (multi (macro S-f) (layer-switch alpha-1))
  
  ;; bottom-left side
  Q (multi (macro S-q) (layer-switch alpha-1))
  Z (multi (macro S-z) (layer-switch alpha-1))
  X (multi (macro S-x) (layer-switch alpha-1))
  P (multi (macro S-p) (layer-switch alpha-1))
				
  ;; top-right side
  W (multi (macro S-w) (layer-switch alpha-1))
  K (multi (macro S-k) (layer-switch alpha-1))
  J (multi (macro S-j) (layer-switch alpha-1))
  
  ;; bottom-right side
  G (multi (macro S-g) (layer-switch alpha-1))
  M (multi (macro S-m) (layer-switch alpha-1))
  V (multi (macro S-v) (layer-switch alpha-1))
  B (multi (macro S-b) (layer-switch alpha-1))                    

  ;; bottom mod
  lmod2 (layer-switch alpha-1)
  rmod2 (layer-switch alpha-1)
)


(deflayer alpha-2-upper
        @,    @.    @F              @W    @K    @J
  @Q    @Z    @X    @P              @G    @M    @V    @B
                    @lmod2          @rmod2
)

;; System Layer
(defalias
  tab (tap-hold 100 200 tab lshft)
  s-tab (tap-hold 100 200 S-tab lmet)
  c-bspc (tap-hold 100 200 C-bspc lmet)
  home (tap-hold 100 200 home pgup)
  end (tap-hold 100 200 end pgdn)
)

(deflayer sys
         lctrl @tab   @s-tab        @c-bspc up   bspc
  @home  @end  lalt   esc           lft     down rght  ret
                      caps          del
)

;; Number Layer
(defalias
  zero 0
  hyku (macro @zero @zero)
  sen (macro @zero @zero @zero)
  und (tap-hold 100 200 S-- lmet)
  4 (tap-hold 100 200 4 lmet)
)


(deflayer num
        -     0    @und           @4   5    6
  @hyku 1     2    3             7    8    9    @sen
                   =              .
)

;; Symbol Layer

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


(deflayer sym-1
         -    @<    @>              @}    @{    @exc
  @tld   @cln [     ]               @rpn  @lpn  @und  @and
                    =               ;
)
                       
(deflayer sym-2
         @pct @astk @pls            @hsh  @dlr  @qst
  @crt   `    @dqt  '               @bar  @at   /     \
                    =               ;
)

'';
}
