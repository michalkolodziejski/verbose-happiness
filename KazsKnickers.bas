 ; *****************************************************
 ; *
 ; *  Name: KAZ's Knickers - help Kaz in catching his trousers
 ; *  Version: 2021-11-01 1.0
 ; *
 ; *****************************************************
 ; *
 ; *  Programmer: Michał Kołodziejski
 ; *  Language: batari Basic v1.5
 ; *  System: Atari 2600 VCS
 ; *
 ; *****************************************************
 ; *
 ; *  Press fire to jump over incoming obstacles
 ; *
 ; *****************************************************
 
  ;***************************************************************
  ;
  ;  Kernel options.
  ; 
  set kernel_options playercolors player1colors pfcolors
  set tv ntsc

  ;***************************************************************
  ;
  ;  This program has 4 banks (16k/4k = 4 banks).
  ;
  set romsize 16k

  ;***************************************************************
  ;
  ;  Optimizations 
  ;
  set optimization inlinerand
  set optimization speed
  set optimization size
  set smartbranching on
  
  ;***************************************************************
  ;
  ;  Random numbers can slow down bankswitched games. This will
  ;  speed things up.
  ;
  /* set optimization noinlinedata */
  
  ;***************************************************************
  ;
  ;  Debug. The rem below is removed when I want to check to see
  ;  if I'm going over cycle count during tests.
  ;
  /* set debug cyclescore */

  ;****************************************************************
  ;
  ;  NTSC colors. Use these constants so you can quickly and
  ;  easily swap them out for PAL-60 colors.
  ;
  const _00 = $00
  const _02 = $02
  const _04 = $04
  const _06 = $06
  const _08 = $08
  const _0A = $0A
  const _0C = $0C
  const _0E = $0E
  const _10 = $10
  const _12 = $12
  const _14 = $14
  const _16 = $16
  const _18 = $18
  const _1A = $1A
  const _1C = $1C
  const _1E = $1E
  const _20 = $20
  const _22 = $22
  const _24 = $24
  const _26 = $26
  const _28 = $28
  const _2A = $2A
  const _2C = $2C
  const _2E = $2E
  const _30 = $30
  const _32 = $32
  const _34 = $34
  const _36 = $36
  const _38 = $38
  const _3A = $3A
  const _3C = $3C
  const _3E = $3E
  const _40 = $40
  const _42 = $42
  const _44 = $44
  const _46 = $46
  const _48 = $48
  const _4A = $4A
  const _4C = $4C
  const _4E = $4E
  const _50 = $50
  const _52 = $52
  const _54 = $54
  const _56 = $56
  const _58 = $58
  const _5A = $5A
  const _5C = $5C
  const _5E = $5E
  const _60 = $60
  const _62 = $62
  const _64 = $64
  const _66 = $66
  const _68 = $68
  const _6A = $6A
  const _6C = $6C
  const _6E = $6E
  const _70 = $70
  const _72 = $72
  const _74 = $74
  const _76 = $76
  const _78 = $78
  const _7A = $7A
  const _7C = $7C
  const _7E = $7E
  const _80 = $80
  const _82 = $82
  const _84 = $84
  const _86 = $86
  const _88 = $88
  const _8A = $8A
  const _8C = $8C
  const _8E = $8E
  const _90 = $90
  const _92 = $92
  const _94 = $94
  const _96 = $96
  const _98 = $98
  const _9A = $9A
  const _9C = $9C
  const _9E = $9E
  const _A0 = $A0
  const _A2 = $A2
  const _A4 = $A4
  const _A6 = $A6
  const _A8 = $A8
  const _AA = $AA
  const _AC = $AC
  const _AE = $AE
  const _B0 = $B0
  const _B2 = $B2
  const _B4 = $B4
  const _B6 = $B6
  const _B8 = $B8
  const _BA = $BA
  const _BC = $BC
  const _BE = $BE
  const _C0 = $C0
  const _C2 = $C2
  const _C4 = $C4
  const _C6 = $C6
  const _C8 = $C8
  const _CA = $CA
  const _CC = $CC
  const _CE = $CE
  const _D0 = $D0
  const _D2 = $D2
  const _D4 = $D4
  const _D6 = $D6
  const _D8 = $D8
  const _DA = $DA
  const _DC = $DC
  const _DE = $DE
  const _E0 = $E0
  const _E2 = $E2
  const _E4 = $E4
  const _E6 = $E6
  const _E8 = $E8
  const _EA = $EA
  const _EC = $EC
  const _EE = $EE
  const _F0 = $F0
  const _F2 = $F2
  const _F4 = $F4
  const _F6 = $F6
  const _F8 = $F8
  const _FA = $FA
  const _FC = $FC
  const _FE = $FE

  ;****************************************************************
  ;
  ;  PAL colors. Use this when you want to automatically convert
  ;  your NTSC colors to PAL-60 (if you were already using the
  ;  NTSC constants).
  ;
  /* const _00 = $00
  const _02 = $02
  const _04 = $04
  const _06 = $06
  const _08 = $08
  const _0A = $0A
  const _0C = $0C
  const _0E = $0E
  const _10 = $20
  const _12 = $22
  const _14 = $24
  const _16 = $26
  const _18 = $28
  const _1A = $2A
  const _1C = $2C
  const _1E = $2E
  const _20 = $20
  const _22 = $22
  const _24 = $24
  const _26 = $26
  const _28 = $28
  const _2A = $2A
  const _2C = $2C
  const _2E = $2E
  const _30 = $40
  const _32 = $42
  const _34 = $44
  const _36 = $46
  const _38 = $48
  const _3A = $4A
  const _3C = $4C
  const _3E = $4E
  const _40 = $60
  const _42 = $62
  const _44 = $64
  const _46 = $66
  const _48 = $68
  const _4A = $6A
  const _4C = $6C
  const _4E = $6E
  const _50 = $80
  const _52 = $82
  const _54 = $84
  const _56 = $86
  const _58 = $88
  const _5A = $8A
  const _5C = $8C
  const _5E = $8E
  const _60 = $A0
  const _62 = $A2
  const _64 = $A4
  const _66 = $A6
  const _68 = $A8
  const _6A = $AA
  const _6C = $AC
  const _6E = $AE
  const _70 = $C0
  const _72 = $C2
  const _74 = $C4
  const _76 = $C6
  const _78 = $C8
  const _7A = $CA
  const _7C = $CC
  const _7E = $CE
  const _80 = $D0
  const _82 = $D2
  const _84 = $D4
  const _86 = $D6
  const _88 = $D8
  const _8A = $DA
  const _8C = $DC
  const _8E = $DE
  const _90 = $B0
  const _92 = $B2
  const _94 = $B4
  const _96 = $B6
  const _98 = $B8
  const _9A = $BA
  const _9C = $BC
  const _9E = $BE
  const _A0 = $90
  const _A2 = $92
  const _A4 = $94
  const _A6 = $96
  const _A8 = $98
  const _AA = $9A
  const _AC = $9C
  const _AE = $9E
  const _B0 = $70
  const _B2 = $72
  const _B4 = $74
  const _B6 = $76
  const _B8 = $78
  const _BA = $7A
  const _BC = $7C
  const _BE = $7E
  const _C0 = $50
  const _C2 = $52
  const _C4 = $54
  const _C6 = $56
  const _C8 = $58
  const _CA = $5A
  const _CC = $5C
  const _CE = $5E
  const _D0 = $30
  const _D2 = $32
  const _D4 = $34
  const _D6 = $36
  const _D8 = $38
  const _DA = $3A
  const _DC = $3C
  const _DE = $3E
  const _E0 = $20
  const _E2 = $22
  const _E4 = $24
  const _E6 = $26
  const _E8 = $28
  const _EA = $2A
  const _EC = $2C
  const _EE = $2E
  const _F0 = $20
  const _F2 = $22
  const _F4 = $24
  const _F6 = $26
  const _F8 = $28
  const _FA = $2A
  const _FC = $2C
  const _FE = $2E */

  ;```````````````````````````````````````````````````````````````
  ;  Makes better random numbers.
  ;
  /* dim rand16 = z */

  ; The playfield uses 4 bytes for each row, so setting the height to 10 would free up 8 bytes that could then be used as variables. These variables are available as var0-var7.
  /* const pfres=11 */

  dim musicPointer=s
  dim musicTimer=y

  dim bmp_48x1_3_color = _F8

  const colubkFIXED = _6E

  const pfwidth=4	  
  const scorefade=0

  dim gravity=l
  dim antigravity=n

  /* dim player0state=m */
  dim jumping=m
  
  ;```````````````````````````````````````````````````````````````
  ; Animation counters.
  ;
  dim _Master_Counter = o
  dim _Frame_Counter = p

  dim player0frame = q
  /* dim player1frame = r */
  dim player1xOLD = r
  
  dim player0state=z
  /* dim falling=z */
  /* dim player0dead = s */
  /* dim game_stage = y ; 2 - GAME START COUNTER, 3 - GAME */


  dim bmp_48x1_2_index=t
  dim frame=u

  rem *** a variable to color cycle the "press fire" text
  dim bmp_48x1_2_color = w
  dim bmp_48x1_3_index = v

  dim barrel_speed = x

