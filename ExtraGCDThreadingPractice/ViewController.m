
#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgVw;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated {
    
   // dispatch_queue_t queVar=dispatch_queue_create("my first queue",NULL);
    
    dispatch_async(dispatch_queue_create("my first queue",NULL), ^{
        @("hey what's up");
        NSData *data=[NSData dataWithContentsOfURL:[NSURL URLWithString: @"https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/Windows_logo_-_2012.svg/2000px-Windows_logo_-_2012.svg.png"]];
        dispatch_async(dispatch_get_main_queue(), ^{
        
        _imgVw.image=[UIImage imageWithData:data];
            
        });
    });
    
    
}


@end
