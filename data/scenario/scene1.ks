[_tb_system_call storage=system/_scene1.ks]

[playbgm  volume="70"  time="1000"  loop="true"  storage="230804_healing4_loop.ogg"  ]
[cm  ]
[bg  storage="room.jpg"  time="1000"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
我的名字是阿航，全班最拉風的男人。[p]
『那就禮拜日九點車站見吧～』[r]
『好，到時候見囉』[p]
終於成功了......![p]
課金課了半年滑交友軟體，終於約到一個妹子了......！[p]
下禮拜日......這次一定要脫離單身！[p]
[_tb_end_tyrano_code]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[mask_off  time="800"  effect="fadeOut"  ]
[bg  time="1000"  method="crossfade"  storage="eki.jpg"  ]
[tb_start_text mode=1 ]
到了禮拜日.....[p]
[_tb_end_text]

[tb_show_message_window  ]
[tb_start_text mode=1 ]
緊張到提早一個小時就來了......[p]
先看個Youtube打發時間好了。[p]
『好 那今天呢 風光明媚風和日麗 因爲我以前在唸書的時候 我常常覺得很奇怪就是我到學校然後看他們吃什麼早餐都是吃一份蛋餅配一杯奶茶[p]
或是 一個漢堡配一杯奶茶 或是一份蘿蔔糕配一杯奶茶 每次吃完都說啊我吃飽了我心裡就想說：「這真的可以吃飽？」[p]
因爲你知道我通常早餐我都點3份可能 3個 我想說這樣就能吃飽？一定是唬人的嘛 我才想到說大家都是要面子的：「沒有沒有 我都帶好幾份去吃」[p]
「那是你嘛 你不要臉嘛 我說正常的」 我就想說 不行 我們一定要做個企劃 就是有一天要讓自己的胃滿足 大滿足 所以今天的企劃就是 早餐吃到飽』[p]
[_tb_end_text]

*HASHIRUOTO02

[tb_start_text mode=1 ]
#？？？
抱歉久等了~！[p]
#
來了......！至少聽聲音不是男的太好了。[p]
[_tb_end_text]

[chara_show  name="鳳梨"  time="1000"  wait="true"  storage="chara/1/jirai_girl_normal.png"  width="1024"  height="1536"  left="120"  top="0"  reflect="false"  ]
[tb_start_text mode=1 ]
#？？？
你是阿航[p]
#阿航
啊你.....啊你就是那個鳳梨嗎？[r]對對對，、我是那個啦、阿、阿航啦。你、你好可愛喔。[p]
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_angry.png"  ]
[tb_start_text mode=1 ]
#鳳梨
欸，不是吧？你怎麼只早到一個小時？你要遲到你要先講啊！[p]
#阿航
欸......？[p]
#鳳梨
好啊快說你剛剛是不是差點遲到？[p]
[_tb_end_text]

[glink  color="ts19"  storage="scene1.ks"  size="30"  target="*000sbplus2"  text="那我也要睡啦！"  autopos="true"  x="100"  y="100"  width="400"  height="400"  _clickable_img=""  ]
[glink  color="ts19"  storage="scene1.ks"  size="30"  target="*00sbminus2"  autopos="true"  text="我明明就提早到了"  width="400"  height="400"  ]
[s  ]
*000sbplus2

[tb_eval  exp="f.sb+=2"  name="sb"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#阿航
那我也要睡啦！[p]
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_happy.png"  ]
[tb_start_text mode=1 ]
#鳳梨
哈哈哈哈哈！你有病喔！現在才早上十點半你是要睡去哪裡啦！你是豬喔！[p]
#阿航
???[p]
#鳳梨
今天請你多多指教啦！[p]
#阿航
我、我才是......[p]
[_tb_end_text]

[tb_start_tyrano_code]
[p_notify text="神罰值+2" width=300]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="効果音1.ogg"  ]
[jump  storage="scene1.ks"  target="*001"  ]
*00sbminus2

[tb_eval  exp="f.sb-=2"  name="sb"  cmd="-="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="limit.ks"  target=""  ]
[tb_start_text mode=1 ]
#阿航
欸你是不會看時間喔?我明明就提早到了你是在叫什麼叫?[p]
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_angry.png"  ]
[font  size="30"  color="0x000000"  bold="true"  ]
[tb_start_text mode=1 ]
#鳳梨
我有說可以嗎?!你是在叫什麼叫啦?![p]
[_tb_end_text]

[resetfont  ]
[tb_start_text mode=1 ]
#阿航
???[r][p]
#鳳梨
我從新竹 我從桃園 我從我從桃園新竹 我從桃園新竹 我從桃園新竹 好我從桃園新竹[p]
我從桃園新竹 我從桃園新竹 我從桃園新竹 我從桃園新竹 我從桃園新竹[p]
我從桃園新竹到台北跟你約會  我從桃園新竹要坐火車跟你約會到台北 [p]
然後你說約會完要跟朋友打LOL 然後你說要我搭計程車回桃園新竹[p]
#阿航
???[p]
......[p]
對、對不起......[p]

[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_jitome.png"  ]
[tb_start_text mode=1 ]
#鳳梨
......[p]
開個小玩笑也在那邊認真。[p]
#阿航
???[p]
[_tb_end_text]

[tb_start_tyrano_code]
[p_notify text="神罰值-2" width=300]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="効果音2.ogg"  ]
[jump  storage="scene1.ks"  target="*001"  ]
*001

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_normal.png"  ]
[tb_start_text mode=1 ]
#鳳梨
那我們要先去哪裡？[p]
#阿航
不、不然就先去吃火鍋好了。[p]
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_jitome.png"  ]
[tb_start_text mode=1 ]
#鳳梨
現在才十點半會不會太早了？[p]
#阿航
不會啦，我們等中午再去吃還要排隊，早點去吃早點吃完可以逛更多地方。[p]
#鳳梨
......[p]
哼，我本來還想質疑你的時間觀念。但看你知道要避開人潮，算你有觀念啦。[p]
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_normal.png"  ]
[tb_start_text mode=1 ]
#阿航
對、對啊，早去早享受嘛。[p]
#鳳梨
反正我一個人也吃不到低消，偶爾吃個火鍋也不虧啦。[p]
#阿航
(看來是順利混過去了)[p]
(不過這個妹子雖然可愛，但好像很愛講迷因，所以我也該從這下手......？)[p]
#
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="ekimae-asa.jpg"  ]
[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_happy.png"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="ドバトの鳴き声.mp3"  ]
[tb_image_show  time="1000"  storage="default/pigeon.png"  width="287"  height="287"  x="83"  y="177"  _clickable_img=""  name="img_52"  ]
[tb_start_text mode=1 ]
#鳳梨
你看有叔叔在餵鴿子欸。[p]
[_tb_end_text]

[glink  color="ts19"  storage="scene1.ks"  size="30"  autopos="true"  text="還敢下來啊！冰鳥！！！"  x="100"  y="100"  width="400"  height="400"  _clickable_img=""  target="*go00"  ]
[glink  color="ts19"  storage="scene1.ks"  size="30"  text="佛心公司！佛心公司！"  target="*01sbplus2"  width="400"  height="400"  autopos="true"  ]
[s  ]
*go00

[tb_start_text mode=1 ]
#阿航
瑞斯叔叔開墮啦！還趕下來啊冰鳥！！！洗咧哈囉！[p]
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_troubled.png"  ]
[tb_start_text mode=1 ]
#鳳梨
你在說什麼啊？[p]
#阿航
那是陌生人的梗，你是不懂走位的動粉是不是？[p]
[_tb_end_text]

[jump  storage="die.ks"  target=""  ]
*01sbplus2

[tb_start_text mode=1 ]
#阿航
佛心公司╰(⊙д⊙)╮佛心公司╭(⊙д⊙)╯欸阿伯你這波福利送很大喔！[p]
#
我二話不說衝到叔叔面前開始跳起神秘的舞蹈。[p]
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_happy.png"  ]
[tb_start_text mode=1 ]
#鳳梨
佛心公司╰(⊙д⊙)╮佛心公司╭(⊙д⊙)╯[p]
#叔叔
你們也要吃麵包喔？[p]
#阿航
沒、沒事，等等我們要吃火鍋，不用了。[p]
#叔叔
......？[p]
#鳳梨
只有聊天室的智障兒才會謝謝叔叔的麵包啦！[p]
#叔叔
媽的艾蜜莉亞臭G8。[p]
#
說完他便帶著麵包跟鴿子走了。[p]
[_tb_end_text]

[tb_image_hide  time="1000"  ]
[tb_eval  exp="f.sb+=2"  name="sb"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_start_tyrano_code]
[p_notify text="神罰值+2" width=300]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="効果音1.ogg"  ]
[tb_start_text mode=1 ]
#鳳梨
他在說什麼啊？[p]
#阿航
就是某個公主病的動漫角色。[p]
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_normal.png"  ]
[tb_start_text mode=1 ]
#鳳梨
哦。[p]
那我們走吧。[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="shoutenkai.jpg"  ]
[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_troubled.png"  ]
[tb_start_text mode=1 ]
#鳳梨
好熱喔......[p]
#阿航
台灣就這麼熱忍耐一下吧，再走一下就到到了。[p]
#
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_angry.png"  ]
[tb_start_text mode=1 ]
#鳳梨
女生會掉妝啊.....[p]
#阿航
不然我查一下有沒有什麼邊吹冷氣邊抄近路的地方。[p]
#
我打開手機打算看地圖。[p]
#阿航
啊......[p]
#
昨天充電時線沒插好導致沒充到什麼電，剩下10%了......[p]
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_normal.png"  ]
[tb_start_text mode=1 ]
#鳳梨
怎麼了嗎？[p]
#阿航
我手機快沒電了，我去那邊借個行充。[p]
#
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_jitome.png"  ]
[tb_start_text mode=1 ]
#鳳梨
那你要快點回來喔。[p]
#阿航
當然......![p]
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="hasiru.mp3"  ]
[bg  time="1000"  method="crossfade"  storage="konbini.jpg"  ]
[stopse  time="1000"  buf="0"  ]
[playse  volume="50"  time="1000"  buf="0"  storage="charm.mp3"  ]
[tb_start_text mode=1 ]
#阿航
哈啊......哈啊......哈啊......[p]
#
這裡應該有行充......！[p]
[_tb_end_text]

