# -*-rd-*-
= �ѹ���

== 0.4.1 ����Τ�����ѹ��� (0.4.2)

=== ��������ǽ

: CocoaBindings�Υ��ݡ���

  Mac OS X 10.3 �ʹߤǤϡ�ruby������ץȾ���������Cocoa���饹�Υ��֥��饹�Ǥ�
  Objective-C������������饹��Ʊ���褦�ˡ�CocoaBindings�����Ѥ��뤳�Ȥ��Ǥ��ޤ���

  �ܤ����ϡ�����ץ��CurrencyConverter��RubySpotlight�򸫤Ƥ���������

: CoreData�Υ��ݡ���

  Mac OS X 10.4 �Ǥϡ�osx/coredata.rb�ˤ�ꡢCoreData�˴ؤ��륯�饹�������
  ���ѤǤ��ޤ��� 

: ���ۻ��Υƥ��Ȥ���ñ��

  `ruby install.rb setup'�ǥӥ�ɤ�����ˡ��ʲ��Υ��ޥ�ɤǥƥ��ȥ�����ץȤ�
  �¹Ԥ��뤳�Ȥ��Ǥ��ޤ���

    % ruby install.rb test

=== �Х�����

: ruby�Υ��֥������Ȥ����饹OSX::OCObject�ˤʤäƤ��ޤ�

  Cocoa�Υ��֥������Ȥ�pure ruby�Υ��֥������Ȥ��Ϥ��ȡ����Υ��֥������Ȥ�
  ���Ф����Ȥ���OSX::OCObjet���饹�Υ��֥������ȤˤʤäƤ��ޤ��ޤ��ޤ�����

  ���Ȥ��м��Τ褦�ʾ�����ȯ�����Ƥ��ޤ�����

    obj = RubyClass.new
    nsary = OSX::NSArray.arrayWithObjects(obj, nil)
    nsary.objectAtIndex(0) # => RubyClass�Ǥʤ���OSX::OCObjet���饹��


: itunes_albums.rb��NSCharacterConversionException��������

  ����ץ��itunes_albums.rb�����ʲ��Υ��顼�ˤ�ꥯ��å��夷�Ƥ��ޤ����Ȥ�
  ����ޤ�����

    Uncaught exception: 
    <NSCharacterConversionException> Conversion to encoding ...

  �������С�������RubyCocoa�Ǥϡ�$KCODE���ͤˤ��ruby��ʸ�����NSString��
  �Ѵ���Ԥ��褦�ˤ��ޤ�����
  

: Cocoa���饹�Υ��֥��饹�Υ��֥��饹���������ȥ���å��夹��

  �ʲ�����Τ褦�˥���å��夷�Ƥ��ޤ�����������ޤ�����

    class A < OSX::NSObject
    end

    class B < A
    end

    b = B.alloc.init # => crash

== 0.4.0 ����Τ�����ѹ��� (0.4.1)

: ruby������ץȼ¹Ի���LoadError��ȯ������

  ruby��--enable-shared���ץ����ʤ��ǥӥ�ɤ���Ƥ���Ȥ���
  ����ruby��RubyCocoa���ۤ���ȼ��Υ��顼�Ȥʤ�����������ޤ�����

    osx/cocoa.rb:12:in `require': No such file to load -- osx/objc/cocoa (LoadError)

: Mac OS X 10.3(Panther)�����Xcode���ݡ���

  Mac OS X 10.3��ǹ��۲�ǽ�ˤʤ�ޤ�����
  �ޤ���Xcode�Υץ������ȥƥ�ץ졼�Ȥ򥤥󥹥ȡ��뤹��褦�ˤʤ�ޤ�����

== 0.4.0 ����Τ�����ѹ��� (0.4.1d9)

: ruby 1.8.0 �б�

  ruby 1.8.0 �ǽФ�褦�ˤʤä������Ĥ��ηٹ�䥨�顼�������ޤ�����

== 0.4.0 ����Τ�����ѹ��� (0.4.1d8)

: RubyCocoa.framework���Ȥ߹��߲�ǽ�ˤ���

  RubyCocoa�����󥹥ȡ��뤵��Ƥ��ʤ��Ķ��ǡ�RubyCocoa���ץꥱ�������
  ��ư���ǽ�ˤ��뤿�ᡢRubyCocoa.framework�Υӥ��������ѹ����ޤ�����
  RubyCocoa���ץꥱ��������Τ�RubyCocoa.framework���Ȥ߹���ǻȤ���
  �Ȥ��Ǥ��ޤ���

