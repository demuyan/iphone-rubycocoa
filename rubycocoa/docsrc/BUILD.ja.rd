# -*-rd-*-
= RubyCocoa�򥽡������鹽�ۡ����󥹥ȡ��뤹��

����ʸ��Ǥ�RubyCocoa 0.4.2�򥽡������鹽�ۡ����󥹥ȡ��뤹����ˡ�ˤĤ���
�������ޤ����Х��ʥ����դ򥤥󥹥ȡ��뤷�ƻȤ����ˤϤȤ����ɤ�ɬ�פϤ���ޤ���

���ۡ����󥹥ȡ����Ȥϡ�Terminal���ץꥱ�������ʤɤ��饷���륳�ޥ��
�����Ϥ��ƹԤ��ޤ��������륳�ޥ��������ˤ�bash�����ꤷ�Ƶ��Ҥ��Ƥ��ޤ���
����¾�Υ�����(�㤨��tcsh)��ȤäƤ����硢Ŭ�����ɤ��Ѥ��Ƥ���������


== ���ۡ����󥹥ȡ���μ��

���ۡ����󥹥ȡ���ϡ������褽�ʲ��Τ褦�ʼ��ǹԤ��ޤ���

  * ((<Ruby�ι��ۡ����󥹥ȡ���>))
  * ((<RubyCocoa�ι���>))
  * ((<RubyCocoa��ñ�Υƥ���>))
  * ((<RubyCocoa�Υ��󥹥ȡ���>))

���餫����ɤ�����RubyCocoa�Υ�������Ÿ�����Ƥ����Ƥ���������

  $ cd {�ɤ���}
  $ tar zxf rubycocoa-0.4.2.tar.gz

((*���*)) StuffIt��Ȥ��ȥե�����̾��Ĺ���������RubyCocoa��������
���󥹥ȡ��뤵��ʤ��Τ�tar���ޥ��(Mac OS X 10.2�Ǥ�gnutar���ޥ��)��
�ȤäƤ���������


== Ruby�ι��ۡ����󥹥ȡ���

RubyCocoa���ۤ��뤿��ˤϡ������libruby��Ruby���տ魯��C�����
�إå����ե����뤬ɬ�פȤʤ�ޤ��������Ǥϼ��˼���������ˡ�
RubyCocoa�Υ١����Ȥʤ�Ruby�ι��ۼ����������ޤ���

  * ���������饤�󥹥ȡ��뤷��Ruby 1.8.3
  * Mac OS X��°��Ruby
    * Ruby 1.6.8(Mac OS X 10.3)
    * Ruby 1.6.7(Mac OS X 10.2)

