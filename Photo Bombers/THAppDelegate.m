

#import "THAppDelegate.h"
#import "THPhotosViewController.h"

#import <SimpleAuth/SimpleAuth.h>

@implementation THAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
#warning Please register a client at http://instagram.com/developer and replace the client id below
    
    SimpleAuth.configuration[@"instagram"] = @{
        @"client_id" : @"YOUR CLIENT ID",
        SimpleAuthRedirectURIKey : @"photobombers://auth/instagram"
    };
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    THPhotosViewController *photosViewController = [[THPhotosViewController alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:photosViewController];
    
    UINavigationBar *navigationBar = navigationController.navigationBar;
    navigationBar.barTintColor = [UIColor colorWithRed:232.0 / 255.0 green:129.0 / 255.0 blue:91.0 / 255.0 alpha:1.0];
    navigationBar.barStyle = UIBarStyleBlackOpaque;
	navigationBar.tintColor = [UIColor whiteColor];
    
    self.window.rootViewController = navigationController;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
