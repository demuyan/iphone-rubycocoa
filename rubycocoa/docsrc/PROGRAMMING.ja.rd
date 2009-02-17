# -*-rd-*-
= RubyCocoa�ץ���ߥ�

== �ܼ�

* ((<irb - ���󥿡��饯�ƥ��� Ruby>))
* ((<�饤�֥��Υ���>))
* ((<ư�����´���̣�廊����>))
* ((<Cocoa���饹>))
* ((<Cocoa���֥������Ȥ�����>))
* ((<�����ʡ����åפȥ������>))
* ((<�᥽�åɤ��֤���>))
* ((<�᥽�å�̾�η�����ˡ�ȥХꥨ�������>))
* ((<�᥽�åɤΰ����ϲ�ǽ�ʸ¤��Ѵ�����>))
* ((<�᥽�å�̾����ʣ����Ȥ��˻Ȥ���Ƭ�� "oc_">))
* ((<Cocoa���饹���������饹�Ȥ��Υ��󥹥���>))
* ((<Cocoa�������饹�����>))
* ((<�����ȥ�å�>))
* ((<�᥽�åɤΥ����С��饤��>))
* ((<Cocoa�������饹�Υ��󥹥�������>))
* ((<���󥹥����������ν���������ɤϤɤ��˽񤯤٤���?>))
* ((<RubyCocoa���ץꥱ�������ΥǥХå�>))


== irb - ���󥿡��饯�ƥ��� Ruby

�����ˤ��륹����ץȤ��ڤ�ü���Ƥߤ�Τ� irb ��Ȥ��Ȥ褤�Ǥ��礦��
irb �ϥ��ޥ�ɥ饤�������Ū�� Ruby ���󥿡��ץ꥿��Ȥ� Ruby��°�Υ�
�ޥ�ɤǤ����ʲ��Τ褦��ư���ޤ���

  % irb -r osx/cocoa

(��) Mac OS X 10.1 �Ǥ� irb �� RubyCocoa �򤤤ä���˻Ȥ��Ȥ��Ф���
�Х����顼��ȯ�����ޤ���Mac OS X 10.2 �ޤ��Ϥ���ʹߤǤλ��Ѥ򤪴��ᤷ�ޤ���

== �饤�֥��Υ���

RubyCocoa�Υ饤�֥��ϰʲ��Τ褦�˥��ɤ��ޤ���

  require 'osx/cocoa'


== ư�����´���̣�廊����

�ޤ���ư�����´���̣�廊��(�����Ĥ�)��ñ����Ǥ���irb ��Ȥäƻ�Ƥ�
�ޤ��礦��

  include OSX
  files = `ls /System/Library/Sounds/*.aiff`.split
  NSSound.alloc.initWithContentsOfFile_byReference (files[0], true).play
  NSSound.alloc.initWithContentsOfFile_byReference (files[1], true).play
  NSSound.alloc.initWithContentsOfFile_byReference (files[2], true).play

�ʹߤϡ���̣����������ν����ˤʤ�Ȼפ�����򤢤��Ƥ����ޤ���������
��� "# => "�α�¦�ϼ¹Է�̤Ȥ���ɸ����Ϥ����ʸ����Ǥ���

== Cocoa���饹

  p OSX::NSObject # => OSX::NSObject
  obj = OSX::NSObject.description
  p obj      # => #<OSX::OCObject:0x5194e8 class='NSCFString' id=A97910>
  obj = OSX::NSObject.alloc.init
  p obj      # => #<OSX::NSObject:0x51f5b4 class='NSObject' id=976D90>

RubyCocoa�Ǥϡ�Cocoa���饹��OSX�⥸�塼���۲��Υ��饹�Ȥ�����������
���ޤ�(0.2.0�ʹ�)��Cocoa���饹��Ruby�Υ��饹�Ǥ����Ʊ����Cocoa�Υ���
�������ȤȤ��Ƥ⿶���񤤤ޤ���


== Cocoa���֥������Ȥ�����

Cocoa���֥������Ȥ������ˤϡ�Cocoa�γƥ��饹�Υ᥽�åɤ򤽤Τޤ޻Ȥ���
����

  obj = OSX::NSObject.alloc.init
  str = OSX::NSString.stringWithString "hello"
  str = OSX::NSString.alloc.initWithString "world"

�������줿Cocoa���֥������Ȥϡ�RubyCocoa������OSX::ObjcID�Ȥ������饹
�Υ��֥������Ȥ���ޤ�Ƥ��ޤ����̾OSX::ObjcID���饹��¸�ߤ�ռ���
��ɬ�פϤ���ޤ���


== �����ʡ����åפȥ������

OSX::ObjcID�Υ��󥹥��󥹤Ϥ��ʤ餺���Ȥ����Ǥ���Cocoa���֥������Ȥ�
�����ʡ����åפ�����ޤ��������ʡ����åפ�OSX::ObjcID�Υ��󥹥��󥹤�
GC���ݽ������Ȥ��˼�ưŪ�ˤʤ��ʤ�ޤ����������ä�RubyCocoa�Ǥϡ�����
�ʡ����åפʤɤΥ�������򵤤ˤ���ɬ�פϤ���ޤ��󡣤ޤ����̾�
OSX::ObjcID�Ȥ������饹��¸�ߤ�ռ�����ɬ�פ⤢��ޤ���

  str = OSX::NSString.stringWithString "hello"
  str = OSX::NSString.alloc.initWithString "world"

�嵭���Ԥϡ�Objective-C�Ǥϥ����ʡ����åפ�ȯ�������뤫�����ʤ����Ȥ�
���㤤������ޤ����������ʡ����åפ�ռ�����ɬ�פΤʤ� RubyCocoa �Ǥ�
�������ư㤤������ޤ���release��autorelease��retain�ʤɤΥ᥽�åɤ�
����Ū�˸Ƥ�ɬ�פϤ���ޤ��󤷡�NSAutoreleasePool����ɬ�פ⤢��ޤ�
��

* Cocoa���֥������Ȥ������ˤ�Cocoa���饹���Ф���Cocoa�Υ᥽�åɤ�Ȥ�
* Cocoa���֥������ȤϺ��äѤʤ����ɤ����������������

== �᥽�åɤ��֤���

  nstr = OSX::NSString.description
  p nstr      # => #<OCObject:0x7233e class='NSCFString' id=687610>
  p nstr.to_s # => "NSString"

  nstr = OSX::NSString.stringWithString "Hello World !"
  p nstr      # => #<OCObject:0x71970 class='NSCFString' id=688E90>
  p nstr.to_s # => "Hello World !"

  nstr = OSX::NSString.stringWithString(`pwd`.chop)
  nary = nstr.pathComponents
  p nary      # => #<OCObject:0x6bb2e class='NSCFArray' id=3C0150>

  ary = nary.to_a
  p ary       # => [#<OCObject:0x6a9b8 class='NSCFString' id=3C2B50>,...]

  ary.map! {|i| i.to_s }
  p ary       # => ["/", "Users", "hisa", "src", "ruby", "osxobjc"]

�������㤫���¬�Ǥ���褦��RubyCocoa�Ǥϡ�NSString��NSArray�ʤ�
Objective-C���֥������Ȥ��֤��᥽�åɤ�Cocoa���֥������ȤȤ����֤��ޤ���
�Ѷ�Ū��Ruby���б����륪�֥�������(�㤨��String�ʤ�)�ˤ��Ѵ����ޤ���
ʸ���������˴ؤ��Ƥ� to_s �� to_a ���������Ƥ���ΤǤ����Ȥ�����
���Ǥ��ޤ���


== �᥽�å�̾�η�����ˡ�ȥХꥨ�������

  # �����ƥ಻����֤��Ĥ餹 (2)
  sndfiles.each do |path|
    snd = OSX::NSSound.alloc.initWithContentsOfFile(path, :byReference, true)
    snd.play
    sleep 0.25 while snd.isPlaying?
  end