; =====================================================================
; TIATracker batari Basic and 7800basic Variables
; These variables need to be included at the top of your game
; If these clash with existing variables change their var reference
; =====================================================================

  dim tt_timer = a                   ; current music timer value
  dim tt_cur_pat_index_c0 = b        ; current pattern index into tt_SequenceTable
  dim tt_cur_pat_index_c1 = c
  dim tt_cur_note_index_c0 = d       ; note index into current pattern
  dim tt_cur_note_index_c1 = e
  dim tt_envelope_index_c0 = f       ; index into ADSR envelope
  dim tt_envelope_index_c1 = g
  dim tt_cur_ins_c0 = h              ; current instrument
  dim tt_cur_ins_c1 = i
  dim tt_ptr = j.k

  const BROWN           = _12
  const YELLOW          = _1E
  const ORANGE          = _3E
  const RED             = _44
  const GREEN           = _D6
  const BLUE            = _94
  const YELLOW_GREEN    = _C8
  const PINK            = _4E
  const BLACK           = _00
  const GREY            = _06
  const WHITE           = _0E
  const DARK_GREY       = GREY   - $04
  const DARK_BLUE       = BLUE   - $02
  const DARK_GREEN      = GREEN  - $04
  const DARK_RED        = RED    - $06

  const BARREL_DARK     = _1A ;$CA ;$1A
  const BARREL_NORMAL   = _1C ;$CC ;$1C

  const BODY = PINK
  const HAIR = BROWN
  const TSHIRT = RED

  ;***************************************************************
  ;
  ;  Clears 24 of the normal 26 variables (fastest way).
  ;  The variable y holds a bit that should not be cleared. The
  ;  variable z is used for random numbers in this program and
  ;  clearing it would mess up those random numbers.
  ;
  a = 0 : b = 0 : c = 0 : d = 0 : e = 0 : f = 0 : g = 0 : h = 0 : i = 0
  j = 0 : k = 0 : l = 0 : m = 0 : n = 0 : o = 0 : p = 0 : q = 0 : r = 0
  s = 0 : t = 0 : u = 0 : v = 0 : w = 0 : x = 0
  var0 = 0 : var1 = 0 : var2 = 0 : var3 = 0 : var4 = 0 : var5 = 0 : var6 = 0 : var7 = 0

  ;***************************************************************
  ;
  ;  Mutes volume of both sound channels.
  ;
  AUDV0 = 0 : AUDV1 = 0


  ;***************************************************************
  ;
  ;  Initialise tiatracker
  gosub tiatrackerinit

  ;***************************************************************
  ;
  ;  PROGRAM START/RESTART
  ;
  ;
