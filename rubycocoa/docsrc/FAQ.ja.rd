# -*-rd-*-
= RubyCocoa FAQ

== ���󥹥ȡ���

=== Q: RubyCocoa��"dl file"�Ȥ����ե�����˥�������ɤ��ƥ��󥹥ȡ�
�뤷���鼺�Ԥ��ޤ�����

==== A: �֤˥��ڡ�����ޤ�ǥ��쥯�ȥ�������Ÿ�������config�������
���顼���Ф�褦�Ǥ������ޤ�Mac����꡼�Ǥ��������äˤ���դ���������
(sawada ����ɤ���)


== ���󥹥ȡ��봰λ��

=== Q: ���󥹥ȡ��뤬��λ���ƥ���ץ륹����ץȤ�¹Ԥ��褦�Ȥ����

  % ruby fontnames.rb
  dyld: ruby Undefined symbols:
  _init_NSDistributedNotificationCenter
  _init_NSScriptStandardSuiteCommands

�Ȥ������顼�������ꡢosx/cocoa �� require �Ǥ��ޤ���

==== A: RubyCocoa��tgz�ե������StuffIt��Ÿ�����ޤ�������

RubyCocoa��tgz�ե������StuffIt��Ÿ��������硢�������ե�����˴ޤޤ�
��31ʸ����ۤ���Ĺ���ե�����̾���ڤ�ͤ���Ƥ��ޤ���RubyCocoa������
����뤳�Ȥ��Ǥ��ޤ��󡣥��󥹥ȡ���Υɥ�����Ȥμ��ɤ���˥�����
(Terminal���ץꥱ�������)����tar���ޥ�ɤ�Ȥä�

  % tar zxf rubycocoa-0.1.0.tgz

�����Ϥ���tgz�ե������Ÿ����RubyCocoa����ľ���Ƥ���������

(��¼���󡢾���ɤ���)


== ����¾

=== Q: ABAddressBook�Τ褦��NS�ǻϤޤ�ʤ����饹�ˤ��б����Ƥʤ��ΤǤ���? (2002-09-30)

==== A: 

�ޤ���ǧ���Ƥ����٤����ȤȤ��ơ�RubyCocoa �ϥǥե���ȤǤ� Foundation 
�� AppKit �ʳ��Υե졼���������äƤ륯�饹�� import ���Ƥ��ޤ���
���Τ褦�ʥ��饹��Ȥ�����ˤ� OSX::NSBundle ��Ȥäƥե졼������
���ɤ� OSX.ns_import �ǥ��饹�򥤥�ݡ��Ȥ��ޤ���

AddressBook.framework �˴ؤ��Ƥ� 0.3.2 �Ǥ�

  require 'osx/cocoa'
  require 'osx/addressbook'
  abook = OSX::ABAddressBook.sharedAddressBook

�ǻ��Ѳ�ǽ�ˤʤ�ޤ�����������ΥС������Ǥϰʲ��Τ褦�˻Ȥ����Ȥ���
���ޤ���

  require 'osx/cocoa'
  OSX::NSBundle.bundleWithPath("/System/Library/Frameworks/AddressBook.framework").load
  OSX.ns_import :ABAddressBook
  abook = OSX::ABAddressBook.sharedAddressBook


== ����FAQ (2002-12-23����)

=== Q: Cocoa���ץ�¹Ի���Console��malloc�˴ؤ���ٹ𤬽Фޤ�

Cocoa���ץ�¹Ի���Console�˥��ꥢ���������˴ؤ���ʲ��Τ褦�ʷ�
���å��������Ф�Ȥ�������ޤ���

  malloc[2461]: Deallocation of a pointer not malloced: 0x2718b20;
  This could be a double free(), or free() called with the middle of
  an allocated block; Try setting environment variable MallocHelp to
  see tools to help debug

==== A: ���������Ǥޤ�̤���Ǥ� (2002-01-08)

��꡼�� 0.1.2�ǲ�褷���Ĥ��Ǥ��������ޤ�ȯ�����ޤ����֤��Υѥ�����
��ɬ��ȯ������פʤɲ������ͤˤʤꤽ���ʾ��󤬤�����Τ餻�Ƥ���������


=== Q: ����åɤ�Ȥ��Ȥ��ޤ�ư���ʤ��褦�Ǥ���

==== A: 0.2.1 �ʹߤ�ȤäƤ��ޤ���?

��꡼�� 0.2.1 ���� RubyCocoa ���ץꥱ�������� Ruby ����åɤ�ư����
����λ��Ȥߤ�������Ƥ��ޤ���0.2.1 �����Ѥ˺�ä� RubyCocoa ���ץ�� 
Ruby����åɤ�Ȥ��������ˤϡ�rb_main.rb �� ns_app_main ��ʲ��Τ褦
�˽������Ƥ���������

  def ns_app_main
    OSX.ruby_thread_switcher_start (0.05)  # switching interval sec
    app = OSX::NSApplication.sharedApplication
    OSX::NSBundle.loadNibNamed_owner (BUNDLE_NAME.to_s, app)
    OSX.NSApp.run
  end

=== Q: �֥��ץꥱ��������ͽ������ư��Τ��Ὢλ�ץ����������Фޤ�

fontname.rb �� sndplay.rb ��ư�����ΤǤ���������ץ��RubyCocoa���ץ�
��¹Ԥ���ȡ֥��ץꥱ��������ͽ������ư��Τ��Ὢλ���ޤ����פȤ���
����������ɽ������ޤ������󥽡���򸫤��

  dyld: /Users/kazusan/rubycocoa-0.1.1/sample/SimpleApp1.app/
  Contents/MacOS/SimpleApp1 Undefined symbols:
  _dlclose
  _dlerror
  _dlopen
  _dlsym

�Ȥ������顼��å��������ФƤ��ޤ���

==== A: EasyPackage�ʤɤ�UNIX�ϥ��եȤ򥤥󥹥ȡ��뤷�����ȤϤ���ޤ�����

�Ť�EasyPackage�򥤥󥹥ȡ��뤷�Ƥ������ʤɤ� /usr/local/lib �� 
libdl*.bundle �Ȥ���̾���Ƕ�ͭ�饤�֥����󥯤��뤿��δؿ�����ĥ�
���֥�꤬���äƤ��ơ�������˥�󥯤��줿�ꤷ�����꤬������褦�Ǥ���
�����ˡ�Ȥ��Ƥ�

* /usr/local/lib �ǥ��쥯�ȥ꤫�� libdl*.bundle �ե��������
* ���줾���PB�ץ������Ȥ�Makefile�Υ�󥫥��ץ�����"-ldl"�����

�ʤɤ�����ޤ���

"otool -L"���ޥ�ɤ�Ȥä�RubyCocoa���ץꥱ�������ΥХ��ʥ꤬�ɤζ�
ͭ�饤�֥���ɬ�פȤ��뤫��ǧ���뤳�Ȥ��Ǥ���Τ����꤬ȯ������褦��
���ǧ���ƤߤƤ���������

((<[ruby-talk:29708](�Ѹ�)
|URL:http://www.ruby-talk.com/cgi-bin/scat.rb/ruby/ruby-talk/29708>)) 
����λ��ͤˤʤ뤫�⤷��ޤ���

=== Q: Project Builder�ο����ץ������Ȥ�RubyCocoa���ץꥱ�������

�ѤΥץ������Ȥ����Ӥ����ΤǤ�����

==== A: template�ǥ��쥯�ȥ����̾����"tmpl_pb_"�ǻϤޤ�ǥ��쥯�ȥ�

��"/Developer/ProjectBuilder Extras/Project Templates/Application/"��
���˥��ԡ�����"RubyCocoa Application"�Ȥ����褦��̾�����Ѥ��Ƥ���������

  % cd "/Developer/ProjectBuilder Extras/Project Templates/Application"
  % cp -R {rubycocoa srcdir}/template/tmpl_pb_RubyCocoaApp "RubyCocoa Application"
  % cp -R {rubycocoa srcdir}/template/tmpl_pb_RubyCocoaDocApp "RubyCocoa Doc Application"
  % cd "../../File Templates"
  % cp -R {rubycocoa srcdir}/template/tmpl_pb_RubyFiles Ruby

(��¼���󡢾���ɤ���)


$Date: 2002-12-29 19:36:19 +0900 (日, 29 12 2002) $
$Revision: 554 $
