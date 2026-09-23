[_tb_system_call storage=system/_title_screen.ks]


;==============================
; タイトル画面
;==============================


[hidemenubutton]

[tb_clear_images]

[tb_keyconfig  flag="0"  ]

;標準のメッセージレイヤを非表示


[tb_hide_message_window  ]

;タイトル表示


[bg  time="500"  method="crossfade"  storage="Logo.png"  ]
[l  ]
[playbgm  volume="70"  time="1000"  loop="true"  storage="230804_healing4_loop.ogg"  ]
[tb_eval  exp="f.sb=0"  name="sb"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[bg  storage="samune.png"  ]
*title

[glink  color="btn_02_purple"  text="開始新遊戲"  x="242"  y="361"  size="20"  target="*start"  width="300"  height=""  _clickable_img=""  ]
[glink  color="btn_02_purple"  text="繼續遊戲"  x="245"  y="468"  size="20"  target="*load"  width="300"  height=""  _clickable_img=""  ]
[s  ]

;-------ボタンが押されたときの処理


*start

[cm  ]
[tb_keyconfig  flag="1"  ]
[jump  storage="scene1.ks"  target=""  ]
[s  ]

;--------ロードが押された時の処理


*load

[cm  ]
[showload]

[jump  target="*title"  storage=""  ]
[s  ]