__INIT
  frame=0
  bmp_48x1_2_index=0
  bmp_48x1_3_color=_FE
  bmp_48x1_2_color=_B2

__Game_Stage_INIT
  gosub __Prepare_Game_Stage

__Game_Stage_Title_Screen
  gosub titledrawscreen bank2
  frame=frame+1
  temp1=frame&%00000111
  if temp1=0 && bmp_48x1_2_index<191 then bmp_48x1_2_index=bmp_48x1_2_index+1
  if joy0fire || switchreset then goto __After_Title_Screen

  rem *** make the "press fire to start" color-cycle
  bmp_48x1_3_color = bmp_48x1_3_color + 1

  temp6 = frame // 128
  if temp6 = 0 then bmp_48x1_3_index = 11 else bmp_48x1_3_index = 0
  if temp1 = 0 && bmp_48x1_2_index = 191 then bmp_48x1_2_index=0
  
  ;***************************************************************
  ;
  ;  Play music track
  ;
  if switchleftb then gosub tiatrackerplay; else AUDV0 = 0 : AUDV1 = 0

  goto __Game_Stage_Title_Screen
  
__After_Title_Screen

  gosub __PLAYFIELD

  ;***************************************************************
  ;***************************************************************
  ;
  ;  MAIN LOOP (MAKES THE PROGRAM GO)
  ;
  ;

  z{2} = 1
  frame = 0
  z{0} = 1
