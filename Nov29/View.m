//
//  View.m
//  Nov29
//
//  Created by Erica Lederman on 11/28/12.
//  Copyright (c) 2012 Erica Lederman. All rights reserved.
//

#import "View.h"

@implementation View

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor blackColor];
		
		//Do not specify a size for the switch.
		//Let the switch assume its own natural size.
		mySwitch = [[UISwitch alloc] initWithFrame: CGRectZero];
		if (mySwitch == nil) {
			return nil;
		}

		//Call the valueChanged: method of the application delegate
		//when the value of the switch is changed.
		
		[mySwitch addTarget: [UIApplication sharedApplication].delegate
			action: @selector(valueChanged:)
			forControlEvents: UIControlEventValueChanged
		];
		
		//Place the switch in the SwitchView.
		CGRect b = self.bounds;

		mySwitch.center = CGPointMake(
			b.origin.x + b.size.width / 4,
			b.origin.y + b.size.height / 4
		);

		mySwitch.on = NO;	//the default
		[self addSubview: mySwitch];
		
		
		//Switch2
		mySwitch2 = [[UISwitch alloc] initWithFrame: CGRectZero];
		if (mySwitch2 == nil) {
			return nil;
		}
		[mySwitch2 addTarget: [UIApplication sharedApplication].delegate
					 action: @selector(valueChanged2:)
		   forControlEvents: UIControlEventValueChanged
		 ];
		mySwitch2.center = CGPointMake(
									  b.origin.x + b.size.width / 4*3,
									  b.origin.y + b.size.height / 4
									  );
		mySwitch2.on = NO;	//the default
		[self addSubview: mySwitch2];
		
		//Switch3
		mySwitch3 = [[UISwitch alloc] initWithFrame: CGRectZero];
		if (mySwitch3 == nil) {
			return nil;
		}
		[mySwitch3 addTarget: [UIApplication sharedApplication].delegate
					  action: @selector(valueChanged3:)
			forControlEvents: UIControlEventValueChanged
		 ];
		mySwitch3.center = CGPointMake(
									   b.origin.x + b.size.width / 2,
									   b.origin.y + b.size.height / 4*3
									   );
		mySwitch3.on = NO;	//the default
		[self addSubview: mySwitch3];
		
		//Button
		myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
		if (myButton == nil) {
			return nil;
		}
		myButton.frame = CGRectMake(100, 170, 100, 30);
		[myButton setTitle:@"Pow!" forState:UIControlStateNormal];
		myButton.center = CGPointMake(
									   b.origin.x + b.size.width / 2,
									   b.origin.y + b.size.height / 2
									   );
		[myButton addTarget:[UIApplication sharedApplication].delegate
					 action: @selector(touchUpInside:)
		   forControlEvents: UIControlEventTouchUpInside];
		[self addSubview: myButton];
	}
	return self;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{
	// Drawing code
}
*/

@end