����Ϥ����ۤɼ���������ʤ餹����̥С������Ǥ���Objective-C�Υ��
���������쥯���Ȱ�����Ruby����ɽ�������̤���ˡ�򼨤��Ƥ��ޤ���
Objective-C��

  [obj hogeAt: a0 withParamA: a1 withParamB: a2]

���Ф��Ƥ����Ĥ��θƤӽФ���ˡ���Ѱդ���Ƥ��ޤ������ܤϡ���å�������
�쥯����":"��"_"���֤���������Τ�Ruby¦�ǤΥ᥽�å�̾�Ȥʤ�ޤ���

  obj.hogeAt_withParamA_withParamB_ (a0, a1, a2)

�����������ΤޤޤǤϥ��å��������ʤΤǺǸ��"_"�Ͼ�ά���뤳�Ȥ��Ǥ���
����

  obj.hogeAt_withParamA_withParamB (a0, a1, a2)

�ޤ�Ĺ���᥽�å�̾�ξ��ʤɡ���å��������쥯���Υ�����ɤȰ����δ�
�����狼��ˤ������ᡢ���ޤ�����������ޤ��󤬡������κ��Ȥ��Ƽ��Τ褦
����ˡ��Ȥ����Ȥ��Ǥ��ޤ���

  obj.hogeAt (a0, :withParamA, a1, :withParamB, a2)

BOOL���֤��᥽�å�(�Ҹ�)�ξ��ˤϡ��᥽�å�̾�κǸ��"?"���դ��Ƥ���
������RubyCocoa�Ǥϡ�'?'��̵ͭ�ǥ᥽�åɤ������ͤ��֤���Τ��ɤ���Ƚ
�Ǥ��Ƥ��ޤ����դ��ʤ����ˤ�Objective-C���֤�������(0:NO, 1:YES)����
��ޤ������������ͤ�Ruby �������ͤȤ��Ƥɤ���⿿�ˤʤ�ޤ���

  nary = OSX::NSMutableArray.alloc.init
  p nary.containsObject("hoge")   # => 0
  p nary.containsObject?("hoge")  # => false
  nary.addObject("hoge")
  p nary.containsObject("hoge")   # => 1
  p nary.containsObject?("hoge")  # => true


== �᥽�åɤΰ����ϲ�ǽ�ʸ¤��Ѵ�����

������containsObject�Τ褦�ˡ��������ͤȤ���Objective-C���֥�������
��Ȥ�᥽�åɤξ��ˡ�Ruby���֥������Ȥ򤽤Τޤ��Ϥ��Ƥ��ǽ�ʸ¤���
�����ߤޤ���


== �᥽�å�̾����ʣ����Ȥ��˻Ȥ���Ƭ�� "oc_"

  klass = OSX::NSObject.class
  p klass     # => Class
  klass = OSX::NSObject.oc_class
  p klass     # => OSX::NSObject

"Object#class"�Τ褦��Ruby��Objective-C�ǥ᥽�å�̾(���쥯��)������Ʊ
�����ˤϡ�Ruby�Υ᥽�åɤ��ƤФ�ޤ������Τ褦�ʾ��ˤϡ��᥽�å�̾
��Ƭ��"oc_"�Ȥ�����Ƭ����Ĥ���ȡ�Objective-C���֥������Ȥ��Ф��ƥ��
�������������ޤ���"oc_" ���դ��Ƥ�Ruby¦�˥᥽�åɤ�������ϡ��ɤ�
���褦�⤢��ޤ���(΢���Ϥ���Τǥ��������ɤ��ͤϤɤ���) ��


== Cocoa���饹���������饹�Ȥ��Υ��󥹥���

�����ޤǤϴ�¸��Cocoa���饹�Ȥ��Υ��󥹥��󥹤˴ؤ���ȥԥå��򰷤���
��������������ϡ�RubyCocoa���ץꥱ��������񤯾���ɬ�פȤʤ�Cocoa 
�������饹������䤽�Υ��󥹥��󥹤˴ؤ���ȥԥå��򰷤��ޤ���Cocoa��
�������饹�Ϥ��ȥ�å����ʼ����ˤ��¸����Ƥ��뤿�ᡢ¿�����������
������ޤ����������ޤ�Ƹ��Ƥ����ޤ��礦��


== Cocoa�������饹�����

Interface Builder�Ǻ�������GUI����ե�����(nib�ե�����)��������ꤷ��
Cocoa���֥������ȤΥ��饹�ʤɤ��������饹�Ȥ���������ޤ�(0.2.0�ʹ�)��
�㤨��Cocoa����������塼�ȥꥢ��ʤɤǺǽ�����˽ФƤ���褦��MVC��
�ǥ�Υ���ȥ����

  class AppController < OSX::NSObject

    ib_outlets :messageField

    def btnClicked(sender)
      @messageField.setStringValue "Merry Xmas !"
    end

  end

�Τ褦��������ޤ���RubyCocoa�ˤ�����Cocoa���������饹����ϡ����Τ褦
���̾��Ruby�Ǥ��������饹�����Ʊ�ͤ˵��Ҥ��ޤ���


== �����ȥ�å�

nib�ե�������ǥ��饹�����ꤷ�������ȥ�åȤ��������饹����������

  ns_outlets :rateField, :dollerField

�Ƚ񤭤ޤ���ns_outlets�ϼºݤˤ� Module#attr_writer ��Ʊ���Ǥ�����������
�������

  def rateField= (new_val)
    @rateField = new_val
  end

�Τ褦��������뤳�Ȥ�Ǥ��ޤ���ns_outlets �ˤ� ib_outlets �Ȥ�����̾
�⤢��ޤ���


== �᥽�åɤΥ����С��饤��

�ƥ��饹���������Ƥ���᥽�åɤ򥪡��С��饤�ɤ����硢ns_overrides
(��̾ib_overrides)��Ȥäƥ����С��饤�ɤ������Ȥ��������ɬ�פ������
����

  class MyCustomView < OSX::NSView
    ns_overrides :drawRect_, 'mouseUp:'

    def drawRect(frame)
    end

    ...
  end

ns_overrides �ΰ����ˤ� Objective-C �Υ�å��������쥯����ʸ����ޤ���
����ܥ��ɽ��������Τ�Ϳ���ޤ����������֥᥽�å�̾�η�����ˡ�ȥХꥨ��
�����פ����������������ά���뵭ˡ��Ȥ����ȤϤǤ��ޤ��󡣰����ο���
��碌�����Τ˵��Ҥ���ɬ�פ�����ޤ���

�����С��饤�ɤ��Ƥ���᥽�åɤ��������ǥ����ѡ����饹��Ʊ���᥽�å�
��Ƥ־��ˤϥ᥽�å�̾�� "super_" ��Ƭ�����դ��ƸƤӤޤ���

  class MyCustomView < OSX::NSView

    ns_overrides :drawRect_

    def drawRect (frame)
      p frame
      super_drawRect(frame)   # NSView��drawRect��¹�
    end

  end


== Cocoa�������饹�Υ��󥹥�������

Cocoa�������饹�Υ��󥹥��󥹤�Ruby������ץ������������ɬ�פ������
��ˤϡ���¸��Cocoa���饹�ξ���Ʊ�ͤ�

  AppController.alloc.init  # use this

�Τ褦�˽񤭤ޤ���Ruby�ǤΤ�äȤ����Ū�ʽ����Ǥ���

  AppController.new  # don't use this

��Ȥ����ȤϤǤ��ޤ���(�㳰��ȯ������褦�ˤ��Ƥ���ޤ�)������ˤϤ���
������𤬤���ΤǤ���Ĺ���ʤ�ΤǤ����ǤϾܤ��������Ͼʤ��ޤ���������
��ϥ��󥹥���������

  * alloc (Objective-C¦)
  * alloc���Ruby���֥�����������(������initialize�᥽�åɤ��ƤФ��)