__Main_Loop

  ;***************************************************************
  ;
  ;  Controls animation speed.
  ;

  _Master_Counter = _Master_Counter + 1

  if _Master_Counter < 6 then goto __Skip_Frame_Counter
  _Frame_Counter = _Frame_Counter + 1 : _Master_Counter = 0
  if _Frame_Counter = 5 then _Frame_Counter = 0

__Skip_Frame_Counter
  
  if switchreset then reboot

  if !z{1} then pfscroll left

  if z{2} then gosub __Prepare_Game_Counter_Stage : goto __Draw_Frame
  
  if !z{1} then score=score+1
  if !z{1} then gosub __Game_Stage
  if z{1} then gosub __Game_Over_Stage

  if jumping>0 && jumping<20 then jumping=jumping+1 : player0y=player0y-antigravity : if antigravity>1 then antigravity=antigravity-1 

  if jumping>19 then jumping=21 : gravity=gravity+1 : player0y=player0y+gravity
  if player0y>56 then player0y=56 : z{0}=0 : gravity=255 : jumping=0
  if !joy0fire && gravity=255 then gravity=0 : jumping=0

  ;***************************************************************
  ;
  ;  Third sprite trick
  ;
  if !x{0} && !z{1} then x{0}=1 : goto _Player_SpriteB
  player1y=62 : player1x=player1xOLD : x{0}=0 : goto __Draw_Frame
  
_Player_SpriteB
  temp1 = rand&1
  temp2 = rand&1
  player1xOLD=player1x
  player1x=120 : player1y=24
  player1x=player1x+temp1 : player1y=player1y+temp2
  player1x=player1x-temp2 : player1y=player1y-temp1
  
  player1:
  %00000000
  %00000110
  %11100111
  %01101110
  %11110111
  %01110110
  %11101111
  %01110110
  %11110111
  %01110110
  %11110111
  %01110110
  %11110111
  %00111110
  %01111111
  %00111110
  %01111111
  %00111110
  %01111111
  %01111000
  %00000000
end

  player1color:
  BLUE
  BLUE
  BLUE
  BLUE
  BLUE
  BLUE
  BLUE
  BLUE
  BLUE
  BLUE
  BLUE
  BLUE
  BLUE
  BLUE
  BLUE
  BLUE
  BLUE
  BLUE
  DARK_BLUE
  DARK_BLUE
  DARK_BLUE
end

__Draw_Frame
  /* NUSIZ1=$02 */
  drawscreen

  ;***************************************************************
  ;
  ;  Check for collisions
  ;
  if collision(player0,player1) then z{1}=1

  ;***************************************************************
  ;
  ;  Play music track
  ;
  if switchleftb && !z{1} then gosub tiatrackerplay; else AUDV0 = 0 : AUDV1 = 0

  if !z{1} && joy0fire && jumping=0 && gravity=0 then antigravity=7 : jumping=1
  if !z{1} && jumping>0 && !joy0fire then jumping=21
  
  ;***************************************************************
  ;
  ;  Block joystick directional controls
  ;
  if joy0right then player0x = player0x
  if joy0left then player0x = player0x
  if joy0up then player0y = player0y
  if joy0down then player0y = player0y

  ;***************************************************************
  ;
  ;  Animate player0
  ;
  if !z{2} then gosub player0anim

  ;***************************************************************
  ;
  ;  Animate player1
  ;
  if !z{2} then gosub player1anim

  goto __Main_Loop

