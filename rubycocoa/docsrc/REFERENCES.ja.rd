# -*-rd-*-
= RubyCocoa��ե����

== OSX::ObjcID���饹

Objective-C���֥������ȤΥ�åѡ��������Ĥ�Objective-C���֥������Ȥ�
�����ʡ��Ȥʤꤽ�����ߤޤ����̾���Υ��饹��¸�ߤ�ռ�����ɬ�פϤ�
��ޤ���

=== OSX::ObjcID���饹�Υ��󥹥��󥹥᥽�å�

--- OSX::ObjcID#inspect

      ���֥������Ȥξ����ɽ��ʸ������֤��ޤ���

--- OSX::ObjcID#__ocid__

      ���Ǥ���Objective-C���֥������Ȥ�id���ͤ��������֤��ޤ���

--- OSX::ObjcID#__inspect__

      OSX::ObjcID#inspect��Ʊ���Ǥ���


== OSX::OCObjWrapper�⥸�塼��

Objective-C���֥������Ȥ��Ф��ƥ�å���������(�᥽�åɸƤӽФ�)��Ԥ�
��ǽ����������ߥå�������⥸�塼��Ǥ���RubyCocoa�Ǥϡ�Cocoa���֥���
���Ȥˤ��Υ⥸�塼������夷�Ƥ��뤿��ˡ�Cocoa���֥������Ȥ��Ф�����
��������������ǽ�ȤʤäƤ��ޤ���

���Υ⥸�塼������夹�륪�֥������Ȥϡ������оݤȤʤ�Objective-C��
�֥������Ȥ����ꤹ�뤿��ˡ����Τ����줫�ξ����������Ƥ���ɬ�פ�����
�ޤ���

  * ((<OSX::ObjcID���饹>))�Υ��󥹥��󥹤Ǥ���
  * ((<OSX::ObjcID#__ocid__>))��Ʊ�����ͤΥ᥽�åɤ�������Ƥ���

�̾���Υ⥸�塼���¸�߼��Τ�ռ�����ɬ�פϤ���ޤ��󤬡���å�����
�����Υᥫ�˥���ʤ�RubyCocoa��ư�������򤹤��ǤϺǤ���פ���ʬ�Ǥ�
����ޤ���


=== Objective-C���֥������Ȥإ�å�����������������Ȥ�

OSX::OCObjWrapper�⥸�塼��ϥ��֥������Ȥ������Ǥ��ʤ��ä��᥽�åɸ�
�ӽФ���((|method_missing|))�˲�ä������Ȥߤ����Ѥ��ơ�����оݤ�
Objective-C���֥������Ȥ��Ф��ƥ�å��������������Ƥ��ޤ���

=== Ruby�᥽�å�̾����Objective-C��å��������쥯���ؤ��Ѵ�

Ruby�������ǤΥ�å���������(�᥽�åɸƤӽФ�)��Objective-C�������Ǥ�
��å����������˥ޥåפ��뤿��ˤϡ�Ruby�Υ᥽�å�̾��Objective-C�Υ��
���������쥯�����Ѵ�����ɬ�פ�����ޤ���

�֥�å��������쥯����':'��'_'���֤���������Τ�Ruby�ǤΥ᥽�å�̾��

���줬�Ѵ��δ��ܥ롼��Ǥ����㤨�С���å��������쥯�� 
'doSomething:with:with:' �Υ�å����������������硢Ruby�ǤΥ᥽�å�
̾�� 'doSomething_with_with_' �Ȥʤ�ޤ���

�ºݤˤϴ��ܥ롼���¾�ˡ������ܤ��ɤ����뤿��ʲ��˼����褦��ɽ���Υ�
�ꥨ�������¸�ߤ��ޤ���

  (1) ������'_'���ά����
  (2) ��������˥�����ɤ򺮤���

��������Ǥ�����Ǥ��ʤ��Ȼפ��ޤ�������������Τ��񤷤��ΤǶ�����Ǽ�
���ޤ���

  [rcv doSomething: a with: b with: c]      // Objective-C�ξ��
  rcv.doSomething_with_with_ (a, b, c)      # ���ܥ롼��
  rcv.doSomething_with_with (a, b, c)       # �Хꥨ�������(1)
  rcv.doSomething (a, :with, b, :with, c)   # �Хꥨ�������(2)


=== �᥽�å�̾��Ƭ�� "oc_"

̾����"oc_"�ǻϤޤ�᥽�åɤ�ľ�ܡ�����оݤ�Objective-C���֥������Ȥ�
��å�������������ޤ�����Ȥ��ơ�Ruby¦��Objective-C¦��ξ����Ʊ̾��
�᥽�åɤ�¸�ߤ�����˻Ȥ��ޤ���


=== �᥽�å�̾������ "?"

̾���κǸ�� "?" ��Ĥ�������������å������ϡ��֤äƤ����ͤ�0�Ǥ��뤫
Ĵ�٤ƿ����ͤ��֤��ޤ�������Ͽ����ͤ��֤��᥽�åɸƤӽФ��ΤȤ��˻Ȥ�
�ޤ���

Objective-C�Υ᥽�åɤϿ����ͤ�ñ�ʤ����(0�ʤ鵶������¾�Ͽ��ΰ�)����
���Ƥ���Τǡ�Ruby�ǤϤ����ͤΰ�̣�����ͤʤΤ����뤤�Ͽ����ͤʤΤ���Ƚ
�ǤǤ��ޤ��󡣤����Ruby�Ǥ�0��1�⿿�Τ褦�˿����񤦤Τǡ����Τޤ޻Ȥ�
������������Ƥ��ޤ��ޤ����������äƿ����ͤ��֤��᥽�åɤ�ƤӽФ��Ȥ�
�ˤ� "?"��������Ȥ�ɬ�פ�����ޤ���


=== OSX::OCObjWrapper�⥸�塼��Υ��󥹥��󥹥᥽�å�

--- OSX::OCObjWrapper#to_s

      ����оݤ�Objective-C���֥������Ȥ�Rubyʸ����ˤ��ɽ�����֤���
      ����

--- OSX::OCObjWrapper#to_a

      ����оݤ�Objective-C���֥������Ȥ�Ruby����ˤ��ɽ�����֤��ޤ���

--- OSX::OCObjWrapper#to_i

      ����оݤ�Objective-C���֥������Ȥ������ͤˤ��ɽ�����֤��ޤ���

--- OSX::OCObjWrapper#to_f

      ����оݤ�Objective-C���֥������Ȥμ¿��ͤˤ��ɽ�����֤��ޤ���

--- OSX::OCObjWrapper#objc_methods

      ����оݤ�Objective-C���֥������ȤΥ᥽�å�̾�ΰ������֤��ޤ���

--- OSX::OCObjWrapper#objc_method_type

      ����оݤ�Objective-C���֥������ȤΥ᥽�åɤη����֤��ޤ���

--- OSX::OCObjWrapper#ocm_responds? (name)

      ����оݤ�Objective-C���֥������Ȥ�������((|name|))�ǻ��ꤵ�줿
      �᥽�åɤ˱�����ǽ���ɤ����򼨤������ͤ��֤��ޤ���((|name|))�ϥ��
      ���������쥯�����Τ�Τ����ܥ롼��˽��ä���ΤǤʤ���Фʤ�ޤ�
      ���̾���Υ᥽�åɤ�Ȥ�ɬ�פϤ���ޤ���

--- OSX::OCObjWrapper#ocm_send (name ...)

      ����оݤ�Objective-C���֥������Ȥ��Ф��ơ�����((|name|))�ǻ���
      ���줿�᥽�åɤ�Ĥ�ΰ����ȤȤ���������ޤ���((|name|))�ϥ�å���
      �����쥯�����Τ�Τ����ܥ롼��˽��ä���ΤǤʤ���Фʤ�ޤ���
      �̾���Υ᥽�åɤ�Ȥ�ɬ�פϤ���ޤ���


== OSX::OCObject���饹

���Ѥ�Objective-C���֥������ȥ�åѡ���OSX�⥸�塼��ʲ����������Ƥ�
��ɤ�Cocoa���饹�ˤ�°���ʤ�Objective-C���֥������Ȥϡ����Υ��饹�Υ�
�󥹥��󥹤Ȥ�����������ޤ����̾���Υ��饹�Υ��󥹥��󥹤�����Ū��
���������ꡢ�������饹���������ɬ�פϤ���ޤ���

=== �����ѡ����饹
((<OSX::ObjcID���饹>))

=== ���󥯥롼�ɤ��Ƥ���⥸�塼��
((<OSX::OCObjWrapper�⥸�塼��>))


== Cocoa���饹

((|NSObject, NSString, NSApplication|))�ʤ����Ƥ�Cocoa���饹�ϡ�
((|OSX::NSObject, OSX::NSString, OSX::NSApplication|)) �Τ褦��OSX��
���塼���°����Ruby�Υ��饹�Ȥ����������Ƥ��ޤ���

Cocoa���饹���Τˤ�Cocoa���֥������ȤȤ���((<OSX::OCObjWrapper�⥸�塼
��>))�����夵��Ƥ��ޤ���

=== ���󥯥롼�ɤ��Ƥ���⥸�塼��
((<OSX::OCObjWrapper�⥸�塼��>))

=== ���夷�Ƥ���⥸�塼��
((<OSX::OCObjWrapper�⥸�塼��>))

=== Cocoa���饹�Υ��饹�᥽�å�

--- Cocoa���饹.__ocid__

      Cocoa���饹���֥������Ȥ�id���ͤ��������֤��ޤ���


== Cocoa�������饹

Cocoa���饹���������饹��

=== Cocoa�������饹�Υ��饹�᥽�å�

--- Cocoa�������饹.ns_overrides (...)

      �����ѡ����饹�Υ᥽�åɤ򥪡��С��饤�ɤ�������ޤ���
      Objective-C����������ľ�ܸƤФ��᥽�åɤ򥪡��С��饤�ɤ����
      ���ˤϡ����������ɬ�פˤʤ�ޤ���ŵ��Ū����Ȥ��Ƥϡ�NSView����
      �����饹��((|drawRect:|))�򥪡��С��饤�ɤ�����ʤɤ��������
      �ޤ��������ˤϴ��ܥ롼��˽��ä��᥽�å�̾����󤷤ޤ���

--- Cocoa�������饹.ib_overrides (...)

      ns_overrides ����̾

--- Cocoa�������饹.ns_outlets (...)

      �����ȥ�åȤ�������ޤ����ºݤˤ�((|attr_writer|))��Ƥ�Ǥ���
      �����Ǥ���

--- Cocoa�������饹.ib_outlets (...)

      ns_outlets ����̾

=== ���󥹥��󥹥᥽�å���Ƭ�� "super_"

ns_overrides�ǥ����С��饤�ɤ���������᥽�åɤ˴ؤ��ơ������ѡ����饹
�Ǥμ�����Ȥ��������ˤ� "super_" ���դ����᥽�å�̾�ǸƤӽФ����Ȥ�
�Ǥ��ޤ���

  def drawRect (frame)
    super_drawRect (frame)   # invoke SuperClass#drawRect
  end


== OSX::OCException���饹

Objective-C�������ǡ�Objective-C���֥������ȤؤΥ᥽�åɸƤӽФ��ˤ��
���㳰((|NSException|))��ȯ��������硢���Υ��饹���㳰��ȯ�����ޤ���


=== OSX::OCException���饹�Υ��󥹥��󥹥᥽�å�

--- OSX::OCException#name

      �㳰̾(NSException#name)���֤��ޤ���

--- OSX::OCException#reason

      �㳰����ͳʸ����(NSException#reason)���֤��ޤ���

--- OSX::OCException#userInfo

      �桼������(NSException#userInfo)���֤��ޤ���

--- OSX::OCException#nsexception

      NSException���֤��ޤ���



== OSX::NSPoint���饹

Foundation�ե졼�������������Ƥ���ǡ�����((|NSPoint|))��Ruby��
���ǰ�������Υ��饹�Ǥ���

=== OSX::NSPoint���饹�Υ��饹�᥽�å�

--- OSX::NSPoint.new(x,y)

=== OSX::NSPoint���饹�Υ��󥹥��󥹥᥽�å�

--- OSX::NSPoint#x
--- OSX::NSPoint#y
--- OSX::NSPoint#x= (val)
--- OSX::NSPoint#y= (val)

--- OSX::NSPoint#to_a

      ����((|[x, y]|))���֤��ޤ���


== OSX::NSSize���饹

Foundation�ե졼�������������Ƥ���ǡ�����((|NSSize|))��Ruby����
�ǰ�������Υ��饹�Ǥ���

=== OSX::NSSize���饹�Υ��饹�᥽�å�

--- OSX::NSSize.new(width, height)

=== OSX::NSSize���饹�Υ��󥹥��󥹥᥽�å�

--- OSX::NSSize#width
--- OSX::NSSize#height
--- OSX::NSSize#width= (val)
--- OSX::NSSize#height= (val)

--- OSX::NSSize#to_a

      ����((|[width, height]|))���֤��ޤ���


== OSX::NSRect���饹

Foundation�ե졼�������������Ƥ���ǡ�����((|NSRect|))��Ruby����
�ǰ�������Υ��饹�Ǥ���

=== OSX::NSRect���饹�Υ��饹�᥽�å�

--- OSX::NSRect.new(origin, size)
--- OSX::NSRect.new(x, y, width, height)

=== OSX::NSRect���饹�Υ��󥹥��󥹥᥽�å�

--- OSX::NSRect#origin
--- OSX::NSRect#size
--- OSX::NSRect#origin= (val)
--- OSX::NSRect#size= (val)

--- OSX::NSRect#to_a

      ����((|[[x, y], [width, height]]|))���֤��ޤ���


== OSX::NSRange���饹

Foundation�ե졼�������������Ƥ���ǡ�����((|NSRange|))��Ruby��
���ǰ�������Υ��饹�Ǥ���

=== OSX::NSRange���饹�Υ��饹�᥽�å�

--- OSX::NSRange.new(range)
--- OSX::NSRange.new(location, length)

=== OSX::NSRange���饹�Υ��󥹥��󥹥᥽�å�

--- OSX::NSRect#location
--- OSX::NSRect#length
--- OSX::NSRect#location= (val)
--- OSX::NSRect#length= (val)

--- OSX::NSRect#to_a

      ((|[ location, length ]|))���֤��ޤ���

--- OSX::NSRect#to_range

      Ruby��Range���֥������Ȥ��֤��ޤ���


$Date: 2002-12-29 19:36:19 +0900 (日, 29 12 2002) $
$Revision: 554 $
