/*
    This file is part of the Xbox HID Driver, Copyright (c) 2007 Darrell Walisser
    walisser@mac.com http://sourceforge.net/projects/xhd

    The Xbox HID Driver is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    The Xbox HID Driver is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with Xbox HID Driver; if not, write to the Free Software
    Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
*/
//
//  DWActionableTextField.m
//  DWXBoxHIDPrefsPane
//
//  Created by Darrell Walisser on Sat Jun 07 2003.
//  Copyright (c) 2003 __MyCompanyName__. All rights reserved.
//

#import "DWActionableTextField.h"

@implementation DWActionableTextField
- (void)setIntValue:(int)value
{
    int prevValue = [ super intValue ];
    
    [ super setIntValue:value ];

    if ([ self action ] && [ self target ] &&
        prevValue != value)
        [ [ self target ] performSelector:[ self action ] withObject:self ];
}
@end
