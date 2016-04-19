#TestLayer
* 该项目是一个ios工程
* 该项目用来测试为UIView添加边框
* 涉及CAShapeLayer，CGMutablePathRef等绘图类的实用

#怎么使用
* 一共定义了三个类，ButtonUtil，ViewWithBorder，UIView+Border
* 分别以不同的方式给view添加边框
* ButtonUtil是以工具类的形式，其实用例子如下
    
```c
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(8, 78, 70, 40)];
    [button setBackgroundColor:[UIColor yellowColor]];
    [ButtonUtil addBorder:button borderColor:[UIColor blackColor] borderWidth:1 borders:UIButtonBorderLeft | UIButtonBorderRight | UIButtonBorderTop | UIButtonBorderBottom];
    
    [self.view addSubview:button];
    
    UIButton *button2 = [[UIButton alloc] initWithFrame:CGRectMake(100, 78, 70, 40)];
    [button2 setBackgroundColor:[UIColor yellowColor]];
    [ButtonUtil addDottedBorder:button2 borderColor:[UIColor blackColor] borderWidth:1 borders:UIButtonBorderAllBorders];

    
    [self.view addSubview:button2];
```


* ViewWithBorder继承自UIView

```c
    ViewWithBorder *borderView = [[ViewWithBorder alloc] initWithFrame:CGRectMake(8, 140, 80, 40)];
    [borderView setBackgroundColor:[UIColor greenColor]];
    [borderView addBorder:[UIColor blackColor] borderWidth:1 borders:UIViewBorderAllBorders];
    
    [self.view addSubview:borderView];
    
    ViewWithBorder *dottedView =[[ViewWithBorder alloc] initWithFrame:CGRectMake(100, 140, 80, 40)];
    [dottedView setBackgroundColor:[UIColor greenColor]];
    [dottedView addDottedBorder:[UIColor blackColor] borderWidth:1 borders:UIViewBorderAllBorders];
    
    [self.view addSubview:dottedView];
```

* UIView+Border 是扩展类别

```c
    UIView *viewCategory = [[UIView alloc] initWithFrame:CGRectMake(8, 260, 100, 60)];
    [viewCategory setBackgroundColor:[UIColor blueColor]];
    [viewCategory addBorder:[UIColor blackColor] borderWidth:2 borders:UIViewCategoryBorderAllBorders];
    [self.view addSubview:viewCategory];
    
    UIView *viewCategory2 = [[UIView alloc] initWithFrame:CGRectMake(138, 260, 100, 60)];
    [viewCategory2 setBackgroundColor:[UIColor blueColor]];
    [viewCategory2 addDottedBorder:[UIColor blackColor] borderWidth:1 borders:UIViewCategoryBorderAllBorders];
    [self.view addSubview:viewCategory2];
```

* UIView+WYImage 可以直接将UIView转换成Image图像

```c
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 300)];
    
    [view setBackgroundColor:[UIColor yellowColor]];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 40)];
    [label setFont:[UIFont systemFontOfSize:17]];
    [label setTextAlignment:NSTextAlignmentCenter];
    [label setTextColor:[UIColor blackColor]];
    label.text = @"这些文字是在一张图片上的";
    [view addSubview:label];

    UIImage *image = [view imageFromView];
```