: WebKit.framework�б�

  kimura wataru ����ˤ�äƽ񤫤줿 WebKit.framework �ѤΥ饤�֥���
  �ɲä��ޤ�����((- WebKit�б��ˤĤ��ơ�kimura wataru����� s.sawada ��
  ��μ���Ȥߤ˴��դ��ޤ���-))

: init�᥽�åɤ�ns_override������㳰��������Х�����

  ns_override����init�᥽�åɤ��������ǡ�super_init��Ƥ֤��㳰��ȯ��
  ����Х��򡢽������ޤ�����

: ����¾

  RCDataAttachment�⥸�塼��������NSData, NSStrng ���饹�ˤ����Ĥ���
  ���饹�᥽�åɤ������

== 0.3.2 ����Τ�����ѹ��� (0.4.0)

: Ruby 1.8���б�

  Ruby 1.8�Ȥ��ȹ礻�ǻȤ���褦�ˤʤ�ޤ�����
  '-w'�դ��Ǽ¹Ԥ����Ȥ���ȯ�����Ƥ������᥽�åɤΰ����˴ؤ���ٹ�
  �ʤ��ʤ�褦�˽������ޤ�����

: RubyCocoa.framework������

  Ruby�ǽ񤫤�Ƥ�����ʬ��ޤ�ơ����ܼ����Τ��٤Ƥ�RubyCocoa�ե졼����
  ����ˤޤȤ�ޤ������Х��ʥ����դǤ�libruby���Ȥ�RubyCocoa�ե졼����
  ����Ū��󥯤��Ƥ��ޤ���
  ����ˤ��RubyCocoa���ץꥱ����������դ��䤹���ʤä��Ϥ��Ǥ���

: ��ĥ�饤�֥��̾���ѹ�

  ��ĥ�饤�֥���̾����osx_objc.bundle����rubycocoa.bundle���ѹ����ޤ�����
  ���γ�ĥ�饤�֥��ϡ�ruby���ޥ�ɤ�irb���ޥ�ɤ���RubyCocoa�ե졼����
  �����Ѥ��뤿���stub�饤�֥��ˤʤ�ޤ�����

: �饤�֥����ư

  osx/objc�ǥ��쥯�ȥ�˴ޤޤ�Ƥ����饤�֥��ϡ��ǥ��쥯�ȥꤴ������
  �ե졼����¦�˰�ư���ޤ�����
  �ޤ���osx�ǥ��쥯�ȥ�ʲ���RubyCocoa�饤�֥��ϡ�ruby���ޥ�ɤ�
  irb���ޥ�ɤ���RubyCocoa��Ȥ������stub�饤�֥��ˤʤ�ޤ�����


== 0.3.1 ����Τ�����ѹ��� (0.3.2)

=== AddressBook.framework �ѤΥ饤�֥����ɲ�

������:

  require 'osx/addressbook'
  ab = OSX::ABAddressBook.sharedAddressBook
  ab.people.to_a.each {|i| puts i.compositeName.to_s.toeuc }


== 0.3.0 ����Τ�����ѹ��� (0.3.1)

=== Objective-C���֥������Ȥ��Ф����ե쥯�����ǽ�β���

OCObjWrapper#objc_methods, OCObjWrapper#objc_method_type �������

=== �㳰��å������β���

Objective-C ���֥������Ȥ��Ф���᥽�åɸƽФ��˴�Ϣ����ȯ���������㳰
�Υ�å��������Ƥ˥᥽�å�̾���ؿ�̾�ʤɤ�ޤ��褦�ˤ�����

NS�ؿ��ƽФ�����ȯ������ NSException �� OSX::OCException ���Ѵ�������
����ȯ��������褦�ˤ�����

=== GC ��Ϣ�Х��ν���

NIB �ե�������ǥ��󥹥��󥹲����줿 Ruby ���֥������Ȥʤɤ� GC �ˤ��
���ݽ�����Ƥ��ޤ��Х�������

=== ����å����ؤ��˴ؤ����ѹ�

osx_objc.bundle �Υ��ɻ��˥���å����ؤ��򳫻Ϥ���褦�ˤ���
(ruby_thread_switcher_start)������å����ؤ��� NSTimer ��ȤäƼ�����
�Ƥ��뤿�� NSRunLoop ����äƤ��ʤ��Ȥ��ˤϵ�ǽ���ʤ���

