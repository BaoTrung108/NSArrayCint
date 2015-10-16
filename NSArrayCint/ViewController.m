//
//  ViewController.m
//  NSArrayCint
//
//  Created by trung bao on 16/10/2015.
//  Copyright © 2015 baotrung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *text0;
@property (weak, nonatomic) IBOutlet UITextField *text1;
@property (weak, nonatomic) IBOutlet UITextField *text2;
@property (weak, nonatomic) IBOutlet UITextField *text3;
@property (weak, nonatomic) IBOutlet UITextField *text4;
@property (weak, nonatomic) IBOutlet UILabel *screen0;
@property (weak, nonatomic) IBOutlet UILabel *screen1;
@property (weak, nonatomic) IBOutlet UILabel *screen2;
@property (weak, nonatomic) IBOutlet UILabel *screen3;
@property (weak, nonatomic) IBOutlet UILabel *screen4;
@end

@implementation ViewController{
    NSArray *digit;
    NSArray *tens;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    digit=@[@"", @"one",@"two",@"three",@"four",@"five",@"six",
             @"seven",@"eight",@"nine",@"ten",@"eleven",@"twelve",
             @"thirteen",@"fourteen",@"fifteen",@"sixteen",@"seventeen",
             @"eighteen",@"nineteen"];
    tens=@[@"",@"",@"twenty",@"thirty",@"forty",@"fifty",
           @"sixty",@"seventy",@"eighty",@"ninety"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)chuyenDoi:(id)sender {
    NSString *number1=[self.text0 text];
    int n0= [number1 intValue];
    if (n0==0) {
        self.screen0.text=@"Zero";
    }else if (n0>0&&n0<20) {
        self.screen0.text=digit[n0];
    }else if (n0>=20&&n0<=99) {
        int x=n0/10;
        int y=n0%10;
        self.screen0.text=[NSString stringWithFormat:@"%@ %@",tens[x],digit[y]];
    }else if (n0>=100&&n0<=999) {
        int a=n0/100;
        int b=n0%100;
        if (b>=0&&b<20) {
            self.screen0.text=[NSString stringWithFormat:@"%@ hundred %@ ",digit[a],digit[b]];
        }else if (b>=20&&b<=99) {
            int x=b/10;
            int y=b%10;
            self.screen0.text=[NSString stringWithFormat:@"%@ hundred %@ %@ ",digit[a],tens[x],digit[y]];
        }
    }else {
        self.screen0.text=@"Bạn đã nhập lỗi";
    }
    NSString *number2 =[self.text1 text];
    int n1=[number2 intValue];
    if (n1==0) {
        self.screen1.text=@"Zero";
    }else if (n1>0&&n1<20) {
        self.screen1.text=digit[n1];
    }else if (n1>=20&&n1<=99) {
        int x=n1/10;
        int y=n1%10;
        self.screen1.text=[NSString stringWithFormat:@"%@ %@",tens[x],digit[y]];
    }else if (n1>=100&&n1<=999) {
        int a=n1/100;
        int b=n1%100;
        if (b>=0&&b<20) {
            self.screen1.text=[NSString stringWithFormat:@"%@ hundred %@ ",digit[a],digit[b]];
        }else if (b>=20&&b<=99) {
            int x=b/10;
            int y=b%10;
            self.screen1.text=[NSString stringWithFormat:@"%@ hundred %@ %@",digit[a],tens[x],digit[y]];
        }
    }else {
        self.screen1.text=@"Bạn đã nhập lỗi";
    }
    NSString *number3=[self.text2 text];
    int n2=[number3 intValue];
    if (n2==0) {
        self.screen2.text=@"Zero";
    }else if (n2>0&&n2<20) {
        self.screen2.text=digit[n2];
    }else if (n2>=20&&n2<=99) {
        int x=n2/10;
        int y=n2%10;
        self.screen2.text=[NSString stringWithFormat:@"%@ %@",tens[x],digit[y]];
    }else if (n2>=100&&n2<=999) {
        int a=n2/100;
        int b=n2%100;
        if (b>=0&&b<20) {
            self.screen2.text=[NSString stringWithFormat:@"%@ hundred %@ ",digit[a],digit[b]];
        }else if (b>=20&&b<=99) {
            int x=b/10;
            int y=b%10;
            self.screen2.text=[NSString stringWithFormat:@"%@ hundred %@ %@",digit[a],tens[x],digit[y]];
        }
    }else {
        self.screen2.text=@"Bạn đã nhập lỗi";
    }
    NSString *number4=[self.text3 text];
    int n3=[number4 intValue];
    if (n3==0) {
        self.screen3.text=@"Zero";
    }else if (n3>0&&n3<20) {
        self.screen3.text=digit[n3];
    }else if (n3>=20&&n3<=99) {
        int x=n3/10;
        int y=n3%10;
        self.screen3.text=[NSString stringWithFormat:@"%@ %@",tens[x],digit[y]];
    }else if (n3>=100&&n3<=999) {
        int a=n3/100;
        int b=n3%100;
        if (b>=0&&b<20) {
            self.screen3.text=[NSString stringWithFormat:@"%@ hundred %@ ",digit[a],digit[b]];
        }else if (b>=20&&b<=99) {
            int x=b/10;
            int y=b%10;
            self.screen3.text=[NSString stringWithFormat:@"%@ hundred %@ %@",digit[a],tens[x],digit[y]];
        }
    }else {
        self.screen3.text=@"Bạn đã nhập lỗi";
    }
    NSString *number5 =[self.text4 text];
    int n4=[number5 intValue];
    if (n4==0) {
        self.screen4.text=@"Zero";
    }else if (n4>0&&n4<20) {
        self.screen4.text=digit[n4];
    }else if (n4>=20&&n4<=99) {
        int x=n4/10;
        int y=n4%10;
        self.screen4.text=[NSString stringWithFormat:@"%@ %@",tens[x],digit[y]];
    }else if (n4>=100&&n4<=999) {
        int a=n4/100;
        int b=n4%100;
        if (b>=0&&b<20) {
            self.screen4.text=[NSString stringWithFormat:@"%@ hundred %@ ",digit[a],digit[b]];
        }else if (b>=20&&b<=99) {
            int x=b/10;
            int y=b%10;
            self.screen4.text=[NSString stringWithFormat:@"%@ hundred %@ %@",digit[a],tens[x],digit[y]];
        }
    }else {
        self.screen4.text=@"Bạn đã nhập lỗi";
    }
}
@end