player0anim_death
  frame=frame+1
  temp1 = rand&2
  temp2 = rand&2
  
  if player0y>1 then player0y = player0y-1 : player0x = player0x+temp1 : player0x = player0x-temp2

  if player0y<0 then 
    if frame=25 then reboot

  return thisbank

__Prepare_Game_Counter_Stage
    frame=frame+1
    player0x=50
    player0y=50

    if frame > 2 && frame < 64 then gosub __P0_LETTER3
    if frame > 63 && frame < 128 then gosub __P0_LETTER2 
    if frame > 127 && frame < 192 then gosub __P0_LETTER1

    if frame > 192 then gosub __Prepare_Game_Stage : z{2}=0

    NUSIZ0=$07

    player0color:
  _9A
	_9A
	_9C
	_9A
	_9C
	_9C
	_9E
	_9C
	_9E
	_2E
	_9C
	_2A
	_9C
	_2A
	_26
	_28
	_28
	_22
	_26
	_22
	_22
end
    return thisbank

__Prepare_Game_Stage
  player0x = 32
  player0y = 16

  player1x = 5
  player1y = 62

  z{1} = 0 : z{2} = 0 : z{3} = 0 : gravity = 255 : jumping=21 : antigravity = 0

  scorecolor = _B8 ;$8E
  /* $1E & $FE - gold */
  /* $88 - blue */
  /* $48 - red */

  return thisbank

player0anim
  player0frame = _Frame_Counter
  if !z{1} && jumping = 0 then on player0frame gosub __P0_RUN1 __P0_RUN2 __P0_RUN3 __P0_RUN4 __P0_RUN5
  if !z{1} && jumping > 0 then on player0frame gosub __P0_RUN5 __P0_RUN5 __P0_RUN5 __P0_RUN5 __P0_RUN5
  
  if z{1} && _Frame_Counter > 1 then gosub player0anim_death 
  if z{1} then on player0frame gosub __P0_DEATH1 __P0_DEATH2 __P0_DEATH1 __P0_DEATH2 __P0_DEATH1 
  if z{0} then gosub __P0_IDLE1
  
  return thisbank

player1anim
  if x{0} then goto _SKIP

  if !z{1} then player1x = player1x-barrel_speed-2
  temp1 = rand&25
  if player1x < 16 then player1x = 128+temp1 : barrel_speed=rand&4

  player1xOLD = player1x

_SKIP
  if !z{1} then on player0frame gosub __P1_ROLL1 __P1_ROLL2 __P1_ROLL1 __P1_ROLL2 __P1_ROLL1
  if z{1} then COLUP1 = rand
  return thisbank

__Game_Stage 
  COLUP0 = $EE
  COLUP1 = $EE

  player0color:
  BODY
  BODY
  BODY
  BODY
  BODY
  BODY
  BODY
  BODY
  BODY
  BODY
  TSHIRT
  TSHIRT
  TSHIRT
  TSHIRT
  TSHIRT
  TSHIRT
  TSHIRT
  BODY
  BODY
  BODY
  HAIR
end

    player1color:
    BARREL_NORMAL
    BARREL_NORMAL
    BARREL_NORMAL
    BARREL_NORMAL
    BARREL_NORMAL
    BARREL_NORMAL
    BARREL_NORMAL
    BARREL_DARK
    BARREL_DARK
    BARREL_DARK
    BARREL_DARK
    BARREL_DARK
    BARREL_DARK
    BARREL_DARK
    BARREL_DARK
end
  return thisbank

__Game_Over_Stage
  gosub __PLAY_SOUND

  jumping = 0
  antigravity = 0
  gravity = 0

  COLUBK = _0C
  COLUPF = _0C

  scorecolor = _0C

  player0color:
    WHITE
    WHITE
    WHITE
    WHITE
    WHITE
    WHITE
    WHITE
    WHITE
    WHITE
    WHITE
    WHITE
    WHITE
    WHITE
    WHITE
    WHITE
    WHITE
    WHITE
    WHITE
    YELLOW
    YELLOW
    YELLOW
end 

  pfcolors:
    _0C
    _08
    _06
    _04
    _02
    _00
    _0C
    _0C
    _0A
    _08
    _06
    _04