[tb_image_show  time="1000"  storage="default/portable-charger_black.png"  width="420"  height="420"  x="40"  y="94"  _clickable_img=""  name="img_88"  ]
[tb_start_text mode=1 ]
#
有了......！[p]
#阿航
趕快更新APP......！[p]
#
...[p]
......[p]
.........[p]
#阿航
靠北啊這間店網路怎麼那麼差。[p]
#
借個行充為什麼這麼麻煩啊......！[p]
[_tb_end_text]

[playse  volume="50"  time="1000"  buf="0"  storage="charm.mp3"  ]
[chara_show  name="鳳梨"  time="1000"  wait="true"  storage="chara/1/jirai_girl_angry.png"  width="1024"  height="1536"  left="484"  top="-40"  reflect="false"  ]
[tb_start_text mode=1 ]
#阿航
啊，我在更新APP，等我一下──[p]
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_angry02.png"  ]
[font  size="40"  color="0x000000"  bold="true"  ]
[quake  time="300"  count="3"  hmax="30"  wait="false"  ]
[tb_start_text mode=1 ]
#鳳梨
欸不是吧！阿航！你在吹冷氣！[p]
[_tb_end_text]

[resetfont  ]
[tb_start_text mode=1 ]
#阿航
我、我是要借行充所以在更新APP啦......[p]
[_tb_end_text]

