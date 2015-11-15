/*
 * BackgroundDownloader.swift
 * Part of http://github.com/gfiumara/TwentyOne by Gregory Fiumara.
 * See LICENSE for details.
 */


import SafariServices
import UIKit

public class BackgroundDownloader: NSObject, NSURLSessionTaskDelegate, NSURLSessionDownloadDelegate
{
	var completionHandler:(UIBackgroundFetchResult) -> Void

	public init(completionHandler:(UIBackgroundFetchResult) -> Void)
	{
		self.completionHandler = completionHandler
	}

	public func updateBlockList()
	{
		Logger.log("Beginning background download...");

		let configuration = NSURLSessionConfiguration.backgroundSessionConfigurationWithIdentifier(Constants.BackgroundSessionID)
		configuration.sessionSendsLaunchEvents = true
		configuration.sharedContainerIdentifier = Constants.AppGroupID

		let session = NSURLSession.init(configuration:configuration, delegate:self, delegateQueue:nil)
		let downloadTask = session.downloadTaskWithRequest(NSURLRequest.init(URL:Constants.BlockListURL))
		downloadTask.resume()
	}

	public func URLSession(session:NSURLSession, task:NSURLSessionTask, didCompleteWithError error:NSError?)
	{
		if error != nil {
			self.completionHandler(.Failed)
		}
	}

	public func URLSession(session:NSURLSession, downloadTask:NSURLSessionDownloadTask, didFinishDownloadingToURL temporaryURL:NSURL)
	{
		Logger.log("Finished downloading");
		let newData = NSData.init(contentsOfURL:temporaryURL)
		if newData == nil {
			Logger.log("Newly downloaded data was nil")
			self.completionHandler(.Failed)
			return
		}

		BlockListUpdater.saveAndRecompileNewBlockListData(newData!, completionHandler:self.completionHandler)
	}
}
