#
#  �FILENAME�
#  �PROJECTNAME�
#
#  Created by �FULLUSERNAME� on �DATE�.
#  Copyright (c) 2001 �ORGANIZATIONNAME�. All rights reserved.
#

require 'osx/cocoa'

class �FILEBASENAMEASIDENTIFIER� <  OSX::NSView

  ns_overrides 'initWithFrame:', 'drawRect:'

  def initWithFrame (frame)
    super_initWithFrame(frame)
    # Initialization code here.
    return self
  end

  def drawRect (rect)
    # Drawing code here.
  end

end
