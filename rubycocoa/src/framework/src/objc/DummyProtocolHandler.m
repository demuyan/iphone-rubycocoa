/** -*-objc-*-
 *
 *   $Id: DummyProtocolHandler.m 450 2002-12-12 07:05:17Z hisa $
 *
 *   Copyright (c) 2001 FUJIMOTO Hisakuni <hisa@imasy.or.jp>
 *
 *   This program is free software.
 *   You can distribute/modify this program under the terms of
 *   the GNU Lesser General Public License version 2.
 *
 **/
#import "DummyProtocolHandler.h"

@implementation DummyProtocolHandler

// other
- ruby_method_0 { return nil; }
- ruby_method_1:a1 { return nil; }
- ruby_method_2:a1 :a2 { return nil; }
- ruby_method_3:a1 :a2 :a3 { return nil; }
- ruby_method_4:a1 :a2 :a3 :a4 { return nil; }
- ruby_method_5:a1 :a2 :a3 :a4 :a5 { return nil; }
- ruby_method_6:a1 :a2 :a3 :a4 :a5 :a6 { return nil; }
- ruby_method_7:a1 :a2 :a3 :a4 :a5 :a6 :a7 { return nil; }
- ruby_method_8:a1 :a2 :a3 :a4 :a5 :a6 :a7 :a8 { return nil; }

// Sheet Panel Support
//- (void)sheetPanelDidEnd:(NSWindow *)sheet returnCode:(int)returnCode contextInfo:(void  *)contextInfo {}

// as Observer
- (void)receiveNotification: (NSNotification *)notification {}

@end