=== rb_main.rb ���ѹ�

�Х�ɥ�꥽������� .rb �ե�����򤹤٤ƥ��ɤ���褦�ˤ�����
RubyCocoa ���ץꥱ�������ȯ���� rb_main.rb ���ѹ�����ɬ�פϤʤ��ʤ�
����


== 0.2.7����Τ�����ѹ���

=== [INPROVE] Jaguar (Mac OS X 10.2)���б���

* Jaguar��°��Ruby 1.6.7�ΤߤǼ¹Բ�ǽ
* Jabuar��°��Developer Tools�Τߤǥ���������ι��ۤ���ǽ
* LibRuby.framework���Ѵ�
* RubyCocoa.framework���Ѵ�
* Ruby���ۻ��� "--enabled-shared" �λ��������

(��) �����ư���ɥ�����ȥ١������ץꥱ���������뤿��ˤ� 
libruby.a ��ɬ�פǤ������������դˤϴޤޤ�Ƥ��ޤ���ruby�Υ���������
��ʬ�Ǻ�뤫 ((<libruby.a.gz|URL:../rubyosx/files/libruby.a.gz>)) ���
������ɤ��Ƥ���������

=== [IMPROVE] NS���,NS�ؿ�wrapper����������ץȤ����(cpp3����)��

NS���,NS�ؿ���̤���������ä���

=== [IMPROVE] C�ݥ��󥿤ΰ���������ͤ򰷤����ʤ����

* OSX::ObjcPtr �Ȥ������饹��Ƴ��
* �ؿ����᥽�åɤ�����ͤ�C�ݥ��󥿤ξ�� OSX::ObjcPtr �Υ��󥹥��󥹤��֤�
* ������C�ݥ��󥿤ξ�� OSX::ObjcPtr �ޤ��� String ���Ϥ���

