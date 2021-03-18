package com.junit;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.junit.runner.JUnitCore;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;

public class TestRunner {
	static Logger log = Logger.getLogger(TestRunner.class.getName());

	public static void main(String[] args) {
		BasicConfigurator.configure();
		Result result = JUnitCore.runClasses(TestJUnit.class);
		for (Failure failure : result.getFailures()) {
			log.error(failure.toString());
		}
		log.info("Result==" + result.wasSuccessful());
	}
}
