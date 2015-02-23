//
//  UICGPolyline.m
//  MapDirections
//
//  Created by KISHIKAWA Katsumi on 09/08/10.
//  Copyright 2009 KISHIKAWA Katsumi. All rights reserved.
//

#import "UICGPolyline.h"

@implementation UICGPolyline

@synthesize dictionaryRepresentation;
@synthesize routePoints;
@synthesize vertexCount;
@synthesize length;

+ (UICGPolyline *)polylineWithDictionaryRepresentation:(NSDictionary *)dictionary {
	UICGPolyline *polyline = [[UICGPolyline alloc] initWithDictionaryRepresentation:dictionary];
	return polyline;
}

- (id)initWithDictionaryRepresentation:(NSDictionary *)dictionary {
	self = [super init];
	if (self != nil) {
        
        if (!vertices || (NSNull *)vertices == [NSNull null]) {
            vertices = [dictionaryRepresentation objectForKey:@"k"];
        }
        if (!vertices || (NSNull *)vertices == [NSNull null]) {
            vertices = [dictionaryRepresentation objectForKey:@"g"];
        }
        if (!vertices || (NSNull *)vertices == [NSNull null]) {
            vertices = [dictionaryRepresentation objectForKey:@"j"];
        }
        
        vertexCount = [vertices count];
		routePoints = [NSMutableArray arrayWithCapacity:vertexCount];
		for (NSDictionary *vertex in vertices) {
			CLLocationDegrees latitude  = [[vertex objectForKey:@"y"] doubleValue];
			CLLocationDegrees longitude = [[vertex objectForKey:@"x"] doubleValue];
			CLLocation *location = [[CLLocation alloc] initWithLatitude:latitude longitude:longitude];
			[routePoints addObject:location];
		}
	}
	return self;
}

- (CLLocation *)vertexAtIndex:(NSInteger)index {
	return [routePoints objectAtIndex:index];
}

- (void)insertVertexAtIndex:(NSInteger)index inLocation:(CLLocation *)location {
	//TODO
}

@end