[font  size="40"  color="0x000000"  bold="true"  ]
[quake  time="300"  count="5"  hmax="0"  wait="false"  vmax="50"  ]
[tb_start_text mode=1 ]
#鳳梨
你不會更新你要先講啊！手機要更新你要先講啊！[p]
你以為我喜歡在外面一邊掉妝一邊等你更新是不是？！[p]
[_tb_end_text]

[resetfont  ]
[glink  color="ts19"  storage="scene1.ks"  size="30"  text="你掉妝是我問題喔？"  autopos="true"  target="*02sbplus2"  width="400"  height="400"  ]
[glink  color="ts19"  storage="scene1.ks"  size="30"  text="跟手機切割"  target="*02sbminus2"  autopos="true"  width="400"  height="400"  ]
[s  ]
*02sbplus2

[tb_start_text mode=1 ]
#阿航
你叫什麼叫啦！你掉妝是我問題喔？煩死了啦！拿去啦！[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="huku.mp3"  ]
[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_surprised.png"  ]
[tb_start_text mode=1 ]
#
我立刻把自己短外套蓋在他頭上好幫她遮住外面照進來的陽光。[p]
#阿航
店員，我直接買一個行充啦！[p]
[_tb_end_text]

[tb_image_hide  time="1000"  ]
[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_jitome.png"  ]
[tb_start_text mode=1 ]
#鳳梨
......[p]
......嘴巴那麼臭結果還不是貼心地跟豬一樣。[p]
但你這外套真他媽很臭欸。[p]
[_tb_end_text]

[tb_eval  exp="f.sb+=2"  name="sb"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_start_tyrano_code]
[p_notify text="神罰值+2" width=300]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="効果音1.ogg"  ]
[jump  storage="scene1.ks"  target="*002"  ]
*02sbminus2

[tb_start_text mode=1 ]
#阿航
好了啦！這台破手機整天在關鍵時刻卡更新、戳隊友。[p]
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_jitome.png"  ]
[tb_image_hide  time="1000"  ]
[tb_start_text mode=1 ]
#阿航
走，我們直接去火鍋店，這台陌生人留他在這邊洗洗睡囉！[p]
#
說完，我把手機丟在便利商店轉頭就走。[p]
#鳳梨
......[p]
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_surprised.png"  ]
[tb_start_text mode=1 ]
#鳳梨
欸，不是吧？阿航。[p]
你把手機丟在那裡，等一下走丟了──[p]
#阿航
......[p]
#鳳梨
你要去哪裡？你是小丑是不是？！[p]
[_tb_end_text]

[tb_eval  exp="f.sb-=2"  name="sb"  cmd="-="  op="t"  val="2"  val_2="undefined"  ]
[tb_start_tyrano_code]
[p_notify text="神罰值-2" width=300]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="効果音2.ogg"  ]
[jump  storage="scene1.ks"  target="*002"  ]
*002

