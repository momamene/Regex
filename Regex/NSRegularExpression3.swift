//===--- NSRegularExpression3.swift ----------------------------------------===//
//Copyright (c) 2016 Daniel Leping (dileping)
//
//Licensed under the Apache License, Version 2.0 (the "License");
//you may not use this file except in compliance with the License.
//You may obtain a copy of the License at
//
//http://www.apache.org/licenses/LICENSE-2.0
//
//Unless required by applicable law or agreed to in writing, software
//distributed under the License is distributed on an "AS IS" BASIS,
//WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//See the License for the specific language governing permissions and
//limitations under the License.
//===----------------------------------------------------------------------===//

import Foundation

#if swift(>=3.0)
#else
    public extension NSRegularExpression.Options {
        public static var caseInsensitive = NSRegularExpression.Options.caseInsensitive
        public static var allowCommentsAndWhitespace = NSRegularExpression.Options.allowCommentsAndWhitespace
        public static var ignoreMetacharacters = NSRegularExpression.Options.ignoreMetacharacters
        public static var dotMatchesLineSeparators = NSRegularExpression.Options.dotMatchesLineSeparators
        public static var anchorsMatchLines = NSRegularExpression.Options.anchorsMatchLines
        public static var useUnixLineSeparators = NSRegularExpression.Options.useUnixLineSeparators
        public static var useUnicodeWordBoundaries = NSRegularExpression.Options.useUnicodeWordBoundaries
    }
    
    public extension NSRegularExpression {
        public func matches(in string: String, options: NSRegularExpression.MatchingOptions, range: NSRange) -> [NSTextCheckingResult] {
            return self.matches(in: string, options: options, range: range)
        }
        
        public func firstMatch(in string: String, options: NSRegularExpression.MatchingOptions, range: NSRange) -> NSTextCheckingResult? {
            return self.firstMatch(in: string, options: options, range: range)
        }
        
        public func replacementString(for result: NSTextCheckingResult, in string: String, offset: Int, template templ: String) -> String {
            return self.replacementString(for: result, in: string, offset: offset, template: templ)
        }
        
        public func stringByReplacingMatches(in string: String, options: NSRegularExpression.MatchingOptions, range: NSRange, withTemplate templ: String) -> String {
            return self.stringByReplacingMatches(in: string, options: options, range: range, withTemplate: templ)
        }
    }
#endif

#if swift(>=3.0) && !os(Linux)
#else
    public extension NSRegularExpression {
        public typealias Options = NSRegularExpression.Options
        public typealias MatchingOptions = NSRegularExpression.MatchingOptions
    }

    public typealias RegularExpression = NSRegularExpression
    public typealias TextCheckingResult = NSTextCheckingResult
#endif

