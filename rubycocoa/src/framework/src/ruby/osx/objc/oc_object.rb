#
#  $Id: oc_object.rb 450 2002-12-12 07:05:17Z hisa $
#
#  Copyright (c) 2001 FUJIMOTO Hisakuni <hisa@imasy.or.jp>
#
#  This program is free software.
#  You can distribute/modify this program under the terms of
#  the GNU Lesser General Public License version 2.
#

require 'osx/objc/oc_wrapper'

module OSX

  class OCObject < ObjcID
    include OCObjWrapper
  end

end
