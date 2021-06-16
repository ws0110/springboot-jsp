package com.eprogrammerz.examples.spring.springbootjsp;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class Test2 {

	@Test
	public void test2(){
		System.out.println("test2...");
		assertEquals(100,  100);
	}
	
}
