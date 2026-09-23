(function(){
	let shownotifycnt=0;
	let shownotifyarr=[];
	let showdelayarr=[];
	const ccrgba=function(c,a){
		c=c.replace("#","0x");
		let r = c.substring(2,4);
		let g = c.substring(4,6);
		let b = c.substring(6,8);
		return "rgb(" + (parseInt(r,16)) + " " + (parseInt(g,16)) + " " + (parseInt(b,16)) + " / " + a +"%)";
	};
	const p_notify={
		vital: ["text"],
		version:"1.0",
		pm:{
			color:"0xFFFFFF",
			size:"20",
			tdecoration:"none",
			bold:"false",
			face:"",
			thumfile:"",
			thumsize:"20",
			fold:"image",
			volume:"",
			buf:"1",
			sefile:"",
			height:"",
			y:"30",
			width:"300",
			backcolor:"0x000000",
			opacity:"60",
			transition:"ease-out",
			delay:"500",
			duration:"500",
			showwait:"2500",
			shortcut:"short",
			shortcutmag:"10",
			name:"",
	//CSSのpadding-left、padding-right、そしてimgタグのpadding-rightと紐づいてるのでCSS変更したらこっちも変更する
			pl:15,
			pr:5,
			imgpr:5
		},
		start:function (pm) {
			//デフォルトパラメータから引っこ抜いておいて
			let p_notify_show=JSON.parse(JSON.stringify(p_notify.pm));
			//引数に対象パラメータがいたら各項目上書きする
			if (pm.name       !== "") p_notify_show.name       = pm.name;
			if (pm.height     !== "") p_notify_show.height     = pm.height;
			if (pm.thumfile       !== "") p_notify_show.thumfile       = pm.thumfile;
			if (pm.face       !== ""){
				p_notify_show.face       = pm.face;
			}else{
				p_notify_show.face       = tyrano.plugin.kag.stat.font.face;
			}
			if (pm.sefile       !== "") p_notify_show.sefile       = pm.sefile;
			if (pm.volume       !== ""){
				p_notify_show.volume       = pm.volume;
			}else{
				p_notify_show.volume       = tyrano.plugin.kag.variable.sf.current_se_vol;
			}

			p_notify_show.color       = pm.color;
			p_notify_show.size       = pm.size;
			p_notify_show.y  = pm.y;
			p_notify_show.width     = pm.width;
			p_notify_show.transition       = pm.transition;
			p_notify_show.tdecoration       = pm.tdecoration;
			p_notify_show.bold       = pm.bold;
			p_notify_show.text       = pm.text;
			p_notify_show.thumsize       = pm.thumsize;
			p_notify_show.fold       = "./data/"+pm.fold+"/";
			p_notify_show.buf       = pm.buf;
			p_notify_show.backcolor       = pm.backcolor;
			p_notify_show.opacity       = pm.opacity;
			p_notify_show.delay       = pm.delay;
			p_notify_show.duration       = pm.duration;
			p_notify_show.showwait       = pm.showwait;
			p_notify_show.shortcut       = pm.shortcut;
			p_notify_show.shortcutmag       = pm.shortcutmag;
			if(shownotifycnt==0){
				p_notify.exec(p_notify_show);
			}else{
				setTimeout(p_notify.exec(p_notify_show),1000);
			}
		},
		delfunc:function(p_notify_show,ncnt,idcls,skipflg){
			let settime=parseInt(p_notify_show.duration)+parseInt(p_notify_show.delay);
			let mag=parseFloat(p_notify_show.shortcutmag);
			//本処理でスキップ中だった（skipflgがtrue）で現状スキップ解除なら
			if(!tyrano.plugin.kag.stat.is_skip&&(p_notify_show.shortcut=="short"||skipflg)){
				//トランジション設定変更
				$("#tyrano_base>."+idcls).css({
					"transition-delay":p_notify_show.delay+"ms",
					"transition-duration":p_notify_show.duration+"ms",
				});
			}
			//逆にスキップ状態に入ってたら
			if(tyrano.plugin.kag.stat.is_skip&&(p_notify_show.shortcut=="short"||!skipflg)){
				//トランジション設定変更
				$("#tyrano_base>."+idcls).css({
					"transition-delay":((parseInt(p_notify_show.delay,10) / mag).toFixed())+"ms",
					"transition-duration":((parseInt(p_notify_show.duration,10) / mag).toFixed())+"ms",
				});
				settime=parseInt((settime / mag).toFixed());
			}
			//要素削除処理関数を先に作る
			//tyrano_baseの中の作ったやつからshowクラス削除（これで引っ込む）
			$("#tyrano_base>."+idcls).removeClass("show");
			//引っ込んでから要素自体の削除をしなきゃいけないので一応duration+delay待つ（これなら確実に画面外やろ）
			setTimeout(p_notify.remfunc,settime,idcls,ncnt,skipflg);
		},
		remfunc:function(idcls,skipflg){
			let sety=$("#tyrano_base>.p_notify."+idcls).attr("sety");
			let h=$("#tyrano_base>.p_notify."+idcls).outerHeight();
			$("#tyrano_base>.p_notify."+idcls).remove();
			//全体カウンタをマイナスする
			shownotifycnt=shownotifycnt-1;
			//カウント保存配列の最初の部屋＝今回消すやつを削除
			let si=shownotifyarr.indexOf(idcls);
			delete shownotifyarr[si];
			
			//待機時間配列も同じ部屋＝今回消すやつを削除
			delete showdelayarr[si];
			//他にあるなら上に詰めよう、どっこいしょ～
			if(shownotifycnt>0){
				//0＝一番上が対象だったら
				if(si==0){
					//最初の奴はもともとのsety＝埋め込んでる奴を使えばOK
					$("#tyrano_base>.p_notify:first-child").css("top",$("#tyrano_base>.p_notify:first-child").attr("sety")+"px");
					//他についてはpositionで現在位置取得から消したやつのheightをループでマイナスする
					$("#tyrano_base>.p_notify").not(".p_notify_"+(shownotifyarr[0]).toString()).each(function(){
						let jispos=$(this).position();
						$(this).css("top","calc( "+jispos.top+"px - "+h + 25 +"px )");
					});
				}else{
					for(let i =si;i<shownotifyarr.length;i++){
						let jispos=$("#tyrano_base>.p_notify:nth-child("+(i+1).toString()+")").position();
						if(jispos!==undefined){
							$("#tyrano_base>.p_notify:nth-child("+(i+1).toString()+")").css("top","calc( "+(jispos.top.toFixed())+"px - "+( h + 25 )+"px )");
						}
					}
				}
			}
		},
		showfnc:function(p_notify_show,ncnt,delaytotal,idcls,skipflg){
			let mag=parseFloat(p_notify_show.shortcutmag);
			//本処理でスキップ中だった（skipflgがtrue）で現状スキップ解除なら
			if(!tyrano.plugin.kag.stat.is_skip&&(p_notify_show.shortcut=="short"||skipflg)){
				//トランジション設定変更
				$("#tyrano_base>."+idcls).css({
					"transition-delay":p_notify_show.delay+"ms",
					"transition-duration":p_notify_show.duration+"ms",
				});
				delaytotal = showdelayarr.reduce(function(sum, e){
					if(e < (ncnt+1)){
						return sum + parseInt(e,10);
					}else{
						return sum;
					}
				});
			}
			//逆にスキップ状態に入ってたら
			if(tyrano.plugin.kag.stat.is_skip&&(p_notify_show.shortcut=="short"||!skipflg)){
				//トランジション設定変更
				$("#tyrano_base>."+idcls).css({
					"transition-delay":((parseInt(p_notify_show.delay,10) / mag).toFixed())+"ms",
					"transition-duration":((parseInt(p_notify_show.duration,10) / mag).toFixed())+"ms",
				});
				delaytotal=parseInt((delaytotal / mag).toFixed());
			}
			//tyrano_baseの中の作ったやつにshowクラス追加（これで表示が開始される）
			$("#tyrano_base>."+idcls).addClass("show");
			let settime=0;
			let skipsettime=0;
			let noskipsettime=0;
			//スキップ対応
			if(tyrano.plugin.kag.stat.is_skip&&(p_notify_show.shortcut=="short"||!skipflg)){
				skipsettime=parseInt(((parseInt(p_notify_show.showwait,10)+parseInt(p_notify_show.duration,10)+parseInt(p_notify_show.delay,10)+(200*ncnt)) / mag).toFixed());
				settime=skipsettime;
				skipflg=true;
			}else{
				noskipsettime=parseInt(p_notify_show.showwait,10)+parseInt(p_notify_show.duration,10)+parseInt(p_notify_show.delay,10)+(200*ncnt);
				settime=noskipsettime;
				skipflg=false;
			}
			
			//SEの指定があったら
			if(p_notify_show.sefile!=""){
				setTimeout(function(skipflg){
					//ティラノのplayseタグ使って指定したSE再生
					TYRANO.kag.ftag.startTag("playse", {
						volume : p_notify_show.volume,
						buf    : p_notify_show.buf,
						storage: p_notify_show.sefile,
						stop   : true
					});
					//本処理でスキップ中だった（skipflgがtrue）で現状スキップ解除なら
					if(!tyrano.plugin.kag.stat.is_skip&&(p_notify_show.shortcut=="short"||skipflg)){
						settime=noskipsettime;
						skipflg=false;
					}
					//逆にスキップ状態に入ってたら
					if(tyrano.plugin.kag.stat.is_skip&&(p_notify_show.shortcut=="short"||!skipflg)){
						settime=skipsettime;
						skipflg=true;
					}
					setTimeout(p_notify.delfunc,settime,p_notify_show,ncnt,idcls,skipflg);
				},delaytotal,skipflg);
			}else{
				//全体表示時間＋duration
				setTimeout(p_notify.delfunc,settime,p_notify_show,ncnt,idcls,skipflg);
			}
		},
		exec:function(p_notify_show){
			//スキップ中かつショートカット設定がスキップならここで終了する
			if(tyrano.plugin.kag.stat.is_skip&&p_notify_show.shortcut=="skip"){
				return;
			}
			let mag=parseFloat(p_notify_show.shortcutmag);
			let ncnt=shownotifycnt;
			shownotifyarr.push("p_notify_"+ncnt.toString());
			//タイムアウト処理セット用関数
			//クラス属性作成
			let jcls="p_notify p_notify_"+ncnt.toString()+" "+p_notify_show.name;
			let idcls="p_notify_"+ncnt.toString();

			//spanのstyle属性作成
			let jssp="";
			//表示テキスト装飾
			jssp=jssp+"text-decoration:"+p_notify_show.tdecoration+"; ";
			//フォントサイズ
			jssp=jssp+"font-size:"+p_notify_show.size+"px; ";
			//フォント太さ
			if ( p_notify_show.bold=="true"){
				jssp=jssp+"font-weight:bold; ";
			}
			jssp=jssp+"font-family:"+p_notify_show.face+"; ";
			jssp=jssp+"color:"+p_notify_show.color.replace("0x","#")+"; ";

			//divのstyle属性作成
			let jstl="";
			if ( p_notify_show.height!=""){
				jstl=jstl+"height:"+p_notify_show.height+"px; ";
			}
			//幅
			jstl=jstl+"width:"+p_notify_show.width+"px; ";
			//トランジション関数
			jstl=jstl+"transition-timing-function:"+p_notify_show.transition+"; ";
			//背景色セット
			jstl=jstl+"background-color:"+ccrgba(p_notify_show.backcolor,p_notify_show.opacity)+";";
			//spanタグ作成
			let notifytxt=$("<span>",{
				text:p_notify_show.text,
				style:jssp
			})
			//imgタグオブジェクトをundefinedしとく
			let notifyimg=undefined;

			//チキチキ（？）top位置計算
			if(shownotifycnt==0){
				//表示してるのがなければ
				jstl=jstl+"top:"+p_notify_show.y+"px; ";
			}else{
				//すでに表示されてる場合
				//現状最後の要素の位置取得
				let nlpos=$("#tyrano_base>.p_notify:last-child").position();
				let nlh=$("#tyrano_base>.p_notify:last-child").outerHeight();
				//間隔は25にしとく
				jstl=jstl+"top:"+(nlpos.top + nlh + (25 * ncnt))+"px; ";
			}

			//チキチキ（？）初期右位置計算
			let inir=0;
			if( p_notify_show.thumfile==""){
				//サムネイルファイルなし
				//初期位置はwidth＋左右のpaddingをマイナスにする
				inir=(parseInt(p_notify_show.width,10) + p_notify_show.pl + p_notify_show.pr) * -1;
			}else{
				//サムネイルファイルアリなら
				//サムネイルファイルとそのpadding-right分プラス
				inir=(parseInt(p_notify_show.width,10) + p_notify_show.pl + p_notify_show.pr + p_notify_show.imgpr + parseInt(p_notify_show.thumsize,10)) * -1;
				//サムネイル表示imageタグ作成
				notifyimg=$("<img>",{
					src:p_notify_show.fold+p_notify_show.thumfile,
				});
				notifyimg.attr("width",p_notify_show.thumsize);
			}
			jstl=jstl+"right:"+inir+"px; ";
			
			//スキップは解除があり得るので各所ポイントで再計算とセットを行うので後の方
			if(tyrano.plugin.kag.stat.is_skip&&p_notify_show.shortcut=="short"){
				//トランジション待機
				jstl=jstl+"transition-delay:"+((parseInt(p_notify_show.delay,10) / mag).toFixed())+"ms; ";
				//トランジション時間
				jstl=jstl+"transition-duration: "+ ((parseInt(p_notify_show.duration,10) / mag).toFixed()) +"ms; ";
			}else{
				//トランジション待機
				jstl=jstl+"transition-delay:"+p_notify_show.delay+"ms; ";
				//トランジション時間
				jstl=jstl+"transition-duration: "+p_notify_show.duration+"ms; ";
			}

			//ベース（にゅっする部分）のdiv作成
			let add_notify=$("<div>",{
				class:jcls
				,style:jstl
				//一応渡されてきたパラメータとマージした結果はdt属性で持っとく
				,dt:JSON.stringify(p_notify_show)
				//後で楽するためにy座標は個別属性ででセット
				,sety:p_notify_show.y
			});

			//イメージタグあるならまずイメージタグをベースのdivにアペンド
			if(notifyimg!==undefined){
				add_notify=add_notify.append(notifyimg);
			}
			
			//それからテキスト入れたspanタグをベースdivにアペンド
			add_notify=add_notify.append(notifytxt);
			shownotifycnt=shownotifycnt+1;
			//出来上がったベースdivタグをidがtyrano_baseの要素に直接アペンド
			$("#tyrano_base").append(add_notify);
			//タイムアウトで表示、削除設定をする
			//スキップは解除があり得るので各所ポイントで再計算とセットを行うので後の方
			if(tyrano.plugin.kag.stat.is_skip&&p_notify_show.shortcut=="short"){
				showdelayarr[ncnt]=parseInt((parseInt(p_notify_show.delay,10) / mag).toFixed(),10);
			}else{
				showdelayarr[ncnt]=parseInt(p_notify_show.delay,10);
			}
			let showdelaytotal = showdelayarr.reduce(function(sum, e){
				return sum + parseInt(e,10);
			});
			let skipflg=false;
			if(tyrano.plugin.kag.stat.is_skip&&p_notify_show.shortcut=="short"){
				skipflg=true;
			}
			
			setTimeout(p_notify.showfnc, showdelaytotal ,p_notify_show,ncnt,showdelaytotal,idcls,skipflg);
			//次行実行の処理を呼び出す
			TYRANO.kag.ftag.nextOrder();
			
		}
	};
	
	TYRANO.kag.ftag.master_tag.p_notify = object(p_notify);
	TYRANO.kag.ftag.master_tag.p_notify.kag = TYRANO.kag;
})();
