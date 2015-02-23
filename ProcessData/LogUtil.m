//
//  LogUtil.m
//  Voffice2.1
//
//  Created by VTIT on 9/10/13.
//
//

#import "LogUtil.h"
#import "DateUtil.h"

@implementation LogUtil

static NSString* sUserId;
static NSString* sUserName;
static  NSString* sRequestPath;

+(NSString*) createFileNameWithDate : (NSDate *) date{
    //Get the file path
    NSString *documentsDirectory = [NSSearchPathForDirectoriesInDomains (NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    
    NSString *textFileName = [NSString stringWithFormat:@"Log-%@.txt", [DateUtil formatDate:date :@"yyyy-MM-dd"]];
    
    NSString *fileName = [documentsDirectory stringByAppendingPathComponent:textFileName];
    //create file if it doesn't exist
    if(![[NSFileManager defaultManager] fileExistsAtPath:fileName])
        [[NSFileManager defaultManager] createFileAtPath:fileName contents:nil attributes:nil];
    return fileName;
    
}
+(void) writeLogWithContent:(NSString *)content{
    
    NSString *fileName = [LogUtil createFileNameWithDate:[NSDate date]];
    //append text to file (you'll probably want to add a newline every write)
    NSFileHandle *file = [NSFileHandle fileHandleForUpdatingAtPath:fileName];
    [file seekToEndOfFile];
    [file writeData:[content dataUsingEncoding:NSUTF8StringEncoding]];
    [file closeFile];
}

+(void) writeLogWithException:(NSException *)ex{
    
    NSString *fileName = [LogUtil createFileNameWithDate:[NSDate date]];
    //append text to file (you'll probably want to add a newline every write)
    NSFileHandle *file = [NSFileHandle fileHandleForUpdatingAtPath:fileName];
    [file seekToEndOfFile];
    [file writeData:[[ex description] dataUsingEncoding:NSUTF8StringEncoding]];
    [file closeFile];
}


@end
