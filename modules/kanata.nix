{
    hardware.uinput.enable = true;
    services.kanata.enable = true;
    # services.kanata.keyboards.egoist.configFile =
    #     "/home/gasacchi/.config/kanata/egoist.kbd";
    services.kanata.keyboards.egoist.config = ''
;; 16-keys Layout

(defsrc
         2    3    4        9    0    -
    q    w    e    r        o    p    [    ]
                   v        ,       
)


;; alpha_0 Layer
(defalias

    ;; top-left side
    u (tap-hold 100 200 u lctrl)
    o (tap-hold 100 200 o lalt)
    y (tap-hold 100 200 y lmet)
  
    ;; bottom-left side
    i (tap-hold 100 200 i (layer-while-held num))
    e (tap-hold 100 200 e (layer-while-held sym_1))
    a (tap-hold 100 200 a (layer-while-held sym_0))
    h (tap-hold 100 200 h (layer-while-held sys))
  
    ;; top-right side
    c (tap-hold 100 200 c lmet)
    d (tap-hold 100 200 d lalt)
    l (tap-hold 100 200 l lctrl)

    ;; bottom-right side
    s (tap-hold 100 200 s (layer-while-held sys))
    t (tap-hold 100 200 t (layer-while-held sym_0))
    r (tap-hold 100 200 r (layer-while-held sym_1))
    n (tap-hold 100 200 n (layer-while-held num))
    
    ;; bottom mod
    rmod (layer-switch alpha_1)
)
      

(deflayer alpha_0
          @u    @o    @y         @c    @d    @l
    @i    @e    @a    @h         @s    @t    @r    @n
                      spc        @rmod
)


;; alpha_1 Layer
(defalias

    ;; top-left side
    , (tap-hold 100 200
        (multi , (layer-switch alpha_0))
        lctrl)

    . (tap-hold 100 200
        (tap-dance 200
            ((multi . (layer-switch alpha_0))
             (multi (macro . .) (layer-switch alpha_0))
             (multi (macro . . .) (layer-switch alpha_0))))
        lalt)

    f (tap-hold 100 200
        (tap-dance 200
            ((multi f (layer-switch alpha_0))
             (multi (macro f f) (layer-switch alpha_0))))
        lmet)

    ;; f (tap-hold 100 200
    ;;     (multi f (layer-switch alpha_0))
    ;;     lmet)

    ;; bottom-left side
    q (tap-dance 200
        ((multi q (layer-switch alpha_0))
         (multi (macro q q) (layer-switch alpha_0))))
    z (tap-dance 200
        ((multi z (layer-switch alpha_0))
         (multi (macro z z) (layer-switch alpha_0))))
    x (tap-dance 200
        ((multi x (layer-switch alpha_0))
         (multi (macro x x) (layer-switch alpha_0))))
    p (tap-dance 200
        ((multi p (layer-switch alpha_0))
         (multi (macro p p) (layer-switch alpha_0))))
    ;; q (multi q (layer-switch alpha_0))
    ;; z (multi z (layer-switch alpha_0))
    ;; x (multi x (layer-switch alpha_0))
    ;; p (multi p (layer-switch alpha_0))
				
    ;; top-right side
    w (tap-hold 100 200
        (tap-dance 200
            ((multi w (layer-switch alpha_0))
             (multi (macro w w) (layer-switch alpha_0))))
        lmet)
    k (tap-hold 100 200
        (tap-dance 200
            ((multi k (layer-switch alpha_0))
             (multi (macro k k) (layer-switch alpha_0))))
        lalt)
    j (tap-hold 100 200
        (tap-dance 200
            ((multi j (layer-switch alpha_0))
             (multi (macro j j) (layer-switch alpha_0))))
        lctrl)
    ;; w (tap-hold 100 200
    ;;     (multi w (layer-switch alpha_0))
    ;;     lmet)
    ;; k (tap-hold 100 200
    ;;     (multi k (layer-switch alpha_0))
    ;;     lalt)
    ;; j (tap-hold 100 200
    ;;     (multi j (layer-switch alpha_0))
    ;;     lctrl)

    ;; bottom-right side
    g (tap-dance 200
        ((multi g (layer-switch alpha_0))
         (multi (macro g g) (layer-switch alpha_0))))
    m (tap-dance 200
        ((multi m (layer-switch alpha_0))
         (multi (macro m m) (layer-switch alpha_0))))
    v (tap-dance 200
        ((multi v (layer-switch alpha_0))
         (multi (macro v v) (layer-switch alpha_0))))
    b (tap-dance 200
        ((multi b (layer-switch alpha_0))
         (multi (macro b b) (layer-switch alpha_0))))
    ;; g (multi g (layer-switch alpha_0))
    ;; m (multi m (layer-switch alpha_0))
    ;; v (multi v (layer-switch alpha_0))
    ;; b (multi b (layer-switch alpha_0))

    ;; bottom mod
    lmod_0 (layer-switch alpha_0_upper)
    rmod_0 (layer-switch alpha_1_upper)
)


(deflayer alpha_1
          @,    @.    @f         @w    @k    @j
    @q    @z    @x    @p         @g    @m    @v    @b
                      @lmod_0    @rmod_0
)

;; alpha_0_upper Layer
(defalias

    ;; top-left side
    U (tap-hold 100 200
        (multi (macro S-u) (layer-switch alpha_0))
        lctrl)
    O (tap-hold 100 200
        (multi (macro S-o) (layer-switch alpha_0))
        lalt)
    Y (tap-hold 100 200
        (multi (macro S-y) (layer-switch alpha_0))
        lmet)
  
    ;; bottom-left side
    I (multi (macro S-i) (layer-switch alpha_0))
    E (multi (macro S-e) (layer-switch alpha_0))
    A (multi (macro S-a) (layer-switch alpha_0))
    H (multi (macro S-h) (layer-switch alpha_0))
				
    ;; top-right side
    C (tap-hold 100 200
        (multi (macro S-c) (layer-switch alpha_0))
        lmet)
    D (tap-hold 100 200
        (multi (macro S-d) (layer-switch alpha_0))
        lalt)
    L (tap-hold 100 200
        (multi (macro S-l) (layer-switch alpha_0))
        lctrl)
       
  ;; bottom-right side
    S (multi (macro S-s) (layer-switch alpha_0))
    T (multi (macro S-t) (layer-switch alpha_0))
    R (multi (macro S-r) (layer-switch alpha_0))
    N (multi (macro S-n) (layer-switch alpha_0))

    ;; bottom mod
    lmod_1 (layer-switch alpha_0)
    rmod_1 (layer-switch alpha_0)
)


(deflayer alpha_0_upper
          @U    @O    @Y        @C    @D    @L
    @I    @E    @A    @H        @S    @T    @R    @N
                      @lmod_1   @rmod_1
)


;; alpha_1_upper Layer
(defalias
    ;; top-left side
    ;; comma and period use the same key as alpha_1 layer
    F (tap-hold 100 200
        (multi (macro S-f) (layer-switch alpha_0))
        lmet)
  
    ;; bottom-left side
    Q (multi (macro S-q) (layer-switch alpha_0))
    Z (multi (macro S-z) (layer-switch alpha_0))
    X (multi (macro S-x) (layer-switch alpha_0))
    P (multi (macro S-p) (layer-switch alpha_0))
				
    ;; top-right side
    W (tap-hold 100 200
        (multi (macro S-w) (layer-switch alpha_0))
        lmet)
    K (tap-hold 100 200
        (multi (macro S-k) (layer-switch alpha_0))
        lalt)
    J (tap-hold 100 200
        (multi (macro S-j) (layer-switch alpha_0))
        lctrl)
  
    ;; bottom-right side
    G (multi (macro S-g) (layer-switch alpha_0))
    M (multi (macro S-m) (layer-switch alpha_0))
    V (multi (macro S-v) (layer-switch alpha_0))
    B (multi (macro S-b) (layer-switch alpha_0))

    ;; bottom mod
    lmod_2 (layer-switch alpha_0)
    rmod_2 (layer-switch alpha_0)
)


(deflayer alpha_1_upper
          @,    @.    @F        @W    @K    @J
    @Q    @Z    @X    @P        @G    @M    @V    @B
                      @lmod_2   @rmod_2
)

;; sys Layer
(defalias
    tab (tap-hold 100 200 tab lshft)
    s_tab (tap-hold 100 200 S-tab lmet)
    c_bspc (tap-hold 100 200 C-bspc lmet)
    home (tap-hold 100 200 home pgup)
    end (tap-hold 100 200 end pgdn)
)

(deflayer sys
           lctrl @tab  @s_tab    @c_bspc  up    bspc
    @home  @end  lalt  esc       lft      down  rght  ret
                       caps      del
)

;; num Layer
(defalias
    pls (macro S-=)
)


(deflayer num
          -    0    @pls     4    5    6
    XX    1    2    3        7    8    9    XX
                    =        .
)

;; sym Layer

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
    und  (macro S--)

    astk (macro S-8)
)


(deflayer sym_0
          -     @<     @>        @}    @{    @exc
    @tld  @cln  [      ]         @rpn  @lpn  @und  @and
                =                ;
)
                       
(deflayer sym_1
          @pct  @astk @pls       @hsh  @dlr  @qst
    @crt  `     @dqt  '          @bar  @at   /     \
                      =          ;
)


    '';
}
