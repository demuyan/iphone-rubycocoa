# -*-rd-*-
= ��°����ץ���Ƥߤ�

����ץ�ǥ��쥯�ȥ�(�ե����)����ˤ��륹����ץȤ䥢�ץꥱ��������
��Ƥߤޤ��礦��


== RubyCocoa���ץꥱ�������

�ޤ��Ϥ��Ǥ˴������Ƥ���RubyCocoa���ץꥱ��������ư���Ƥߤޤ��礦��
Finder��'/Developer/Examples/RubyCocoa'�ե�����򳫤���SimpleApp��
���֥륯��å����ƤߤƤ������������ޥ�ɥ饤�󤫤�ʲ��Τ褦������
���Ƥⵯư�Ǥ��ޤ���

  $ cd /Developer/Examples/RubyCocoa
  $ open SimpleApp.app


== ���ޥ�ɥ饤��(Terminal)����

RubyCocoa��Ȥäƥ��ޥ�ɥ饤��ʤɤ���¹Ԥ������̤Υ�����ץȤ��
���Ȥ��Ǥ��ޤ�������ץ�ǥ��쥯�ȥ�˰�ư����

  $ cd /Developer/Examples/RubyCocoa

��ñ�ʥ�����ץȤ�¹Ԥ��Ƥߤޤ��礦��

  $ ruby fontnames.rb  # �ե����̾�����餺��Ƚ��Ϥ���ޤ�
  $ ruby sndplay.rb    # �����ƥ�ηٹ𲻤����֤��Ĥ�ޤ�
  $ ruby sndplay2.rb   # �����ƥ�ηٹ𲻤����֤˴ֳ֤�ͤ���Ĥ�ޤ�

Mac OS X 10.2��ȤäƤ���ͤϤ����

  $ echo Hello World | ruby speak.rb
  $ head -5 speak_me.txt | ruby speak.rb

�ʤɤȤ�äƤߤ�Ȥ��⤷���Ǥ��礦��speak.rb�����̵���Ǽ¹Ԥ����
'^D'(control�����򲡤��ʤ���'D')�����Ϥ���ޤǡ�1�����Ϥ��뤴�Ȥ��ɤ߾�
���ޤ��������10.2����Cocoa�˼������줿AppleScript/AppleEvent���󥿡�
�ե�������ǽ��ȤäƤ��ޤ���

���ˡ�������ɥ���ɽ�����륹����ץȥ���ץ��¹Ԥ��Ƥߤޤ��礦��

  $ ruby HelloWorld.rb                       # �ܥ��󣲤ĤΥ�����ɥ�
  $ ruby TransparentHello.rb                 # Ʃ���ʥ�����ɥ���ʸ��
  $ (cd Hakoiri-Musume && ruby rb_main.rb )  # �ѥ��륲����Ȣ����̼


== Makefile�١����Υ���������RubyCocoa���ץꥱ����������

����Makefile�١����Τ�Τ��Ƥߤޤ��礦��

  $ cd /Developer/Examples/RubyCocoa/Hakoniwa-Musume
  $ make

�ǹ��ۤǤ��ޤ����Ǥ�����¹Ԥ��Ƥߤޤ��礦�����Τޤޥ��ޥ�ɥ饤�󤫤�

  $ open CocoHako.app

�����Ϥ��뤫���ե��������CocoHako����֥륯��å����Ƶ�ư���ƤߤƤ���
������


== Project Builder�١����Υ���������RubyCocoa���ץꥱ����������

����Project Builder�١����Τ�Τ��Ƥߤޤ��礦�����ޥ�ɥ饤�󤫤�

  $ cd /Developer/Examples/RubyCocoa/simpleapp
  $ pbxbuild      # ���ץꥱ����������

�Ȥ��ƹ��ۤ��ޤ���������Project Builder��ư���Ƥ�����ǹ��ۤ�����
�¹Ԥ����ꤹ�뤳�Ȥ�Ǥ��ޤ����¹Ԥ��Ƥߤޤ��礦��

  % open build/SimpleApp.app

���Ǥ����फ���ޤ��ϥե��������build�ե���������SimpleApp����֥륯
��å����ƥ��ץꥱ��������ư���ƤߤƤ���������


== �����...

¾�ˤ⥵��ץ뤬��������Τǡ�Ŭ���˻�Ƥߤ��ꥹ����ץȤ��ɤ��
�ߤƤ���������

== ��­

* HelloWorld.rb �� ((<PyObjc|URL:http://pyobjc.sf.net/>))
  ��°��Python�ǽ񤫤�Ƥ�������ץ륹����ץȤ�Ruby�ǽ񤤤���ΤǤ���

* TransparentHello.rb�ϻ���
  ((<DDJ(Dr.Dobbs Journal)2002ǯ5���
  |URL:http://www.ddj.com/articles/2002/0205/>))
  ��Chris Thomas����ε����˷Ǻܤ��줿������ץȤǤ���

* RubyRaiseMan��RubyTypingTutor��
  ((<��Mac OS X Cocoa �ץ���ߥ󥰡�
  |URL:http://www.amazon.co.jp/exec/obidos/ASIN/489471440X>))
  �Ǻ��Objective-C�Υץ�����Ruby�ǽ񤤤���ΤǤ���

* MyViewer��
  ((<��Mac OS X �ץ���ߥ����� Objective-C��
  |URL:http://www.amazon.co.jp/exec/obidos/ASIN/4877780688>))
  �Ǻ��Objective-C�Υץ�����Ruby�ǽ񤤤���ΤǤ���


$Date: 2004-12-03 21:26:03 +0900 (金, 03 12 2004) $