end

  player1color:
    GREY
    GREY
    GREY
    GREY
    GREY
    GREY
    GREY
    DARK_GREY
    DARK_GREY
    DARK_GREY
    DARK_GREY
    DARK_GREY
    DARK_GREY
    DARK_GREY
    DARK_GREY
end
  return thisbank

  ;***************************************************************
  ;
  ;  Sprites
  ;
__P0_RUN5 
  player0:
  %00000000
  %00000000
  %00000000
  %00000000
  %00000000
  %00110011
  %01110010
  %11011010
  %00011110
  %00011100
  %00011000
  %01011000
  %01011000
  %01111100
  %00111110
  %00011010
  %00011000
  %00010000
  %00011000
  %00011000
  %00011000
  %00000000
end
  return thisbank

__P0_RUN4
  player0:
  %00000000
  %10000000
  %10000000
  %11000011
  %01100010
  %01100010
  %00110110
  %00111110
  %00011100
  %00011000
  %00011000
  %00111100
  %00111110
  %00111010
  %00111000
  %00011000
  %00011000
  %00010000
  %00011000
  %00011000
  %00011000
  %00000000
end
  return thisbank

__P0_RUN3
  player0:
  %00010000
  %00100000
  %00100010
  %00100100
  %00110100
  %00110010
  %00010110
  %00011110
  %00011100
  %00011000
  %00011000
  %00011100
  %00011100
  %00011000
  %00011000
  %00011000
  %00011000
  %00010000
  %00011000
  %00011000
  %00011000
  %00000000
end
  return thisbank

__P0_RUN2
  player0:
  %00001100
  %00001000
  %00101000
  %00101000
  %00111110
  %00001010
  %00001110
  %00011100
  %00011000
  %00011000
  %00011100
  %00011100
  %00011000
  %00011000
  %00011000
  %00011000
  %00011000
  %00010000
  %00011000
  %00011000
  %00011000
  %00000000
end
  return thisbank

__P0_RUN1
  player0:
  %00000000
  %00000010
  %01000011
  %01000100
  %01110100
  %00010100
  %00011100
  %00011100
  %00011000
  %00011000
  %00011000
  %00111100
  %00111110
  %00111010
  %00111000
  %00011000
  %00011000
  %00010000
  %00011000
  %00011000
  %00011000
  %00000000
end
  return thisbank

; IDLE
__P0_IDLE1
  player0:
  %00011000
  %00010000
  %00011100
  %00011000
  %00011000
  %00011000
  %00011000
  %00011000
  %00011000
  %00011000
  %00011000
  %00011000
  %00011100
  %00011110
  %00011010
  %00011000
  %00011000
  %00010000
  %00011000
  %00011000
  %00011000
  %00000000
end
  return thisbank

; JUMP
__P0_JUMP1
  player0:
  %00000000
  %00000000
  %00000000
  %00000000
  %00000000
  %00000000
  %01100011
  %11110010
  %11110110
  %11011100
  %11000000
  %11000000
  %11000000
  %11000000
  %11000000
  %11110000
  %11010000
  %10010000
  %11010000
  %11010000
  %11000000
  %00000000
end
  return thisbank

__P0_DEATH1
  player0:
  %00010000
  %00001000
  %00011000
  %00010000
  %00011000
  %00011000
  %01011010
  %00011000
  %01011010
  %11111111
  %11111111
  %11011011
  %11011011
  %10111101
  %10111101
  %10010101
  %10111101
  %00011000
  %00100100
  %00011000
  %00000000
end
  return thisbank

__P0_DEATH2
  player0:
  %00001000
  %00010000
  %00001000
  %00011000
  %10011001
  %10011001
  %01011010
  %10011001
  %11011011
  %11111111
  %11111111
  %11011011
  %11011011
  %10111101
  %10111101
  %00101000
  %00111100
  %00011000
  %00100100
  %00011000
  %00000000
end
  return thisbank

__P1_ROLL1
  player1:
  %00000000
  %00011000
  %00100100
  %01011010
  %01011010
  %01011010
  %01100110
  %01111110
  %01011110
  %01110110
  %01111110
  %01011110
  %01110110
  %00111100
  %00011000
  %00000000
end
  return thisbank

