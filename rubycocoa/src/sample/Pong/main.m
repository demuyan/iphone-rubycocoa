/** -*-objc-*-
 *
 *   $Id: main.m 472 2002-12-16 06:58:25Z hisa $
 *
 *   Copyright (c) 2001 FUJIMOTO Hisakuni <hisa@imasy.or.jp>
 *
 *   This program is free software.
 *   You can distribute/modify this program under the terms of
 *   the GNU Lesser General Public License version 2.
 *
 **/

#import <RubyCocoa/RBRuntime.h>

int
main(int argc, const char* argv[])
{
  return RBApplicationMain("rb_main.rb", argc, argv);
}
