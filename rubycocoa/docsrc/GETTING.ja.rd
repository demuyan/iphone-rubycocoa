# -*-rd-*-
= RubyCocoa�����ꤹ��

== �Х��ʥ�����

=== for Mac OS X 10.3

�Х��ʥ����դ˴ޤޤ�Ƥ���RubyCocoa�ϡ�Mac OS X 10.3����°����
Ruby 1.6.8 �˹�碌�ƹ��ۤ��Ƥ��ޤ���

((<�ե��������|URL:http://sourceforge.net/project/showfiles.php?group_id=44114>)).
���椫��
((<RubyCocoa-0.4.2-panther.dmg|URL:http://prdownloads.sourceforge.net/rubycocoa/RubyCocoa-0.4.2-panther.dmg?download>))
���������ɤ��Ƥ���������

RubyCocoa��RubyAEOSA �Υ饤�֥�ꡦ����ץ륳���ɡ��ɥ�����ȡ�
ProjectBuilder�ƥ�ץ졼�Ȥʤɤ��ޤޤ�Ƥ��ޤ����¹ԡ���ȯ��ɬ�פ�
�饤�֥�����'.pkg'�����Υѥå������ˤʤäƤ��ơ���ñ�˥��󥹥ȡ���
�Ǥ��ޤ���

�Х��ʥ�ѥå������ˤ��ʲ��Τ�Τ����󥹥ȡ��뤵��ޤ���

: /Library/Frameworks/RubyCocoa.framework
  RubyCocoa�ե졼���� (����)

: /usr/lib/ruby/site_ruby/1.6/osx/ ����
  RubyCocoa�饤�֥�� (stub)

: /usr/lib/ruby/site_ruby/1.6/powerpc-darwin7.0/rubycocoa.bundle
  RubyCocoa��ĥ�饤�֥�� (stub)

: '/Library/Application Support/Apple/Developer Tools' ����
  Xcode�Υƥ�ץ졼��

: '/Developer/ProjectBuilder Extras/' ����
  ProjectBuilder�Υƥ�ץ졼��

: /Developer/Documentation/RubyCocoa
  �ɥ������ (HTML)

: /Developer/Examples/RubyCocoa
  ����ץ�ץ����

���󥹥ȡ��뤬��λ�����顢((<����°����ץ���Ƥߤ��
|URL:trysamples.ja.html>)) �򻲹ͤ�RubyCocoa�ǽ񤫤줿����ץ�ץ���
���ư�����Ƥߤ�Ȥ褤�Ǥ��礦��

=== for Mac OS X 10.4

�Х��ʥ����դ˴ޤޤ�Ƥ���RubyCocoa�ϡ�Mac OS X 10.4����°����
Ruby 1.8.2 �˹�碌�ƹ��ۤ��Ƥ��ޤ���

((<�ե��������|URL:http://sourceforge.net/project/showfiles.php?group_id=44114>)).
���椫��
((<RubyCocoa-0.4.2-tiger.dmg|URL:http://prdownloads.sourceforge.net/rubycocoa/RubyCocoa-0.4.2-tiger.dmg?download>))
���������ɤ��Ƥ���������

=== for Mac OS X 10.2

�Х��ʥ����դ˴ޤޤ�Ƥ���RubyCocoa�ϡ�Mac OS X 10.2����°����
Ruby 1.6.7 �˹�碌�ƹ��ۤ��Ƥ��ޤ���

((<�ե��������|URL:http://sourceforge.net/project/showfiles.php?group_id=44114>)).
���椫��
((<RubyCocoa-0.4.2-jaguar.dmg|URL:http://prdownloads.sourceforge.net/rubycocoa/RubyCocoa-0.4.2-jaguar.dmg?download>))
���������ɤ��Ƥ���������


== ����������

((<�ե��������|URL:http://rubycocoa.sourceforge.net/files/>))
���椫��
((<rubycocoa-0.4.2.tgz|URL:http://prdownloads.sourceforge.net/rubycocoa/rubycocoa-0.4.2.tgz?download>))
���������ɤ��Ƥ���������

((<��RubyCocoa�򥽡������鹽�ۡ����󥹥ȡ��뤹���|URL:build.ja.html>))
�򻲹ͤ˹��ۡ����󥹥ȡ��뤷�Ƥ���������


== CVS�����Ф��鳫ȯ�Ӿ�Υ����������ꤹ��

((<CVS������|URL:http://sourceforge.net/cvs/?group_id=44114>))����ǿ�
��(���뤤�ϺǸŤ�)�����������ꤷ���ꡢ
(((<CVS��ݥ��ȥ�򸫤�|URL:http://cvs.sourceforge.net/cgi-bin/viewcvs.cgi/rubycocoa/src/>))
���Ȥ��Ǥ��ޤ����������

  $ cvs -d:pserver:anonymous@cvs.sf.net:/cvsroot/rubycocoa login
  $ cvs -z3 -d:pserver:anonymous@cvs.sf.net:/cvsroot/rubycocoa co \
        -P -d rubycocoa src
  $ cd rubycocoa
  $ cvs update -d -P

�����Ϥ���ȡ�'rubycocoa'�Ȥ����ǥ��쥯�ȥ��RubyCocoa�Υ������켰��
��������ɤ���ޤ���CVS�������塢��������ɤ��������ߥ󥰤ˤ��
���ۤǤ��ʤ����Ȥ⤢��ޤ���


== DarwinPorts

((<DarwinPorts|URL:http://darwinports.opendarwin.org/>))�Ǥϡ�"rb-cocoa"�Ȥ���
̾����RubyCocoa(0.4.1)��port���󶡤���Ƥ��ޤ���

����port�򥤥󥹥ȡ��뤹��ˤϡ�DarwinPorts�ΥС������1.1��ɬ�פǤ���
���Υ��ޥ�ɤ�DarwinPorts�򥢥åץǡ��Ȥ��뤳�Ȥ��Ǥ��ޤ���

  $ sudo port -d selfupdate


== PINEAPPLE RPM�ѥå�����

((<Project PINEAPPLE(���ܸ�)
|URL:http://sacral.c.u-tokyo.ac.jp/~hasimoto/Pineapple/>))��RPM������
�Х��ʥ�(0.2.x)������ޤ���


$Date: 2005-11-06 20:24:54 +0900 (日, 06 11 2005) $
