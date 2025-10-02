package com.example;

import org.junit.Test;
import static org.junit.Assert.*;

public class AppTest {
    
    @Test
    public void testBasicMath() {
        assertEquals("2 + 2 should equal 4", 4, 2 + 2);
    }
    
    @Test
    public void testStringOperations() {
        String message = "Jenkins";
        assertTrue("Message should contain 'Jenkins'", message.contains("Jenkins"));
        assertEquals("String length should be 7", 7, message.length());
    }
    
    @Test
    public void testBooleanConditions() {
        assertTrue("True should be true", true);
        assertFalse("False should be false", false);
    }
    
    @Test
    public void testObjectNotNull() {
        String testString = "Hello Jenkins";
        assertNotNull("String should not be null", testString);
    }
}