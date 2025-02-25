//
//  AccountSpec.swift
//  masTests
//
//  Created by Ben Chatelain on 2018-12-28.
//  Copyright © 2018 mas-cli. All rights reserved.
//

import Nimble
import Quick

@testable import mas

/// Deprecated test.
public class AccountSpec: QuickSpec {
    override public func spec() {
        beforeSuite {
            MAS.initialize()
        }
        // account command disabled since macOS 12 Monterey https://github.com/mas-cli/mas#known-issues
        describe("Account command") {
            it("displays active account") {
                expect {
                    try MAS.Account.parse([]).run()
                }
                .to(throwError(MASError.notSupported))
            }
        }
    }
}
