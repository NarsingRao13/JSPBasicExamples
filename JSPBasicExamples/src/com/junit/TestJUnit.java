package com.junit;

import static org.junit.Assert.*;

import org.junit.Test;

public class TestJUnit {

	@Test
	public void testSetup1() {
		String str= "I am done with Junit setup";
	    assertEquals("I am done with Junit setup",str);
	}
	
	@Test
	public void testSetup2() {
		String str= "Heyy";
	    assertEquals("Heyy",str);
	}
}