[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="shoutenkai.jpg"  ]
[playse  volume="50"  time="1000"  buf="0"  storage="charm.mp3"  ]
[bg  time="1000"  method="crossfade"  storage="Table.jpg"  ]
[chara_show  name="鳳梨"  time="500"  wait="true"  storage="chara/1/jirai_girl_normal.png"  width="479"  height="719"  left="490"  top="169"  reflect="false"  ]
[tb_image_show  time="500"  storage="default/table02.png"  width="1339"  height="753"  x="-10"  y="12"  _clickable_img=""  name="img_135"  ]
[tb_start_text mode=1 ]
#服務生
歡迎光臨，我先跟兩位介紹一下。[r][p]
我們一桌的最低消費是650元，湯底一個人150元。請問要點什麼？[p]
#鳳梨
我都可以，你點吧。[p]
[_tb_end_text]

[glink  color="ts19"  storage="scene1.ks"  size="30"  text="客家吃法"  target="*03sbplus2"  width="400"  height="400"  autopos="true"  ]
[glink  color="ts19"  storage="scene1.ks"  size="30"  text="換店"  target="*03sbminus2"  width="400"  height="400"  autopos="true"  ]
[s  ]
*03sbplus2

[tb_start_text mode=1 ]
#阿航
這家店的意思是650任你吃！[r][p]
一桌兩個人湯底300，白飯無限盛啊！我們再點個50元油條，兩盤最便宜的肉湊到650！[p]
服務生，飲料就不用了。冰水一壺冰水一壺冰水一壺──[p]
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_happy.png"  ]
[tb_start_text mode=1 ]
#鳳梨
豆腐鴨血豆腐鴨血！[p]
#阿航
我們光吃豆腐鴨血跟冰水就飽了啦！讚！[p]
#服務生
好的。[p]
#阿航
我們不要點那些沒用的菜。點兩份基本肉盤，剩下全部單點火鍋料、丸子跟科學麵！直接把預算拉滿到剛好651！[p]
#鳳梨
瘋狂吸血佛心店家。[p]
#阿航
完全不虧。[p]
[_tb_end_text]