�Ȥ������֤ǹԤ��뤳�Ȥ˿�����Ϣ������ޤ���


== ���󥹥����������ν���������ɤϤɤ��˽񤯤٤���?

���̤�Ruby�Ǥ�initialize�᥽�åɤ���˽�����Υ����ɤ�񤭤ޤ�����
Cocoa�������饹�ǤϤɤ��餫�����Ф��ޤ꾩����ޤ�����ͳ����˽Ҥ�
�����󥹥�����������initialize�᥽�åɤ��ƤФ�륿���ߥ󥰤ˤ�ꡢ��
�λ�����Cocoa���֥������ȤȤ��Ƥϥ��꤬������Ƥ�줿�����ǽ������
��Ƥ��ʤ�����Ǥ�����äȤ�Cocoa¦�᥽�åɤ�ƤФʤ��¤�ˤ����ƤϤ�
���������ȯ�����ʤ��ȹͤ����ޤ���

nib�ե����뤫����ɤ����褦�ʾ��ˤ� awakeFromNib �᥽�åɤǽ��
������Τ���äȤ�̵��Ǥ����ºݤ�Cocoa���������饹���������ɬ�פ���
��Τ⤳�Υ���������äȤ�¿���ΤǤϤʤ��Ǥ��礦����

����¾�ξ��ˤϡ�Cocoa��ή���� "init" ��Ƭ������ĥ᥽�åɤ˽񤯤Τ�
�褤�Ǥ��礦���᥽�åɤ�self���֤��褦�ˤ��뤳�Ȥ�˺��ʤ��Ǥ���������


== RubyCocoa���ץꥱ�������ΥǥХå�

���ΤȤ���(2003-01-05)��RubyCocoa���ץꥱ���������б�����
ProjectBuilder�Υץ饰����⥸�塼�뤬¸�ߤ��ʤ����ᡢProjectBuilder��
��Ruby�ΥǥХå���Ȥ����ȤϤǤ��ޤ���

��������RubyCocoa���ץꥱ�������򥷥���ʤɤ��饪�ץ�����դ��ǵ�ư
���뤳�Ȥˤ�ꡢRuby����°�ΥǥХå��ʤɤ�Ȥ����Ȥϲ�ǽ�Ǥ���Emacs��
���Ǥ���С�rubydb���ޥ�ɤ�ȤäƥǥХå��Ǥ��ޤ���

�ʲ��ϡ�simpleapp(����ץ�)�����ˡ�Ruby��°�ǥХå���Ȥä�RubyCocoa 
���ץꥱ��������֥졼��������Ȥ����ͻҤǤ���

  $ cd sample/simpleapp/
  $ pbxbuild
  $ build/SimpleApp.app/Contents/MacOS/SimpleApp -r debug
  (rdb:1) b AppController.rb:24    # �֥졼���ݥ���Ȥ�����
  Set breakpoint 1 at AppController.rb:24
  (rdb:1) c
  Breakpoint 1, aboutApp at AppController.rb:24
  AppController.rb:24:
  (rdb:1) l
  [19, 28] in AppController.rb
     19      @myView.set_alpha(@slider.floatValue)
     20      @myView.set_color(@colorWell.color)
     21    end
     22  
     23    def aboutApp (sender)
  => 24      NSApp().orderFrontStandardAboutPanelWithOptions(
     25        "Copyright" => "RubyCocoa #{RUBYCOCOA_VERSION}",
     26        "ApplicationVersion" => "Ruby #{VERSION}")
     27    end
     28  
     29    def colorBtnClicked (sender)
  (rdb:1) sender
  #<OSX::NSMenuItem:0xd439e class='NSMenuItem' id=0x3e27d0>
  (rdb:1) q
  Really quit? (y/n) y


$Date: 2005-09-01 01:10:34 +0900 (木, 01  9 2005) $
