//
//  ViewController.m
//  CoreData_BasicExample
//
//  Created by Loud on 3/29/18.
//  Copyright © 2018 loudsoftware. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController (){
	AppDelegate *_app;
}

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	_app = (AppDelegate*)[[UIApplication sharedApplication] delegate];
	[self fetchData];
}

- (void)viewDidDisappear:(BOOL)animated{
	[super viewDidDisappear:animated];
	[self save];
}

- (void)fetchData {
	// Fetch data from persistent data store
	NSManagedObjectContext *managedObjectContext = _app.persistentContainer.viewContext;
	NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:@"Profile"];
	NSMutableArray* data = [[managedObjectContext executeFetchRequest:fetchRequest error:nil] mutableCopy];
	
	NSManagedObject *dataObject = [data objectAtIndex:0];
	NSString* idVal = [dataObject valueForKey:@"id"];
	NSString* nameVal = [dataObject valueForKey:@"name"];
	
}
- (void)save {
	NSManagedObjectContext *context = _app.persistentContainer.viewContext;

	// Create a new managed object
	NSManagedObject *newDevice = [NSEntityDescription insertNewObjectForEntityForName:@"Profile" inManagedObjectContext:context];
	[newDevice setValue:@"1" forKey:@"id"];
	[newDevice setValue:@"bill" forKey:@"name"];
	
	//save context in appDelegate
	[_app saveContext];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)saveDataHit:(id)sender {
	[self save];
}
@end