[tb_eval  exp="f.sb+=2"  name="sb"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_start_tyrano_code]
[p_notify text="神罰值+2" width=300]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="効果音1.ogg"  ]
[jump  storage="scene1.ks"  target="*003"  ]
*03sbminus2

[tb_start_text mode=1 ]
#阿航
650喔？算了吧。[p]
#
我從包包裡掏出一張告鶴卡亮給鳳梨看。[p]
#阿航
我看還是不要吃麻辣鍋了。我跟你們講，要吃就吃隔壁的Nomo壽喜燒啦！[p]
點單鍋，然後用我這張告鶴卡，滿1000折100，兩個人只要932，一個人460幾塊而已！[r][p]
無限吃肉，吃到我睡起來都還覺得飽的！[p]
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_surprised.png"  ]
[tb_start_text mode=1 ]
#鳳梨
不用冰水嗎？[p]
#阿航
不用冰水不用冰水。[p]
去Nomo可以喝飲料，我去喝可樂什麼的，可以喝很爽！可以喝冰沙啊！檸檬冰沙加可樂很爽！[p]
#鳳梨
血糖？[p]
#阿航
血糖？[r][p]
沒有在管血糖的。管他媽的，你人生都管東管西的有什麼好管的。[p]
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_angry.png"  ]
[tb_start_text mode=1 ]
#鳳梨
但外面太熱了我們吃低消豆腐鴨血豆腐鴨血就好了啦。[p]
#阿航
說的也是。[p]
[_tb_end_text]

[tb_eval  exp="f.sb-=2"  name="sb"  cmd="-="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="limit.ks"  target=""  ]
[tb_start_tyrano_code]
[p_notify text="神罰值-2" width=300]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="効果音2.ogg"  ]
[jump  storage="scene1.ks"  target="*003"  ]
*003

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_normal.png"  ]
[tb_start_text mode=1 ]
#
我們兩個人點了低消650，狂幹冰水豆腐鴨血吃了頓粗飽。[p]
#阿航
吃飽了吃飽了。[p]
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_jitome.png"  ]
[tb_start_text mode=1 ]
#鳳梨
你真的很會吃耶。[p]
#阿航
CP值很高啊[p]
#鳳梨
啊吃完了現在要去哪裡。[p]
#阿航
呃......去我家吹冷氣吧？[p]
#鳳梨
......[p]
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_normal.png"  ]
[tb_start_text mode=1 ]
#阿航
不然我們去夾娃娃？[p]
#鳳梨
不用。[p]
你是想把這波賺的賠光啊。[p]
#阿航
說、說的也是......[p]
[_tb_end_text]

[tb_eval  exp="f.sb+=2"  name="sb"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_start_tyrano_code]
[p_notify text="神罰值+2" width=300]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="効果音1.ogg"  ]
[jump  storage="die.ks"  target="*GameOver"  cond="f.sb==10"  ]
[jump  storage="die.ks"  target="*GameOver"  cond="f.sb>10"  ]
[tb_start_text mode=1 ]
#鳳梨
好啦，就去你家玩一下吧。[p]
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[tb_image_hide  time="1000"  ]
[bg  time="1000"  method="crossfade"  storage="shoutenkai.jpg"  ]
[bg  time="1000"  method="crossfade"  storage="ekimae-asa.jpg"  ]
[bg  time="1000"  method="crossfade"  storage="eki.jpg"  ]
[bg  time="1000"  method="crossfade"  storage="livingroom.jpg"  ]
[chara_show  name="鳳梨"  time="1000"  wait="true"  storage="chara/1/jirai_girl_surprised.png"  width="1024"  height="1536"  left="503"  top="-46"  reflect="false"  ]
[tb_start_text mode=1 ]
#鳳梨
這裡就是阿航家啊。[p]
#阿航
對啊我一個人住，我的房子還蠻大的。[p]
玩累了，就直接睡覺，沒問題的~[p]
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_jitome.png"  ]
[tb_start_text mode=1 ]
#鳳梨
想太多了。[p]
啊你家有什麼好玩的。[p]
#阿航
喔、喔，我家喔。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="huku.mp3"  ]
[tb_image_show  time="1000"  storage="default/game.png"  width="415"  height="415"  x="282"  y="138"  _clickable_img=""  name="img_183"  ]
[tb_image_show  time="1000"  storage="default/666.png"  width="167"  height="163"  x="411"  y="267"  _clickable_img=""  name="img_201"  ]
[tb_start_text mode=1 ]
#阿航
玩個快打666怎麼樣，這個純技術的。[p]
[_tb_end_text]

