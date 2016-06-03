// Generated by Apple Swift version 2.1.1 (swiftlang-700.1.101.15 clang-700.1.81)
#pragma clang diagnostic push

#if defined(__has_include) && __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wauto-import"
#include <objc/NSObject.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#if defined(__has_include) && __has_include(<uchar.h>)
# include <uchar.h>
#elif !defined(__cplusplus) || __cplusplus < 201103L
typedef uint_least16_t char16_t;
typedef uint_least32_t char32_t;
#endif

typedef struct _NSZone NSZone;

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif

#if defined(__has_attribute) && __has_attribute(objc_runtime_name)
# define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
#else
# define SWIFT_RUNTIME_NAME(X)
#endif
#if defined(__has_attribute) && __has_attribute(swift_name)
# define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
#else
# define SWIFT_COMPILE_NAME(X)
#endif
#if !defined(SWIFT_CLASS_EXTRA)
# define SWIFT_CLASS_EXTRA
#endif
#if !defined(SWIFT_PROTOCOL_EXTRA)
# define SWIFT_PROTOCOL_EXTRA
#endif
#if !defined(SWIFT_ENUM_EXTRA)
# define SWIFT_ENUM_EXTRA
#endif
#if !defined(SWIFT_CLASS)
# if defined(__has_attribute) && __has_attribute(objc_subclassing_restricted) 
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif

#if !defined(SWIFT_PROTOCOL)
# define SWIFT_PROTOCOL(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
# define SWIFT_PROTOCOL_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
#endif

#if !defined(SWIFT_EXTENSION)
# define SWIFT_EXTENSION(M) SWIFT_PASTE(M##_Swift_, __LINE__)
#endif

#if !defined(OBJC_DESIGNATED_INITIALIZER)
# if defined(__has_attribute) && __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name) enum _name : _type _name; enum SWIFT_ENUM_EXTRA _name : _type
#endif
typedef float swift_float2  __attribute__((__ext_vector_type__(2)));
typedef float swift_float3  __attribute__((__ext_vector_type__(3)));
typedef float swift_float4  __attribute__((__ext_vector_type__(4)));
typedef double swift_double2  __attribute__((__ext_vector_type__(2)));
typedef double swift_double3  __attribute__((__ext_vector_type__(3)));
typedef double swift_double4  __attribute__((__ext_vector_type__(4)));
typedef int swift_int2  __attribute__((__ext_vector_type__(2)));
typedef int swift_int3  __attribute__((__ext_vector_type__(3)));
typedef int swift_int4  __attribute__((__ext_vector_type__(4)));
#if defined(__has_feature) && __has_feature(modules)
@import UIKit;
@import ObjectiveC;
@import CoreGraphics;
#endif

#import "/Users/Masuhara/Desktop/FastttCamera/FastttCamera/FastttCamera-Bridging-Header.h"

#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"
@class UIWindow;
@class UIApplication;
@class NSObject;

SWIFT_CLASS("_TtC12FastttCamera11AppDelegate")
@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (nonatomic, strong) UIWindow * __nullable window;
- (BOOL)application:(UIApplication * __nonnull)application didFinishLaunchingWithOptions:(NSDictionary * __nullable)launchOptions;
- (void)applicationWillResignActive:(UIApplication * __nonnull)application;
- (void)applicationDidEnterBackground:(UIApplication * __nonnull)application;
- (void)applicationWillEnterForeground:(UIApplication * __nonnull)application;
- (void)applicationDidBecomeActive:(UIApplication * __nonnull)application;
- (void)applicationWillTerminate:(UIApplication * __nonnull)application;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@class UIImage;
@class UIImageView;
@class NSBundle;
@class NSCoder;

SWIFT_CLASS("_TtC12FastttCamera18EditViewController")
@interface EditViewController : UIViewController
@property (nonatomic, strong) UIImage * __nullable image;
@property (nonatomic, weak) IBOutlet UIImageView * __null_unspecified imageView;
- (void)viewDidLoad;
- (void)didReceiveMemoryWarning;
- (IBAction)shareToTwitter;
- (IBAction)shareToFacebook;
- (nonnull instancetype)initWithNibName:(NSString * __nullable)nibNameOrNil bundle:(NSBundle * __nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC12FastttCamera6Filter")
@interface Filter : NSObject
@property (nonatomic, copy) NSString * __nullable filterName;
@property (nonatomic, strong) UIImage * __nullable filterImage;
- (Filter * __nonnull)nextFilter;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@protocol UIScrollViewDelegate;
@class UIButton;
@protocol FilterScrollViewDelegate;

SWIFT_CLASS("_TtC12FastttCamera16FilterScrollView")
@interface FilterScrollView : UIScrollView
@property (nonatomic, weak) id <FilterScrollViewDelegate> __nullable delegateInterceptor;
@property (nonatomic, strong) id <UIScrollViewDelegate> __nullable delegate;
@property (nonatomic, copy) NSArray<UIImage *> * __nullable images;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (void)tapButton:(UIButton * __nonnull)button;
@end


SWIFT_PROTOCOL("_TtP12FastttCamera24FilterScrollViewDelegate_")
@protocol FilterScrollViewDelegate <UIScrollViewDelegate>
- (void)filterButtonTapped:(UIButton * __nonnull)button;
@end

@class FastttFilterCamera;
@protocol FastttCameraInterface;
@class FastttCapturedImage;
@class UIStoryboardSegue;
@class UIView;

SWIFT_CLASS("_TtC12FastttCamera14ViewController")
@interface ViewController : UIViewController <UIScrollViewDelegate, FilterScrollViewDelegate, FastttCameraDelegate>
@property (nonatomic, strong) FastttFilterCamera * __null_unspecified camera;
@property (nonatomic, strong) Filter * __nullable currentFilter;
@property (nonatomic, strong) UIImage * __nullable passImage;
@property (nonatomic, copy) NSArray<UIImageView *> * __nonnull filterImageViews;
@property (nonatomic, weak) IBOutlet UIView * __null_unspecified cameraView;
@property (nonatomic, weak) IBOutlet FilterScrollView * __null_unspecified filterScrollView;
- (void)viewDidLoad;
- (void)didReceiveMemoryWarning;
- (void)cameraController:(id <FastttCameraInterface> __null_unspecified)cameraController didFinishCapturingImage:(FastttCapturedImage * __null_unspecified)capturedImage;
- (void)cameraController:(id <FastttCameraInterface> __null_unspecified)cameraController didFinishScalingCapturedImage:(FastttCapturedImage * __null_unspecified)capturedImage;
- (void)cameraController:(id <FastttCameraInterface> __null_unspecified)cameraController didFinishNormalizingCapturedImage:(FastttCapturedImage * __null_unspecified)capturedImage;
- (void)filterButtonTapped:(UIButton * __nonnull)button;
- (void)prepareForSegue:(UIStoryboardSegue * __nonnull)segue sender:(id __nullable)sender;
- (nonnull instancetype)initWithNibName:(NSString * __nullable)nibNameOrNil bundle:(NSBundle * __nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

#pragma clang diagnostic pop
