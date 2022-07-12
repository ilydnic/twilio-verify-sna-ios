//
//  NetworkRequestProvider.swift
//  TwilioVerifySNA
//
//  Copyright © 2022 Twilio.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import Foundation

final class NetworkRequestProvider {
    private func isValidNetworkResponse(data: Data) -> Bool {
        true
    }

    private func processRedirection(for url: String) -> Bool {
        true
    }
}

// MARK: - NetworkRequestProviderProtocol
extension NetworkRequestProvider: NetworkRequestProviderProtocol {
    func performRequest(
        method: NetworkRequestProvider.HttpMethod,
        url: String,
        onResult: NetworkRequestResult
    ) {
        onResult(.success(.requestFinished))
    }
}

// MARK: - Associated errors and results
extension NetworkRequestProvider {
    /// Docs
    enum HttpMethod: String {
        case get = "GET"
    }

    /// Docs
    enum RequestResult {
        case needsRedirection(url: String)
        case requestFinished
    }

    /// Docs
    enum RequestError: LocalizedError {
        case requestFailed(error: Error?)
    }
}