*SF00

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_happy.png"  ]
[tb_start_text mode=1 ]
#鳳梨
你要確定耶，這遊戲我可會了。[p]
#阿航
我...我對於質疑我格鬥遊戲實力的人，我真的很佩服他們的想法。[p]

[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_surprised.png"  ]
[tb_image_show  time="300"  storage="default/bg_koukasen_nobg1.png"  width="1600"  height="900"  x="-315"  y="-86"  _clickable_img=""  name="img_189"  ]
[playse  volume="80"  time="1000"  buf="0"  storage="kaze.mp3"  ]
[tb_start_text mode=1 ]
#
我立刻拿起手把開啟CPU對戰模式秀一波。[p]
#阿航
你看我桑吉亞夫那個走位、那個觀念、在牆邊那個抖動、那個位移、那個操作。[p]
#鳳梨
哦──[p]
#阿航
基本上，先贏50%、50%血量。[p]
[_tb_end_text]

[tb_image_hide  time="1000"  ]
[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_jitome.png"  ]
[tb_start_text mode=1 ]
#
說完我馬上被打掉三成血。[p]
#阿航
好啦，我也不要講先贏50%，先贏50%可能讓你誤會了。[p]
就是75%嘛！百分之五十乘百分之五十嘛！就百分之25嘛！再加上原本的百分之50，百分之75嘛，勝率的保證。[p]
[_tb_end_text]

[tb_eval  exp="f.sb+=2"  name="sb"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_start_tyrano_code]
[p_notify text="神罰值+2" width=300]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="効果音1.ogg"  ]
[jump  storage="die.ks"  target="*GameOver"  cond="f.sb==10"  ]
[jump  storage="die.ks"  target="*GameOver"  cond="f.sb>10"  ]
[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_smile.png"  ]
[tb_start_text mode=1 ]
#鳳梨
好啦，這個我也很愛玩。[p]
#阿航
你要當1P還是2P。[p]
#鳳梨
當然是1P──[p]
[_tb_end_text]

*SF02

[tb_image_hide  time="1000"  ]
[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_normal.png"  ]
[tb_start_text mode=1 ]
#
第一局──[p]
[_tb_end_text]

[tb_image_show  time="1000"  storage="default/sf.png"  width="430"  height="237"  x="435"  y="72"  _clickable_img=""  ]
[tb_start_text mode=1 ]
我選擇了RYO，這是一個能打昇龍的基本角。[l]鳳梨則是選了賴皮相撲選手本多。[p]
鳳梨以為自己亂按一波用頭槌飛來飛去就能獲勝，但是──[p]
#阿航
抓到破綻了，RYO一打五~[p]
#
我一記昇龍加康寶直接送她的本多回老家。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="boost.mp3"  ]
[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_angry.png"  ]
[tb_start_text mode=1 ]
#鳳梨
欸不是吧，阿航你是不是矇到的？[p]
我都瘋狂混亂上中下段出招了，開外掛你要先講啊！[p]
#阿航
我、我沒有啊......[p]
#鳳梨
啊不然你是偷看我手把喔？[p]
[_tb_end_text]

[glink  color="ts19"  storage="scene1.ks"  size="30"  target="*04sbplus2"  text="用ABC邏輯解釋"  autopos="true"  width="400"  height="400"  ]
[glink  color="ts19"  storage="scene1.ks"  size="30"  text="叫什麼叫？"  autopos="true"  target="*04minus2"  width="400"  height="400"  ]
[s  ]
*04sbplus2

[tb_start_text mode=1 ]
#
我一臉嚴肅，雙手比劃著 A、B、C 的手勢──[p]
#阿航
鳳梨，這不是外掛，這是格鬥遊戲唯一的真理。這叫ABC邏輯，聽好了：[r]對方應對A，你應對B 假設說這是唯一的真理──[p]
A到B是唯一的真理的話，那他們做B....你做C是唯一的真理的話──[p]
他們做A 你就不應該做C啊！你....應該做B啊？[p]
#
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_jitome.png"  ]
[tb_start_text mode=1 ]
#鳳梨
所以咧?[p]
#阿航
所以說，你防我的對空 A，我就應該出下段 B，但因為你做了 C 放推，[r]那根據 A 到 B 的真理邏輯，我直接出 B 就能把妳制裁到死！[p]
#
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_surprised.png"  ]
[tb_start_text mode=1 ]
#鳳梨
............[p]
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_happy.png"  ]
[tb_start_text mode=1 ]
#鳳梨
哈哈哈哈！你真的很會唬爛耶。這場送你啦！[p]
[_tb_end_text]

[tb_eval  exp="f.sb+=2"  name="sb"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_start_tyrano_code]
[p_notify text="神罰值+2" width=300]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="効果音1.ogg"  ]
[jump  storage="die.ks"  target="*GameOver"  cond="f.sb==10"  ]
[jump  storage="die.ks"  target="*GameOver"  cond="f.sb>10"  ]
[jump  storage="scene1.ks"  target="*SF03"  ]
*04minus2

[tb_start_text mode=1 ]
#阿航
贏了就贏了，到底是叫什麼叫啦？！[p]
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_surprised.png"  ]
[tb_start_text mode=1 ]
這遊戲就是垃圾平衡、爛判定啦！[p]
#
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_angry.png"  ]
[tb_start_text mode=1 ]
#鳳梨
是你贏你幹嘛這樣啊。[p]
#阿航
妳打輸就在那邊質疑東質疑西，不打就滾，到底是在那邊叫什麼叫啦！！[p]
#
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_troubled.png"  ]
[tb_start_text mode=1 ]
#鳳梨
不打就拉倒。[p]
#阿航
呃......[p]
......[p]
我道歉，再來打吧。[p]
[_tb_end_text]

[tb_eval  exp="f.sb-=2"  name="sb"  cmd="-="  op="t"  val="2"  val_2="undefined"  ]
[tb_start_tyrano_code]
[p_notify text="神罰值-2" width=300]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="効果音2.ogg"  ]
[jump  storage="scene1.ks"  target="*SF03"  ]
*SF03

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_normal.png"  ]
*undefined

[tb_start_text mode=1 ]
#
......[p]
......！[p]
鳳梨的操作精準度不知為何突然大幅提升。[p]
突然像是看穿我角色出手的每一偵似的，沒有任何多餘的動作。[p]
頭槌、投技、百貫落......每一招指令都沒有多餘的輸入，即便我防下了所有動作仍是被推到牆角。[p]
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_happy.png"  ]
[tb_start_text mode=1 ]
#鳳梨
被我的肥豬撞到只能卡牆了吼~[p]
#阿航
可惡......！[p]
[_tb_end_text]

[glink  color="ts19"  storage="scene1.ks"  size="30"  target="*05sbplus2"  text="我一步都沒退耶"  autopos="true"  width="400"  height="400"  ]
[glink  color="ts19"  storage="scene1.ks"  size="30"  text="化身瘋狗"  target="*05sbminus2"  autopos="true"  width="400"  height="400"  ]
[s  ]
*05sbplus2

[tb_start_text mode=1 ]
#阿航
鳳梨！妳不要在那邊瞎說！[p]
#
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_surprised.png"  ]
[tb_start_text mode=1 ]
#鳳梨
什麼意思？[p]
#阿航
這是一個不公平的比賽啊。[p]
笑死人欸，我沒有按方向鍵，你打我，我一步都沒有退ㄟ。[p]
#
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_jitome.png"  ]
[tb_start_text mode=1 ]
#鳳梨
你一直防禦角色都不動當然會後退啊。[p]
#阿航
這叫戰術性卡位，你選這隻賴皮豬就在那邊──[p]
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_happy.png"  ]
[tb_start_text mode=1 ]
#鳳梨
哈哈哈哈哈──[p]
#阿航
不要笑不要笑不要笑！[p]
#鳳梨
趁現在──[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#阿航
啊？我怎麼死了，這趴我沒有跟到捏。[p]
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_smile.png"  ]
[tb_start_text mode=1 ]
#鳳梨
我贏囉。現在是誰賴皮啊。[p]
#阿航
哀，現在講再多也沒有意義。我就是誤入森林的小白兔。[p]
#鳳梨
以為這樣我就會原諒你吼~再打一場吧~[p]
[_tb_end_text]

[tb_eval  exp="f.sb+=2"  name="sb"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_start_tyrano_code]
[p_notify text="神罰值+2" width=300]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="効果音1.ogg"  ]
[jump  storage="Aend.ks"  target=""  cond="f.sb==10"  ]
[jump  storage="scene1.ks"  target="*SF04"  cond="f.sb<10"  ]
*05sbminus2

[tb_start_text mode=1 ]
#阿航
靠北啊！這什麼智障角色，手短腳短還能全螢幕飛！[p]
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_surprised.png"  ]
[tb_start_text mode=1 ]
#鳳梨
阿航......？[p]
#阿航
妳選這隻角色根本就是低能兒、可憐哪！這把不算啦，妳這根本是在強迫消費妳的操作。[l][r]妳有種跟我對線啊！不要只會用肥豬撞人啦！[p]
#

[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_angry.png"  ]
[tb_start_text mode=1 ]
#鳳梨
啊你剛不是說你很會玩這遊戲？[p]
#阿航
不是。我先跟你講一件事情。[p]
我跟你講，如果我講過這些話那我是雜碎。[p]
#鳳梨
你這個都胡說八道的。[p]
#阿航
不要隨便扣人家帽子──[p]
#
[_tb_end_text]

[tb_eval  exp="f.sb-=2"  name="sb"  cmd="-="  op="t"  val="2"  val_2="undefined"  ]
[tb_start_tyrano_code]
[p_notify text="神罰值-2" width=300]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="効果音2.ogg"  ]
[jump  storage="die.ks"  target="*GameOver"  cond="f.sb==10"  ]
[jump  storage="die.ks"  target="*GameOver"  cond="f.sb>10"  ]
[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_happy.png"  ]
[tb_start_text mode=1 ]
#鳳梨
好了啦賴皮豬~你到底要不要打啦~[p]
[_tb_end_text]

[jump  storage="scene1.ks"  target="*SF04"  ]
*SF04

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_normal.png"  ]
[bg  time="1000"  method="crossfade"  storage="livingroom_yu.jpg"  ]
[tb_start_text mode=1 ]
#
我們就這樣打了一個下午的電玩，一天的約會轉眼間就結束了──[p]
[_tb_end_text]

[tb_image_hide  time="1000"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="ekimae-yu.jpg"  ]
[chara_show  name="鳳梨"  time="1000"  wait="true"  storage="chara/1/jirai_girl_smile.png"  width="1024"  height="1536"  left="147"  top="-24"  reflect="false"  ]
[tb_start_text mode=1 ]
#阿航
那、那個......謝謝你陪我約會。[p]
#鳳梨
不客氣，我今天也玩得很開心喔~[p]
#阿航
那、那麼.......還有機會見面嗎？[p]
#鳳梨
......[p]
............[p]
[_tb_end_text]

[chara_mod  name="鳳梨"  time="600"  cross="true"  storage="chara/1/jirai_girl_happy.png"  ]
[tb_start_text mode=1 ]
#鳳梨
不告訴你~[p]
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[playse  volume="150"  time="1000"  buf="0"  storage="hasiru.mp3"  ]
[wait  time="2500"  ]
[stopse  time="1000"  buf="0"  ]
[tb_start_text mode=1 ]
#
說完，鳳梨就這樣消失在人群之中──[p]
[_tb_end_text]

[jump  storage="Bend.ks"  target=""  ]
[s  ]