__P1_ROLL2
  player1: 
  %00000000
  %00011000
  %00100100
  %01000010
  %01111110
  %01000010
  %01100110
  %01111110
  %01111010
  %01101110
  %01111110
  %01111010
  %01101110
  %00111100
  %00011000
  %00000000
end
  return thisbank

__P1_DISK1
  player1:
  %00000000
  %00000000
  %00000000
  %00000000
  %00000000
  %11111111
  %11110111
  %11110111
  %11110111
  %11111111
  %11100111
  %11000011
  %11100111
  %01111111
  %01110101
  %11101010
  %11111111
  %00000000
  %00000000
  %00000000
  %00000000
end
  return thisbank
  
__P0_LETTER3
    player0:
    %00011111
    %00011111
    %00011111
    %00011111
    %00000001
    %00000001
    %00000001
    %00000001
    %00001111
    %00001111
    %00001111
    %00001111
    %00000001
    %00000001
    %00000001
    %00000001
    %00011111
    %00011111
    %00011111
    %00011111
    %00000000
    %00000000
    %00000000
    %00000000
end
    return thisbank

__P0_LETTER2
    player0:
    %00011111
    %00011111
    %00011111
    %00011111
    %00010000
    %00010000
    %00010000
    %00010000
    %00011111
    %00011111
    %00011111
    %00011111
    %00000001
    %00000001
    %00000001
    %00000001
    %00011111
    %00011111
    %00011111
    %00011111
    %00000000
    %00000000
    %00000000
    %00000000
end
    return thisbank

__P0_LETTER1
    player0:
    %00011111
    %00011111
    %00011111
    %00011111
    %00000100
    %00000100
    %00000100
    %00000100
    %00000100
    %00000100
    %00000100
    %00000100
    %00000100
    %00000100
    %00000100
    %00000100
    %00011100
    %00011100
    %00011100
    %00011100
    %00000000
    %00000000
    %00000000
    %00000000
end
    return thisbank

__PLAYFIELD
  playfield:
  XXXXX..XXXXXX.XXXXX..XXXXXXX..XX ; 1
  .XXX...X...XXXXXX.XX.XXXXX.X.XX. ; 2 
  .XXXXX..XXX..X......X..X....X.X. ; 3
  ..XXXXX..XX.....XX.XX.X.X.XXX... ; 4
  XXX.X.X....X...X.......X.....X.X ; 5
  ....XX..XX...XXX.X.X..X...X.X.X. ; 6
  .X.XXX....X...XXX.XX..X...X....X ; 7
  ...X...X.XX.X.X.X.XX.XXXX...XXXX ; 8
  .X.X.X.XX.X..X...X..XX....XX.XX. ; 9
  XXXX.XX..XX..XXX..XX.XX..X..XXX. ; 10
  .X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X ; 11
  X.X.X.X.X.X.X.X.X.X.X.X.X.X.X.X. ; 12
end

  /* if _Frame_Counter = 5 then */
    pfcolors:
    _6E
    _68
    _66
    _64
    _62
    _60
    _6E
    _6E
    _6C
    _6A
    _68
    _66
end

  if _Frame_Counter = 5 then 
    COLUBK = colubkFIXED

  return thisbank

__PLAY_SOUND
  if musicTimer = 0 then gosub __SFX_changeMusicNote
  musicTimer = musicTimer - 1
  return thisbank

__SFX_changeMusicNote
  AUDV1=0
  AUDV0=15
  AUDC0=15
  AUDF0 = __SFX_WAHWAHWAH[musicPointer]

  if __SFX_WAHWAHWAH[musicPointer] = $FF then AUDV0 = 0 else AUDV0 = 8
  musicPointer = musicPointer + 1
  musicTimer = __SFX_WAHWAHWAH[musicPointer]
  musicPointer = musicPointer + 1
  if musicPointer > 15 then musicPointer = 0
 return

 data __SFX_WAHWAHWAH
 13,25,-1,1,14,25,-1,1,15,25,-1,1,16,60,-1
end

  ;***************************************************************
  ;
  ;  TIATracker player
  ;
  asm
  include "tiatracker/tiatracker.asm"
end

return

  bank 2
  ;***************************************************************
  ;
  ;  Titlescreen KERNEL
  ;
  asm
  include "titlescreen/asm/titlescreen.asm"
end