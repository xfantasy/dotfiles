Vim�UnDo� R�GpT?Y�~�x�:��D@�ahFL��J
   n                                   O�0    _�                             ����                                                                                                                                                                                                                                                                                                                                       t           V        O�	&    �       k       �                  :(function(arale){ if(!arale) return;var deps = arale.deps;�             s   Ndeps.addDependency('consumeprod.ebill',['consumeprod.ebill-1.0-SNAPSHOT.js']);   6}((typeof arale == 'undefined') ? undefined : arale));       /** begin ---plaza.js---*/   var log = log || function() {   -    if (typeof arguments[0] == 'undefined') {           return false;       }   (    if (typeof console != 'undefined' &&   ,        typeof console.log != 'undefined') {   +        console.log.apply(this, arguments);       }   };       var PAGE = PAGE || {};       /**   : * @description 用于显示页面上的弹出气泡效果    * @author jiangbo.xi    * @param {Object} argu   * *      argu.container    外层的容器.   $ *      argu.trigger      触发器.   3 *      argu.popContent   要弹出显示的内容.    * @return {null} null.    */    PAGE.Balabala = function(argu) {       var that = this;   )    var container = argu.container || '',   %        trigger = argu.trigger || '',   +        popContent = argu.popContent || '',   7        TIMEOUT = argu.TIMEOUT || argu.timeout || 3000;   ?    if (container == '' || trigger == '' || popContent == '') {           log('参数为空');           return false;       }        if (!$$(container).length) {   (        log('找不到container元素');           return false;       }   2    if (!$$(container)[0].query(trigger).length) {   &        log('找不到trigger元素');           return false;       }   !    if (!$$(popContent).length) {   )        log('找不到popContent元素');           return false;       }   "    var container = $$(container);   2    var trigger = $$(container)[0].query(trigger);       this.countdownFlag = null;   F    // 1. 每隔三秒钟，随机的找一个元素弹出一个气泡   n    // 2. 如果鼠标移到某个trigger元素上，那么应当立即弹出这个元素的对应的气泡，       // 并暂停#1中的计时   A    // 3. 当鼠标移开后，又开始 #1 中的三秒倒计时   )    var clearCountdownFlag = function() {           try {   -            clearTimeout(that.countdownFlag);           } catch (e) {log(e)}       }       "    var showPop = function(item) {           //隐藏所有   -        A(trigger).each(function(el, index) {   +            el.query(popContent)[0].hide();           });           //显示当前   2        $$(item).query(popContent)[0].fadeIn(500);       }       (    //每隔X秒执行一次的定时器        var countdown = function() {           clearCountdownFlag();   4        that.countdownFlag = setTimeout(function() {   +            var randomIndex = (function() {                   var _random;                   do {   ?                    _random = Math.floor(Math.random() * 1000);   H                } while (_random == 0 || _random % trigger.length == 0);   0                return _random % trigger.length;               })();   *            showPop(trigger[randomIndex]);               countdown(that);               log(randomIndex);           }, TIMEOUT);       }           //鼠标事件   -    A($$(trigger)).each(function(el, index) {   $        Node(el).hover(function(e) {   !            clearCountdownFlag();   %            showPop(e.currentTarget);           }, function(e) {               countdown();           });       });           //开始倒计时       countdown();   };       E.domReady(function() {       log('DOM ready');           new PAGE.Balabala({   #        container: '.category-new',           trigger: '.item',           popContent: '.balabala'       });   });       /** end ---plaza.js---*/   V/**Last Changed Author: jiangbo.xi--Last Changed Date: Fri Jun 22 00:06:48 CST 2012**/   $/**consumeprod.ebill-1.0-SNAPSHOT**/   /** CurrentDeveloper: lufei**/   //** DeployDate: Fri Jun 22 13:55:25 CST 2012**/5�_�                            ����                                                                                                                                                                                                                                                                                                                            k           l           V        O�	4    �      !   k          log($$(container));5�_�                            ����                                                                                                                                                                                                                                                                                                                            k           l           V        O�	A     �      !   k          log($$(container)[0]);5�_�                            ����                                                                                                                                                                                                                                                                                                                            k           l           V        O�	D    �      !   k          log($$(container)[0], );5�_�                            ����                                                                                                                                                                                                                                                                                                                            k           l           V        O�	S    �      !   k          log($$(container)[0], 1);5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  v       O�	Y     �      !   k          log($$(container));5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  v       O�	Z    �      !   k           log(container$$(container));5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                  v       O�	u     �                 "    log(container, $$(container));5�_�      
           	   #       ����                                                                                                                                                                                                                                                                                                                            $          $   	       v   	    O�	z     �   #   %   k          �   #   %   j    5�_�   	              
   $       ����                                                                                                                                                                                                                                                                                                                            %          %   	       v   	    O�	|     �   #   %   k          log(5�_�   
                 $       ����                                                                                                                                                                                                                                                                                                                            %          %   	       v   	    O�	}     �   #   %   k          log($$(container)[0]5�_�                    $       ����                                                                                                                                                                                                                                                                                                                            %          %   	       v   	    O�	    �   #   %   k          log($$(container)[0])5�_�                    $       ����                                                                                                                                                                                                                                                                                                                            %          %   	       v   	    O�	�    �   #   %   k          log($$(container)[0]);5�_�                    $       ����                                                                                                                                                                                                                                                                                                                            %          %   	       v   	    O�	�     �   #   $              log($$(container)[0].node);5�_�                    -       ����                                                                                                                                                                                                                                                                                                                            -          -          v       O�	�    �   ,   .   j      2    var trigger = $$(container)[0].query(trigger);5�_�                    c        ����                                                                                                                                                                                                                                                                                                                            -          -          v       O�

     �   c   e   k       �   c   e   j    5�_�                    d   %    ����                                                                                                                                                                                                                                                                                                                            -          -          v       O�
     �   c   e   k      &    Loader.use('arale.fx', function(){5�_�                    e       ����                                                                                                                                                                                                                                                                                                                            e          i          v   %    O�
     �   d   j   k          new PAGE.Balabala({   #        container: '.category-new',           trigger: '.item',           popContent: '.balabala'       });5�_�                    i       ����                                                                                                                                                                                                                                                                                                                            e          i          v   %    O�
   	 �   i   k   l          �   i   k   k    5�_�                   >       ����                                                                                                                                                                                                                                                                                                                                       l           V        O�     �   >   @   m              �   >   @   l    5�_�                    ?       ����                                                                                                                                                                                                                                                                                                                                       m           V        O�   
 �   >   @   m              log(item)5�_�                             ����                                                                                                                                                                                                                                                                                                                                       m           V        O�/    �       n       �                  var log = log || function() {�             l   -    if (typeof arguments[0] == 'undefined') {           return false;       }   (    if (typeof console != 'undefined' &&   ,        typeof console.log != 'undefined') {   +        console.log.apply(this, arguments);       }   };       var PAGE = PAGE || {};       /**   : * @description 用于显示页面上的弹出气泡效果    * @author jiangbo.xi    * @param {Object} argu   * *      argu.container    外层的容器.   $ *      argu.trigger      触发器.   3 *      argu.popContent   要弹出显示的内容.    * @return {null} null.    */    PAGE.Balabala = function(argu) {       var that = this;   )    var container = argu.container || '',   %        trigger = argu.trigger || '',   +        popContent = argu.popContent || '',   7        TIMEOUT = argu.TIMEOUT || argu.timeout || 3000;   ?    if (container == '' || trigger == '' || popContent == '') {           log('参数为空');           return false;       }        if (!$$(container).length) {   (        log('找不到container元素');           return false;       }   2    if (!$$(container)[0].query(trigger).length) {   &        log('找不到trigger元素');           return false;       }   !    if (!$$(popContent).length) {   )        log('找不到popContent元素');           return false;       }   "    var container = $$(container);   .    var trigger = container[0].query(trigger);       this.countdownFlag = null;   F    // 1. 每隔三秒钟，随机的找一个元素弹出一个气泡   n    // 2. 如果鼠标移到某个trigger元素上，那么应当立即弹出这个元素的对应的气泡，       // 并暂停#1中的计时   A    // 3. 当鼠标移开后，又开始 #1 中的三秒倒计时   )    var clearCountdownFlag = function() {           try {   -            clearTimeout(that.countdownFlag);           } catch (e) {log(e)}       }       "    var showPop = function(item) {           //隐藏所有   -        A(trigger).each(function(el, index) {   +            el.query(popContent)[0].hide();           });           //显示当前           log(item);   2        $$(item).query(popContent)[0].fadeIn(500);       }       (    //每隔X秒执行一次的定时器        var countdown = function() {           clearCountdownFlag();   4        that.countdownFlag = setTimeout(function() {   +            var randomIndex = (function() {                   var _random;                   do {   ?                    _random = Math.floor(Math.random() * 1000);   H                } while (_random == 0 || _random % trigger.length == 0);   0                return _random % trigger.length;               })();   *            showPop(trigger[randomIndex]);               countdown(that);               log(randomIndex);           }, TIMEOUT);       }           //鼠标事件   -    A($$(trigger)).each(function(el, index) {   $        Node(el).hover(function(e) {   !            clearCountdownFlag();   %            showPop(e.currentTarget);           }, function(e) {               countdown();           });       });           //开始倒计时       countdown();   };       E.domReady(function() {       log('DOM ready');       '    Loader.use('arale.fx', function() {           new PAGE.Balabala({   '            container: '.category-new',               trigger: '.item',   #            popContent: '.balabala'           });       });   });    5�_�                            ����                                                                                                                                                                                                                                                                                                                                       l           V        O�
8     �          l       gGGvar log = log || function() {5��