# UIViewExtensionBlock
**UIView类扩展，添加Block／target-action 事件回调**

* 添加 Block 事件：

  ```
  - (void)addActionWithblock:(TouchCallBackBlock)block;
  
  ```
* 添加 target-action 事件：

  ```
  - (void)addTarget:(id)target action:(SEL)action;
  ```

* 使用例子：
 
 ```
 - (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    // UIView 添加 Block 事件：
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(50, 100, 100, 100)];    
    view.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view];
    [view addActionWithblock:^{
        NSLog(@"view 被点击 ......\n");
    }];
    
	//UILabel  添加 Block 事件：    	   	
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(180, 100, 100, 100)];
    label.backgroundColor = [UIColor redColor];
    [self.view addSubview:label];
    [label addActionWithblock:^{
        NSLog(@"label 被点击 ......\n");
    }];
    
	// UIImageView  添加 Block 事件：
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 250, 100, 100)];
    imageView.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:imageView];
    [imageView addActionWithblock:^{
        NSLog(@"imageView 被点击 ......\n");
    }];
    
    // UIImageView  添加 Target-Action 事件：
    UIImageView *imageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(180, 250, 100, 100)];
    imageView2.backgroundColor = [UIColor brownColor];
    [self.view addSubview:imageView2];
    [imageView2 addTarget:self action:@selector(imageDidSelcte:)];
}

- (void)imageDidSelcte:(id)sender
{
    NSLog(@" targetAction label 被点击 ......\n");
}

 ```