���ε�ǽ��C�Υݥ��󥿤䥢�ɥ쥹��ľ�ܥ����������뤳�Ȥΰ�̣�����򤷤�
���ǻȤ��ȴ��Ǥ��Τ���դ��Ƥ�������������ͤ�C�ݥ��󥿤μ����褬 
NSAutoreleasePool#release �ʤɤˤ�äƴ��˲�����Ƥ��뤿����¾� Ruby 
��٥�ǤϻȤ��ʤ��������⤢��ޤ���
(NSString#availableStringEncodings�ʤ�)

=== [IMPROVE] NSDictionary ����

�ؿ����᥽�åɤΰ����� NSDictionary �ξ�� Hash ���Ϥ���褦�ˤʤä���

=== ����¾ Jaguar ��Ϣ

������ irb �ǻȤ��Ȥ��� Bus Error ��¿ȯ���Ƥ��ޤ��������ʤ���ꤷ�ƻ�
����褦�ˤʤ�ޤ�����

Jaguar �Ǥϥ��ޥ�ɥ饤�󤫤饢�ץꥱ�������Х�ɥ�ʤ��� GUI ���ץ�
��¹ԤǤ���褦�ˤʤäƤ���褦�Ǥ���

  % cd {RubyCocoa sample}/Hokoiri-Musume
  % ruby rb_main.rb

��Ȣ����̼�Υ�����ɥ��������ƥѥ����ͷ�٤ޤ���


== 0.2.6����Τ�����ѹ���

[CHANGES] NS�ؿ�������� Mac OS X 10.2 �б���NSAppleScript�ʤɡ�

[CHANGES] NSSound��ȤäƤ��륵��ץ�� Mac OS X 10.2 �б���

[BUGFIX] TOP��٥�ʳ����������Cocoa���������饹�Υ��󥹥��󥹤���
���Ȥ��Ǥ��ʤ�������褷����

  module MyModule
    class AppController < OSX::NSObject
    end
  end

[BUGFIX] NSString�Ȥ�ʸ�����Ѵ��ΤȤ�����֤�\0��ޤ�ʸ�������������
������褦�ˤ�����

[CHANGES] Objective-C��Ruby�δ֤ǤΥ��֥��������Ѵ����Ǥ��ʤ��ä��Ȥ�
��硢�㳰OSX::OCDataConvException��ȯ��������褦�ˤ�����


== 0.2.5����Τ�����ѹ���

[BUGFIX] BOOL���֤������Х饤�ɥ᥽�åɤ������ư���Ƥʤ��ä�(�Ϥ�)��
�Х�������

[IMPROVE] Cocoa�Υ����Х�ؿ��ѿ��Υ�åС���ư����������ץȤ���ɡ�
���η��"not implemented"��Cocoa�Υ����Х�ؿ��ѿ������������������ݡ�
�Ȥ�����Τˤ�NSGenericException����,NSUnionRange����ʤɤ��ޤޤ�롣

[IMPROVE] �ɥ�����ȥ١������ץꥱ��������Ѥ�ProjectBuilder�ƥ�ץ졼
�Ȥ��ɲá�

[CHANGE] ProjectBuilder�ƥ�ץ졼�Ȥ�̾�����ѹ���

[CHANGE] ����Ruby�Υ��֥������Ȥ�����Ȥ��ƻȤ����Τ���ˡ�
Objective-C�᥽�åɤΰ����η���Objective-C���֥������Ȥξ��ο�����
���ѹ���

[IMPROVE] �����ȥѥͥ��б�����ɡ�Callbuck�����᥽�åɤˤ�
"_returnCode_contextInfo"�ǽ���̾����Ĥ���ɬ�פ����롣

[IMPROVE] �����饤��ʸ�����ѤΥ⥸�塼��ؿ������

  OSX::NSLocalizedStringFromTableInBundle
  OSX::NSLocalizedStringFromTable
  OSX::NSLocalizedString

[IMPROVE] ���쥯��̾��'_'�ǻϤޤ�᥽�å�(�㤨��"_transparency")�θƤ�
�Ф����б�

[IMPROVE] �С���������Υ��ݡ���

  OSX::RUBYCOCOA_VERSION
  OSX::RUBYCOCOA_RELEASE_DATE


== 0.2.4����Τ�����ѹ���

[BUGFIX] NSString.availableStringEncodings�������Х�����

[BUGFIX] �����ѡ����饹��¸�ߤ��ʤ��᥽�åɤ�ns_overrides�ΰ�����Ϳ��
���Ȥ��������Х�����

[IMPROVE] NSOpenPanel, NSSavePanel, NSPrintPanel �Υ����ȥѥͥ���б�

[CHANGE] �ƥ�ץ졼�Ȥ�PureEmptyApp.app���ɲá������EmptyApp.app����
NIB�ե�����˴ؤ������Ƥ����������Ρ�


== 0.2.3����Τ�����ѹ���

[BUGFIX] �����С��饤�ɤ����᥽�åɤΰ����ΰ����˴ؤ���Х�������
(Chris���󤢤꤬�Ȥ�)

[BUGFIX] �����С��饤�ɤ����᥽�åɤ���((|self|))���֤������ɤʤɤ���
�ޤ�ư���ʤ��Х��������������Τ褦�ʥ����ɤ����Ԥɤ���ư���褦�ˤʤ�
����

  class MyView < OSX::NSView

    ns_overrides :initWithFrame_
    
    def initWithFrame (frame)
      suuper_initWithFrame (frame)
      self
    end


== 0.2.2����Τ�����ѹ���

[BUGFIX] ���֥��������������˥����4�Х����˲����Ƥ����Х�������
(Chris���󤢤꤬�Ȥ�)

[CHANGE] Ruby����å��ڤ��ؤ�(OSX.ruby_thread_switcher_start)����ɡ�


== 0.2.1����Τ�����ѹ���

0.2.1 �Υ��󥹥ȡ��륹����ץȤν���ʥХ�����

[CHANGE] RubyCocoa�ե졼�����򥤥󥹥ȡ��뤹��ǥ��쥯�ȥ�λ�����
ˡ��ʲ��Τ褦���ѹ�

  % ruby install.rb config --frameworks=/Network/Library/Frameworks

== 0.2.0����Τ�����ѹ���

[IMPROVE] RubyCocoa���ץꥱ��������Ruby����åɤ����ؤ��뤿��λ���
�ߤ�ƥ���Ū�˼�����

[IMPROVE] �����С��饤�ɤ����᥽�å��������ǥ����ѡ����饹��Ʊ�᥽��
�ɤ�Ƥֵ�ǽ��ƥ���Ū�˼�����

  def drawRect (frame)
    super_drawRect (frame)
  end

[BUGFIX] �����С��饤�ɥ᥽�åɤ�����ͤ˴ؤ��뾮�Х�������

[IMPROVE] RubyCocoa�ե졼�����Υ��󥹥ȡ�����򥪥ץ����ǻ����
����褦�ˤ�����

  % ruby install.rb config -- --frameworks=/Network/Library/Frameworks


== 0.1.3����Τ�����ѹ���

=== ����/����

[CHANGE] OSX::OCObject ��΢���ˤʤä���

[CHANGE] Cocoa ���饹�� Ruby �Υ��饹�Ȥ��������

  OSX::NSObject.is_a? Class # => true
  OSX::NSObject.name        # => "OSX::NSObject"

[CHANGE] OSX::OCObject#ib_loadable ���ѻߡ�Cocoa ���饹���������饹��
�����Ruby ���������饹�������Ʊ�ͤ���ˡ�ǽ񤱤�褦���ѹ���

  class Hoge < OSX::NSView
    ns_outlets   :hoge
    ns_overrides :drawRect_
    ...
  end

[CHANGE] Cocoa�������饹#ns_overrides �ΰ����˥���ܥ����Ѳġ�������
�������б�����"_"�ξ�ά�ϤǤ��ʤ���(�嵭���drawRect)

[CHANGE] �嵭�ѹ��δ��פȤ��� OSX::ObjcID ���饹��OSX::OCObjWrapper��
���塼����ɲ� (�̾盧����ľ�ܻȤ���ΤǤϤʤ�)

[CHANGE] lib/osx/objc�ǥ��쥯�ȥ���ꡢRuby¦�饤�֥������ΤϤ���
����֤��褦�ˤ�����

[CHANGE] C¦�饤�֥��̾��"osxobjc.bundle"����"osx_objc.bundle"���ѹ���
RubyAEOSA�����졣

=== �ɥ������

��ե���󥹥ޥ˥奢���ä��ޤ������Ȥ����˥��饹����˴ؤ��뵭�Ҥ��
���ޤ�����


== 0.1.2����Τ�����ѹ���

=== ����

[IMPROVE] ����ѥ���®�٤��������å� (Chris����ɤ���)

[IMPROVE] Cocoa���֥������ȤΥ᥽�åɼ¹Ի���ȯ�������㳰��Ruby���㳰
�Ȥ���ȯ�������뵡ǽ����� (Chris����ɤ���)

=== ����¾

FAQ�˿������ɲ�


== 0.1.1����Τ�����ѹ���

=== ����

[BUGFIX] ib_loadalbe�����Objective-C�Υ��饹��ưŪ�������뤵���Υ��
�������Ƥ˴ؤ���Х�������

[CHANGE] 0.1.0�Ρ�(({ib_lodable}))�ʥ��饹����ν�����᥽�å�
(({initialize})) �˰������Ϥ����Ȥߡפ��ѻߡ�Ruby¦��initialize�ˤ�
ObjC¦��initXXX�ΰ������Ϥ�ޤ���

[IMPROVE] NSRange(Cocoa)��Range(Ruby)���Ѵ��򥵥ݡ���(Chris����ɤ���)

=== ����¾

����ץ��multinib���ɲ� (Luc����ɤ���)


== 0.1.0����Τ�����ѹ���

=== ����

[IMPROVE] ɬ�פʤȤ���Ruby��Numeric����Cocoa��NSDecimalNumber�ؤ��Ѵ�
��Ԥ���(��Learning Cocoa CH.9���б�)

[IMPROVE] (0.1.2���ѻ�) (({ib_lodable}))�ʥ��饹����ν�����᥽�å�
(({initialize})) �˰������Ϥ����Ȥߤ�������ºݤ˻ȤäƤ���Τ� 
(({ib_loadable :NSView})) �ΤȤ��Τߡ�

=== ����¾

����ץ�dotview��"Lerning Cocoa"��8�Ϥ��ɤߤʤ����ľ������

"Lerning Cocoa"���������륵��ץ�Expenses.app���ɲá�

�ƥ�ץ졼����򥵥�ץ�ǥ��쥯�ȥ꤫��ƥ�ץ졼�ȥǥ��쥯�ȥ�˰�ư��

Empty.app ��ƥ�ץ졼�Ȥ��ɲá�����򥳥ԡ����ƻȤ��С�make ��
pbxbuild��Ȥ鷺��Ruby������ץƥ��󥰤�nib�ե�����ʤɤ��ѹ��Τߤ�
Cocoa���ץꥱ�������������ǽ��

$Date: 2005-10-28 23:53:26 +0900 (金, 28 10 2005) $
$Revision: 864 $