RubyCocoa 0.4.2�Х��ʥ�ѥå������ϡ�2���ܤ���ˡ�Ǻ��줿��ΤǤ���
((<Fink|URL:http://fink.sf.net/>))�ʤɤΥѥå�������Ȥä�Ruby��
���󥹥ȡ��뤷�Ƥ�����ʤɤϡ�����˹�碌���ɤ��Ѥ��Ƥ���������

=== ���󥹥ȡ��뤵��Ƥ���Mac OS X�ѥå������γ�ǧ

Mac OS X�򥤥󥹥ȡ��뤷�����Υ��ץ�������꼡��Ǥϡ�ɬ�פ�
�ѥå�����(BSD.pkg��BSDSDK.pkg)�����󥹥ȡ��뤵��Ƥ��ʤ���ǽ��������ޤ���
�ޤ��ϥѥå����������󥹥ȡ��뤵��Ƥ��뤫��ǧ���ơ�ɬ�פǤ���Х��󥹥ȡ���
���Ƥ���������

  $ ls -dF /Library/Receipts/BSD*.pkg   # ��ǧ
  /Library/Receipts/BSD.pkg/   /Library/Receipts/BSDSDK.pkg/


=== ���������饤�󥹥ȡ��뤷��Ruby 1.8.3

Ruby 1.8.3�Υ������ǥ��쥯�ȥ�˰�ư���ơ��ʲ��Τ褦�˹��ۡ����󥹥ȡ���
���ޤ������ץ�����ɬ�פ˱������ѹ����Ƥ���������
((- CFLAGS��'-fno-common'���ץ�������ꤷ�ʤ��ȡ�RubyCocoa.framework
����󥯤Ǥ��ʤ��褦�Ǥ� -))

  $ CFLAGS='-g -O2 -fno-common' ./configure
  $ make
  $ make test
  $ sudo make install
  $ sudo ranlib /usr/local/lib/libruby-static.a  # 

=== Mac OS X 10.3��°��Ruby 1.6.8

�Ȥ��˺�Ȥ�ɬ�פ���ޤ���

=== Mac OS X 10.2��°��Ruby 1.6.7

Mac OS X 10.2�ˤ�Ruby���ޤޤ�Ƥ��ޤ������ɤ������櫓��libruby
���ޤޤ�Ƥ��ޤ��󡣤������äơ�RubyCocoa���ۤ��뤿��ˤϡ�
Ruby 1.6.7�Υ���������libruby����ɬ�פ�����ޤ���

==== Ruby 1.6.7�Υ������˥ѥå��򤢤Ƥ�

�ޤ��ǽ��Ruby 1.6.7��tarball��Ÿ�����ơ�RubyCocoa����°��
Ruby 1.6.7�ѥѥå��򤢤Ƥޤ���

  $ cd {�ɤ���}
  $ tar zxf ruby-1.6.7.tar.gz
  $ cd ruby-1.6.7
  $ patch -p1 < {RubyCocoa������}/misc/ruby-1.6.7-osx10.2.patch

==== libruby�ι��ۡ����󥹥ȡ���

Mac OS X��°Ruby�δĶ��˹�碌��Ruby 1.6.7���ۤ��ޤ���
((- CFLAGS��'-fno-common'���ץ�������ꤷ�ʤ��ȡ�RubyCocoa.framework
����󥯤Ǥ��ʤ��褦�Ǥ� -))

  $ rbhost=`ruby -r rbconfig -e "print Config::CONFIG['host']"`
  $ CFLAGS='-g -O2 -fno-common' ./configure --prefix=/usr --host=$rbhost
  $ make
  $ make test

libruby.a�Τߤ򥤥󥹥ȡ��뤷�ޤ���

  $ rubyarchdir=`ruby -r rbconfig -e 'print Config::CONFIG["archdir"]'`
  $ sudo install -m 0644 libruby.a $rubyarchdir
  $ sudo ranlib $rubyarchdir/libruby.a


== RubyCocoa�ι���

���Τ褦�����Ϥ���RubyCocoa���ۤ��ޤ���

  $ ruby install.rb --help   # ���ץ����γ�ǧ
  $ ruby install.rb config
  $ ruby install.rb setup

((% ruby install.rb config %))�ˤϤ����Ĥ�RubyCocoa�ѤΥ��ץ���󤬤���ޤ���
ɬ�פʤ�config�ե������ΤȤ��˥��ץ�������ꤷ�Ƥ���������

== RubyCocoa��ñ�Υƥ���

  $ cd {������}/tests
  $ DYLD_FRAMEWORK_PATH=../framework/build ruby -I../lib -I../ext/rubycocoa testall.rb

ñ�Υƥ��Ȥˤ�
((<"Test::Unit"|URL:http://raa.ruby-lang.org/list.rhtml?name=testunit>))
��ɬ�פǤ������Υץ����Ͼ�ά��ǽ�Ǥ���
(Test::Unit�ϸ���RAA����������뤳�Ȥ��Ǥ��ޤ���RubyCocoa�ץ������Ȥ� 
((<testunit-0.1.8.tar.gz|URL:http://rubycocoa.sourceforge.net/files/testunit-0.1.8.tar.gz>))
�˥��ԡ����Ѱդ��Ƥ��ޤ���)

Test::Unit��Ruby 1.8�Ǥ�ɸ��ź�դ���Ƥ��ޤ���


== RubyCocoa�Υ��󥹥ȡ���

  $ sudo ruby install.rb install

�ʾ�ǥ��󥹥ȡ���ϴ�λ�Ǥ��������ޤǤμ��ǰʲ��Τ�Τ����󥹥ȡ���
����ޤ�������Mac OS X 10.3��°��Ruby 1.6.8�ǹ��ۤ�����硣Ruby�����
�����ƥ�ΥС������ˤ�ꡢ���󥹥ȡ����褬¿���ۤʤ�ޤ���

: /Library/Frameworks/RubyCocoa.framework
  RubyCocoa�ե졼���� (����)

: /usr/lib/ruby/site_ruby/1.6/osx/ ����
  RubyCocoa�饤�֥�� (stub) 
  - addressbook.rb, appkit.rb, cocoa.rb, foundation.rb

: /usr/lib/ruby/site_ruby/1.6/powerpc-darwin7.0/rubycocoa.bundle
  RubyCocoa��ĥ�饤�֥�� (stub)

: '/Library/Application Support/Apple/Developer Tools/' ����
  Xcode�Υƥ�ץ졼��
  * 'File Templates/Ruby'
  * 'Project Templates/Application/Cocoa-Ruby Document-based Application'
  * 'Project Templates/Application/Cocoa-Ruby Application'

: '/Developer/ProjectBuilder Extras/' ����
  ProjectBuilder�Υƥ�ץ졼��
  * 'File Templates/Ruby'
  * 'Project Templates/Application/Cocoa-Ruby Document-based Application'
  * 'Project Templates/Application/Cocoa-Ruby Application'

: /Developer/Documentation/RubyCocoa
  �ɥ������ (HTML)

: /Developer/Examples/RubyCocoa
  ����ץ�ץ����


((<����°����ץ���Ƥߤ��|URL:trysamples.ja.html>)) �򻲹ͤ�
ư���ǧ���ƤߤƤ���������


== [FYI] �Х��ʥ�ѥå������󥰤������ʥ��󥹥ȡ��륪�ץ����

RubyCocoa�ΥХ��ʥ�ѥå���������Ȥ���������'ruby install.rb
config'�Υ��ץ���󤬤���ޤ���

  * --install-prefix : 
    ��ĥ�饤�֥��ȥ饤�֥��Υ��󥹥ȡ�����˱ƶ�
  * --install-root :
    �ե졼�������ƥ�ץ졼�ȡ��ɥ�����ȡ�����ץ�Υ��󥹥ȡ�����˱ƶ�

=== ��

  $ ruby -r rbconfig -e 'p Config::CONFIG["prefix"]'
  "/usr"
  $ ruby install.rb config \
      --install-prefix=/tmp/build/usr --install-root=/tmp/build
  $ ruby install.rb setup
  $ sudo ruby install.rb install

��̤Ȥ��ưʲ��ξ���(����)���󥹥ȡ��뤵��ޤ���

  /tmp/build/usr/lib/ruby/site_ruby/1.6/osx/addressbook.rb
  /tmp/build/usr/lib/ruby/site_ruby/1.6/osx/appkit.rb
  /tmp/build/usr/lib/ruby/site_ruby/1.6/osx/cocoa.rb
  /tmp/build/usr/lib/ruby/site_ruby/1.6/osx/foundation.rb
  /tmp/build/usr/lib/ruby/site_ruby/1.6/powerpc-darwin6.0/rubycocoa.bundle
  /tmp/build/Library/Frameworks/RubyCocoa.framework
  /tmp/build/Developer/ProjectBuilder Extras/File Templates/Ruby
  /tmp/build/Developer/ProjectBuilder Extras/Project Templates/ \
          Application/Cocoa-Ruby Application
  /tmp/build/Developer/ProjectBuilder Extras/Project Templates/ \
          Application/Cocoa-Ruby Document-based Application
  /tmp/build/Developer/Examples/RubyCocoa
  /tmp/build/Developer/Documentation/RubyCocoa


== ��ȯư���ǧ�Ķ�

�ʲ��δĶ��ǳ�ȯư���ǧ�򤷤Ƥ��ޤ���

* iBook G3/900/640MB
* Mac OS X 10.4.2
  * XcodeTools 2.0/2.1
  * ruby-1.8.2 (pre-installed in Mac OS X 10.4)
  * ruby-1.8.3
* Mac OS X 10.3.8
  * XcodeTools 1.5
  * ruby-1.6.8 (pre-installed in Mac OS X 10.3)
  * ruby-1.8.3
* Mac OS X 10.2.8
  * DevTools 10.2
  * ruby-1.6.7 (pre-installed in Mac OS X 10.2)
  * ruby-1.8.3

== �ǤϤ��ڤ��ߤ�������

���ۡ������ǥ�����ơ����䡢����ʤɤʤ�Ǥⵤ�ڤ˶����Ƥ���������


$Date: 2005-11-06 16:49:17 +0900 (日, 06 11 2005) $
