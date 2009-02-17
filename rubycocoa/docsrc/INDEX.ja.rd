# -*-rd-*-

== RubyCocoa�Ȥϡ�

RubyCocoa�ϡ�
���֥������Ȼظ�������ץȸ���((<Ruby|URL:http://www.ruby-lang.org/>))�Ǥ�
((<Cocoa|URL:http://developer.apple.com/cocoa/>))�ץ���ߥ󥰤��ǽ�Ȥ��롢
((<Mac OS X|URL:http://www.apple.co.jp/macosx/>))�Υե졼�����Ǥ���

RubyCocoa��Ȥäơ�Cocoa���ץꥱ��������Ruby�ǽ񤤤��ꡢRuby������ץȤ�
Cocoa���֥������Ȥ��������Ƶ�ǽ�����Ѥ��뤳�Ȥ��Ǥ��ޤ���
Cocoa���ץꥱ�������Ǥϡ�Ruby��Objective-C�Υ����������ߤ���Cocoa
���ץꥱ���������뤳�Ȥ��ǽ�Ǥ���

���Τ褦�ʤȤ���RubyCocoa��Ȥ��ޤ�:

  * irb������Ū��Cocoa���֥������Ȥ�������õ��
  * Cocoa���ץꥱ�������Υ֥�ȥ����ԥ󥰡���ȯ
  * Ruby��Objective-C������Ĺ���褫����Cocoa���ץꥱ�������
  * Ruby������ץȤ�Mac OS X���Υ桼�����󥿡��ե������򤫤֤���


== �����꡼�󥷥�å�

Ruby������ץȤ�Interface Builder��Nib�ե�����Τߤǽ񤫤줿RubyCocoa
���ץꥱ�������ư��Ƥ���Ȥ���Υ����꡼�󥷥�åȤǤ���
<<< img_simpleapp

== ������ץ���

�ʲ�����ϥ����ƥ�β�����֤��Ĥ餹������ץȤǤ���

  require 'osx/cocoa'
  snd_files =`ls /System/Library/Sounds/*.aiff`.split
  snd_files.each do |path|
    snd = OSX::NSSound.alloc.
      initWithContentsOfFile_byReference (path, true)
    snd.play
    sleep 0.5
  end

�ʲ�����ϥޥå��˥ƥ����Ȥ��ɤ߾夲�����륹����ץȤǤ�(OSX 10.2�ʹ���)��

  require 'osx/cocoa'
  include OSX
  def speak (str)
    str.gsub! (/"/, '\"')
    src = %(say "#{str}")
    NSAppleScript.alloc.initWithSource(src).executeAndReturnError(nil)
  end
  speak "Hello World!"
  speak "Kon nich Wah. Ogan key desu ka?" # "Hi. How are you." in Japanese
  speak "Fuji Yamah, Nin Jya, Sukiyaki, Ten pora, Sushi."

�ʲ�����ϥ��󥿡��ե������ӥ�����Ǻ�������nib�ե�������Υ��饹�ȴ�
Ϣ�Ť���줿���饹����Υ���ץ�Ǥ���

  require 'osx/cocoa'

  class AppCtrl < OSX::NSObject

    ib_outlets :monthField, :dayField, :mulField

    def awakeFromNib
      @monthField.setIntValue  Time.now.month
      @dayField.setIntValue Time.now.day
      convert
    end

    def convert (sender = nil)
      val = @monthField.intValue * @dayField.intValue
      @mulField.setIntValue (val)
      @monthField.selectText (self)
    end

    def windowShouldClose (sender = nil)
      OSX.NSApp.stop (self)
      true
    end    

  end

== �饤����

((<GNU Lesser General Public License version 2. LGPL
|URL:http://www.gnu.org/licenses/lgpl.html>))


== �ռ�

�ޤ�Chris Thomas����Luc "lucsky" Heinrich����S.Sawada����˴��դ������ޤ���

�����

Gesse Gam, Hiroyuki Shimura, John Platte, kimura wataru, Masaki Yatsu,
Masatoshi Seki, Michael Miller, Ogino Junya, Ralph Broom, Rich Kilmer,
Shirai Kaoru, Tetsuhumi Takaishi, Tosh, Matthew Fero, Rod Schmidt,
Jonathan Paisley, Norberto Ortigoza

��Ϥ���Ȥ���¿���������˴��դ������ޤ���


== ���󥿥���

�Х���ݡ��ȡ�����ʥ���������ޤ����������Ȥʤɤ����ڤ�
���󤻤���������

��ԤϻŻ���õ���Ƥ��ޤ���

* RubyCocoa�γ�ȯ�����ѳ�ȯ�����ݡ��ȳ�ư�λٱ硦���Ȳ�
* RubyCocoa�Υ��ݥ󥵡��ˤʤꤿ��
* RubyCocoa�١����γ�ȯ�ġ���γ�ȯ
* ����¾�ʤ�Ǥ� (RubyCocoa����ʤ��Ƥ�)
* �����Ż�����ꤷ����

�ʤɤ˴ؿ��Τ����ȡ����Ρ��Ŀͤ���������ä����С������ڤ� 
((<������|URL:mailto:contact.rubycocoa@fobj.com>)) 
�ޤǤ�Ϣ����������

ƣ�ܾ�ˮ, <hisa at fobj.com>, $Date: 2005-10-28 20:03:05 +0900 (金, 28 10 2005) $
