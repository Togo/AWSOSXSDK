/*
 Copyright (c) 2010, Stig Brautaset.
 All rights reserved.
 
 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are
 met:
 
   Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.
  
   Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.
 
   Neither the name of the the author nor the names of its contributors
   may be used to endorse or promote products derived from this software
   without specific prior written permission.
 
 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
 IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
 TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#import <Foundation/Foundation.h>

#import "AWS_SBJsonTokeniser.h"
#import "AWS_SBJsonStreamParser.h"

@interface AWS_SBJsonStreamParserState : NSObject
+ (id)sharedInstance;

- (BOOL)parser:(AWS_SBJsonStreamParser*)parser shouldAcceptToken:(AWS_SBJson_token_t)token;
- (AWS_SBJsonStreamParserStatus)parserShouldReturn:(AWS_SBJsonStreamParser*)parser;
- (void)parser:(AWS_SBJsonStreamParser*)parser shouldTransitionTo:(AWS_SBJson_token_t)tok;
- (BOOL)needKey;
- (BOOL)isError;

- (NSString*)name;

@end

@interface SBJsonStreamParserStateStart : AWS_SBJsonStreamParserState
@end

@interface SBJsonStreamParserStateComplete : AWS_SBJsonStreamParserState
@end

@interface SBJsonStreamParserStateError : AWS_SBJsonStreamParserState
@end


@interface SBJsonStreamParserStateObjectStart : AWS_SBJsonStreamParserState
@end

@interface SBJsonStreamParserStateObjectGotKey : AWS_SBJsonStreamParserState
@end

@interface SBJsonStreamParserStateObjectSeparator : AWS_SBJsonStreamParserState
@end

@interface SBJsonStreamParserStateObjectGotValue : AWS_SBJsonStreamParserState
@end

@interface SBJsonStreamParserStateObjectNeedKey : AWS_SBJsonStreamParserState
@end

@interface SBJsonStreamParserStateArrayStart : AWS_SBJsonStreamParserState
@end

@interface SBJsonStreamParserStateArrayGotValue : AWS_SBJsonStreamParserState
@end

@interface SBJsonStreamParserStateArrayNeedValue : AWS_SBJsonStreamParserState
@end
