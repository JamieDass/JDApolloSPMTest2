//---------------------------------------------------------------------------------------
// Copyright (c) 2001-2020 by PDFTron Systems Inc. All Rights Reserved.
// Consult legal.txt regarding legal and license information.
//---------------------------------------------------------------------------------------

import Foundation

class PDFTronCollaborationUtils
{
    class func pageNumberFromXFDF(xfdf: String?) -> Int32? {
        guard let xfdf = xfdf else {
            return nil
        }

        let range = NSRange(location: 0, length: xfdf.count)
        let capturePattern = #"page="(?<pageNum>\d+)""#
        do {
            let captureRegex = try NSRegularExpression(
                pattern: capturePattern,
                options: []
            )
            let matches = captureRegex.matches(
                in: xfdf,
                options: [],
                range: range
            )
            guard let match = matches.first else {return nil}
            let matchRange = match.range(withName: "pageNum")
            // Extract the substring matching the capture group
            if let substringRange = Range(matchRange, in: xfdf) {
                let capture = String(xfdf[substringRange])
                guard let captureNumber = Int32(capture) else {return nil}
                return captureNumber+1
            }
        }catch{
            print("Unable to determine page number from XFDF string.")
        }
        return nil
    }
}
